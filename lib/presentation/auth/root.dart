import 'package:chalak_app/application/cubit/auth_cubit.dart';
import 'package:chalak_app/presentation/auth/sign_up_screen.dart';
import 'package:chalak_app/presentation/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'auth_screen.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        print(state);
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            Logger().i(state);
            return _waitingScreen();
          },
          authenticated: (userEntity) {
            Logger().i(state);
            return Builder(
              builder: (context) {
                return HomeScreen(
                  userEntity: userEntity,
                );
              },
            );
          },
          unauthenticated: () {
            Logger().i(state);
            return const AuthScreen();
          },
          incompleteSignUp: (userEntity) {
            Logger().i(state);
            return SignUpScreen(
              userEntity: userEntity,
            );
          },
          orElse: () {
            Logger().i(state);
            return _waitingScreen();
          },
        );
      },
    );
  }
}

Widget _waitingScreen() {
  return Scaffold(
    body: Container(
      alignment: Alignment.center,
      child: const CircularProgressIndicator(),
    ),
  );
}
