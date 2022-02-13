import 'package:chalak_app/domain/home/entity/available_driver_entity.dart';

abstract class IAvailableDriversRepository {
  Future<List<AvailableDriverEntity>> getAvailableDrivers(String city);
}
