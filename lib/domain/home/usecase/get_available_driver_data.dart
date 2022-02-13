import 'package:chalak_app/domain/home/entity/available_driver_entity.dart';
import 'package:chalak_app/domain/home/repository/i_available_drivers_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetAvailableDriverData {
  final IAvailableDriversRepository availableDriversRepository;
  GetAvailableDriverData({required this.availableDriversRepository});
  Future<List<AvailableDriverEntity>> call(String city) async {
    return availableDriversRepository.getAvailableDrivers(city);
  }
}
