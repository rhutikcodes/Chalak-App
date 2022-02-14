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

  @override
  Future<List<OrderEntity>> getBookings(String driverUid) async {
    final List<OrderEntity> orderEnityList = [];
    final bookingsSnapshot = await FirebaseFirestore.instance
        .collection("users")
        .doc(driverUid)
        .collection('bookings')
        .get();
    if (bookingsSnapshot.size > 0) {
      for (final booking in bookingsSnapshot.docs) {
        final String driverUid = booking.data()['driverUid'];
        final String dealerUid = booking.data()['dealerUid'];
        final String driverName = booking.data()['driverName'];
        final String dealerName = booking.data()['driverName'];
        final String orderId = booking.data()['orderId'];
        final String source = booking.data()['source'];
        final String destination = booking.data()['destination'];
        final String status = booking.data()['status'];
        orderEnityList.add(
          OrderEntity(
            driverUid: driverUid,
            dealerUid: dealerUid,
            source: source,
            destination: destination,
            status: status,
            orderId: orderId, dealerName: dealerName, driverName: driverName,
          ),
        );
      }
    }
    return orderEnityList;
  }
}
