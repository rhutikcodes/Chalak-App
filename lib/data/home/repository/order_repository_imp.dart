import 'package:chalak_app/domain/home/entity/order_entity.dart';
import 'package:chalak_app/domain/home/repository/i_order_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IOrderRepository)
class OrderRepositoryImp implements IOrderRepository {
  @override
  Future<void> addOrder(OrderEntity orderEntity) async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(orderEntity.dealerUid)
        .collection('booked_orders')
        .add(orderEntity.toJson());
       await FirebaseFirestore.instance
        .collection("users")
        .doc(orderEntity.driverUid)
        .collection('bookings')
        .add(orderEntity.toJson());
  }
}
