import 'package:chalak_app/domain/home/entity/available_driver_entity.dart';
import 'package:chalak_app/domain/home/repository/i_available_drivers_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IAvailableDriversRepository)
class AvailableDriversRepositoryImpl implements IAvailableDriversRepository {
  @override
  Future<List<AvailableDriverEntity>> getAvailableDrivers(String city) async {
    final List<AvailableDriverEntity> availableDrivers = [];
    availableDrivers.addAll(await fetchInterestedDrivers(city, 'source'));
    availableDrivers.addAll(await fetchInterestedDrivers(city, 'destination'));
    Logger().d(availableDrivers.toString());
    return availableDrivers;
  }

  @override
  Future<List<AvailableDriverEntity>> getAvailableDriversFromRoute(
    String sourceCity,
    String destinationCity,
  ) async {
    final List<AvailableDriverEntity> availableDrivers = [];
    availableDrivers.addAll(
      await fetchInterestedDriversFromSourceAndDestination(
        sourceCity,
        destinationCity,
      ),
    );
    Logger().d(availableDrivers.toString());
    return availableDrivers;
  }

  Future<List<AvailableDriverEntity>> fetchInterestedDrivers(
    String city,
    String sourceORDestination,
  ) async {
    final List<AvailableDriverEntity> availableDrivers = [];
    try {
      final journeySnapshot = await FirebaseFirestore.instance
          .collection("journey")
          .where(sourceORDestination, isEqualTo: city)
          .get();
      availableDrivers.addAll(
        await getAvailableDriverEntityListFromSnapshot(
          journeySnapshot,
        ),
      );
    } catch (e) {
      Logger().e('$e No available drivers found for $city');
    }
    return availableDrivers;
  }

  Future<List<AvailableDriverEntity>>
      fetchInterestedDriversFromSourceAndDestination(
    String sourceCity,
    String destinationCity,
  ) async {
    final List<AvailableDriverEntity> availableDrivers = [];
    try {
      final journeySnapshot = await FirebaseFirestore.instance
          .collection("journey")
          .where('source', isEqualTo: sourceCity)
          .where('destination', isEqualTo: destinationCity)
          .get();
      availableDrivers.addAll(
        await getAvailableDriverEntityListFromSnapshot(
          journeySnapshot,
        ),
      );
    } catch (e) {
      Logger().e(
        '$e No available drivers found for $sourceCity to $destinationCity',
      );
    }
    return availableDrivers;
  }

  Future<List<AvailableDriverEntity>> getAvailableDriverEntityListFromSnapshot(
    QuerySnapshot<Map<String, dynamic>> journeySnapshot,
  ) async {
    final List<AvailableDriverEntity> availableDrivers = [];
    if (journeySnapshot.size > 0) {
      for (final driver in journeySnapshot.docs) {
        final String source = driver.data()['source'];
        final String destination = driver.data()['destination'];
        //get interested drivers
        final interestDriversSnapshot = await FirebaseFirestore.instance
            .collection('journey')
            .doc(driver.id)
            .collection('interested_drivers')
            .get();
        for (final interestedDriver in interestDriversSnapshot.docs) {
          final String driverUid = interestedDriver.data()['uid'];
          final String driverName = interestedDriver.data()['driverName'];
          availableDrivers.add(
            AvailableDriverEntity(
              source: source,
              destination: destination,
              driverName: driverName,
              driverUid: driverUid,
            ),
          );
        }
      }
    }
    return availableDrivers;
  }
}
