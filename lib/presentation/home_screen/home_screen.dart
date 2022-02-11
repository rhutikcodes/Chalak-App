import 'package:chalak_app/domain/auth/entity/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/cubit/auth_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.userEntity}) : super(key: key);
  final UserEntity userEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Main Page"),
          ElevatedButton(
              onPressed: () async {
                await BlocProvider.of<AuthCubit>(context).logOut();
              },
              child: const Text("Sign Out"),)
        ],
      ),
    );
  }
}
