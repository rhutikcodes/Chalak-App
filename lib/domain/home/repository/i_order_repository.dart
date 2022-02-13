import 'package:chalak_app/domain/home/entity/order_entity.dart';

abstract class IOrderRepository {
  Future<void> addOrder(OrderEntity orderEntity);
}
