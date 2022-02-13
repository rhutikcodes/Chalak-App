import 'package:chalak_app/domain/home/entity/available_driver_entity.dart';
import 'package:chalak_app/presentation/home_screen/dealer/home_screen_dealer.dart';
import 'package:flutter/material.dart';
import 'package:giff_dialog/giff_dialog.dart';

class AvailableDriversScreen extends StatelessWidget {
  const AvailableDriversScreen({Key? key, required this.availableDriversList})
      : super(key: key);
  final List<AvailableDriverEntity> availableDriversList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: availableDriversList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: DriverCard(
              name: availableDriversList[index].driverName,
              destination: availableDriversList[index].destination,
              onPress: () {
                showDialog(
                  context: context,
                  builder: (_) => AssetGiffDialog(
                    title: const Text(
                      "Order Success",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    description: const Text(
                      "Thank you for using Chalak!!",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    entryAnimation: EntryAnimation.topRight,
                    onOkButtonPressed: () {
                      Navigator.pop(context);
                    },
                    image: Image.asset(
                      "assets/images/order_success.gif",
                    ),
                  ),
                );
              },
              source: availableDriversList[index].source,
            ),
          );
        },
      ),
    );
  }
}
