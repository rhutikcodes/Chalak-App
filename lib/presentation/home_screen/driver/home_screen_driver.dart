import 'package:chalak_app/application/cubit/orders_cubit.dart';
import 'package:chalak_app/presentation/home_screen/app_bar_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giff_dialog/giff_dialog.dart';

import '../../../domain/auth/entity/user_entity.dart';
import '../dealer/home_screen_dealer.dart';

class HomeScreenDriver extends StatefulWidget {
  const HomeScreenDriver({Key? key, required this.userEntity})
      : super(key: key);
  final UserEntity userEntity;

  @override
  State<HomeScreenDriver> createState() => _HomeScreenDriverState();
}

class _HomeScreenDriverState extends State<HomeScreenDriver> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<OrdersCubit>(context).getBookings(widget.userEntity.uid);
  }

  @override
  Widget build(BuildContext context) {
    final welcomeMessage =
        "Welcome back, ${widget.userEntity.name.split(' ')[0]}!";
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBarCustom(
          welcomeMessage: welcomeMessage,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Available Bookings👇🏻",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              BlocBuilder<OrdersCubit, OrdersState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => const Text('data'),
                    loaded: (bookings) {
                      final data = bookings.orderEnityList;
                      if (data.isEmpty) {
                        return const Text("No Bookings available");
                      }
                      return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DriverCard(
                              destination: data[index].destination,
                              name: data[index].driverName,
                              onPress: () async {
                                //TODO:update order status
                                showDialog(
                                  context: context,
                                  builder: (_) => AssetGiffDialog(
                                    title: const Text(
                                      "Order Completed",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    description: const Text(
                                      "Hurray!!",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    entryAnimation: EntryAnimation.topRight,
                                    onOkButtonPressed: () {
                                      Navigator.pop(context);
                                    },
                                    image: Image.asset(
                                      "assets/images/thank_you.gif",
                                    ),
                                  ),
                                );
                              },
                              source: data[index].source,
                              actionText: 'Complete',
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
