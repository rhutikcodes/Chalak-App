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
    Logger().e(availableDrivers.toString());
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
    } catch (e) {
      Logger().e('$e No available drivers found for $city');
    }
    return availableDrivers;
  }
}
