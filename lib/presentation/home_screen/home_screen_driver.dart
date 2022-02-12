import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/cubit/auth_cubit.dart';
import '../../domain/auth/entity/user_entity.dart';

class HomeScreenDriver extends StatelessWidget {
  const HomeScreenDriver({ Key? key, required this.userEntity }) : super(key: key);
final UserEntity userEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Driver"),
          ElevatedButton(
            onPressed: () async {
              await BlocProvider.of<AuthCubit>(context).logOut();
            },
            child: const Text("Sign Out"),
          )
        ],
      ),
    );
  }
}
