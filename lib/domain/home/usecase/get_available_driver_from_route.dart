import 'package:chalak_app/domain/home/entity/available_driver_entity.dart';
import 'package:chalak_app/domain/home/repository/i_available_drivers_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetAvailableDriverFromRoute {
  final IAvailableDriversRepository availableDriversRepository;
  GetAvailableDriverFromRoute({required this.availableDriversRepository});
  Future<List<AvailableDriverEntity>> call(String sourceCity, String destinationCity) async {
    return availableDriversRepository.getAvailableDriversFromRoute(sourceCity, destinationCity);
  }
}
