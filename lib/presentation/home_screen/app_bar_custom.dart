import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/cubit/auth_cubit.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({
    Key? key,
    required this.welcomeMessage,
  }) : super(key: key);

  final String welcomeMessage;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        welcomeMessage,
        style: const TextStyle(
          fontFamily: 'Caveat',
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () async => {
            await BlocProvider.of<AuthCubit>(context).logOut(),
          },
          child: const Icon(
            Icons.logout_outlined,
          ),
        ),
        const SizedBox(
          width: 12,
        )
      ],
      elevation: 0,
    );
  }
}
