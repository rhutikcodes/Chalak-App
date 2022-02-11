import 'package:chalak_app/domain/auth/entity/user_entity.dart';
import 'package:chalak_app/presentation/auth/widgets/sign_up_form_dealer.dart';
import 'package:chalak_app/presentation/auth/widgets/sign_up_form_driver.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key, required this.userEntity}) : super(key: key);
  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Register As?'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Dealer",
              ),
              Tab(
                text: "Driver",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SignUpFormDriver(
                userEntity: userEntity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SignUpFormDealer(
                userEntity: userEntity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
