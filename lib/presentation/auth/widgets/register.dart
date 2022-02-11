import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/cubit/auth_cubit.dart';
import 'decoration_functions.dart';
import 'sign_in_up_bar.dart';
import 'title.dart';

class Register extends StatelessWidget {
  const Register({Key? key, required this.onSignInPressed}) : super(key: key);

  final VoidCallback onSignInPressed;

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerLeft,
              child: LoginTitle(
                title: 'Create\nAccount',
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: TextField(
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    decoration: registerInputDecoration(
                      hintText: 'Email',
                    ),
                    controller: emailController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: TextField(
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    decoration: registerInputDecoration(hintText: 'Password'),
                    controller: passwordController,
                  ),
                ),
                SignUpBar(
                  label: 'Sign up',
                  // isLoading: isSubmitting,
                  onPressed: () async {
                    //TODO: register with email and password
                    print('presed');
                    final email = emailController.text;
                    final password = passwordController.text;
                    if (email.isNotEmpty && password.isNotEmpty) {
                      await BlocProvider.of<AuthCubit>(context)
                          .createNewAccount(email, password);
                    }
                  },
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      onSignInPressed.call();
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
