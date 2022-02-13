import 'package:chalak_app/domain/auth/entity/user_entity.dart';
import 'package:chalak_app/presentation/auth/widgets/driver_form.dart';
import 'package:chalak_app/presentation/home_screen/app_bar_custom.dart';
import 'package:flutter/material.dart';
import 'package:giff_dialog/giff_dialog.dart';

class HomeScreenDealer extends StatefulWidget {
  const HomeScreenDealer({Key? key, required this.userEntity})
      : super(key: key);
  final UserEntity userEntity;

  @override
  State<HomeScreenDealer> createState() => _HomeScreenDealerState();
}

class _HomeScreenDealerState extends State<HomeScreenDealer> {
  final TextEditingController routeOneSourceController =
      TextEditingController();
  final TextEditingController routeOneDestinationController =
      TextEditingController();
  bool isLoading = false;
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
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Search Drivers👇🏻",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              SourceDestinationField(
                sourceController: routeOneSourceController,
                destinationController: routeOneDestinationController,
                sourceText: "Source",
                destinationText: "Destination",
                sourceOnTap: (x) {},
                destinationOnTap: (x) {},
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    //search Dealers
                    toogleLoading();
                  },
                  child: isLoading
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircularProgressIndicator(
                              color: Colors.white,
                            ),
                            const SizedBox(width: 24),
                            const Text('Loading....')
                          ],
                        )
                      : const Text("Search"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const HeadingText(
                text1: 'Available ',
                text2: 'Drivers',
              ),
              const SizedBox(
                height: 20,
              ),
              DriverCard(
                destination: 'Banglore',
                name: 'Rhutik',
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
                      image: Image.asset("assets/images/order_success.gif"),
                    ),
                  );
                },
                source: 'Mumbai',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void toogleLoading() {
    return setState(() {
      isLoading = !isLoading;
    });
  }
}

class DriverCard extends StatelessWidget {
  const DriverCard({
    Key? key,
    required this.name,
    required this.source,
    required this.destination,
    required this.onPress,
  }) : super(key: key);
  final String name, source, destination;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Color.fromARGB(255, 233, 254, 255),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 54,
            left: 20,
            child: Text(
              "From",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Positioned(
            top: 82,
            left: 20,
            child: Text(
              source,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Positioned(
            top: 110,
            left: 20,
            child: Text(
              "To",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Positioned(
            top: 138,
            left: 20,
            child: Text(
              destination,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 30,
            child: SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: onPress,
                child: const Text("Book"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  const HeadingText({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: RichText(
        text: TextSpan(
          text: text1,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 36,
            shadows: [
              BoxShadow(
                blurRadius: 1,
              ),
            ],
          ),
          children: <TextSpan>[
            TextSpan(
              text: text2,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                shadows: [
                  BoxShadow(
                    color: Colors.grey,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
