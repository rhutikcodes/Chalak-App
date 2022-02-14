import 'package:chalak_app/domain/home/entity/order_entity.dart';
import 'package:chalak_app/domain/home/repository/i_order_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetBookingsUsecase {
  final IOrderRepository orderRepository;
  GetBookingsUsecase({required this.orderRepository});
  Future<List<OrderEntity>> call(String driverUid) async {
    return orderRepository.getBookings(driverUid);
  }
}
