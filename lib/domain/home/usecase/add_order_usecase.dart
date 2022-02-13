import 'package:chalak_app/domain/home/entity/order_entity.dart';
import 'package:chalak_app/domain/home/repository/i_order_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AddOrderUsecase {
   final IOrderRepository orderRepository;
  AddOrderUsecase({required this.orderRepository});
  Future<void> call(OrderEntity orderEntity) async {
    return orderRepository.addOrder(orderEntity);
  }
}
