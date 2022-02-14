import 'package:bloc/bloc.dart';
import 'package:chalak_app/domain/home/entity/order_entity.dart';
import 'package:chalak_app/domain/home/usecase/add_order_usecase.dart';
import 'package:chalak_app/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/home/usecase/get_bookings_usecase.dart';

part 'orders_state.dart';
part 'orders_cubit.freezed.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit() : super(const OrdersState.initial());
  Future<void> addOrder(OrderEntity orderEntity) async {
    await getIt<AddOrderUsecase>().call(orderEntity);
  }

  Future<List<OrderEntity>> getBookings(String driverUid) async {
   final List<OrderEntity> bookingsList= await getIt<GetBookingsUsecase>().call(driverUid);
    emit(OrdersState.loaded(bookingsList));
    return bookingsList;
  }
}
