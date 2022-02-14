part of 'orders_cubit.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;
  const factory OrdersState.loaded(List<OrderEntity> orderEnityList) = _Loaded;
}
