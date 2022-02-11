import 'package:chalak_app/application/cubit/auth_cubit.dart';
import 'package:chalak_app/core/palette.dart';
import 'package:chalak_app/presentation/auth/widgets/sign_in_up_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'decoration_functions.dart';
import 'title.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    required Key key,
    required this.onRegisterClicked,
  }) : super(key: key);

  final VoidCallback onRegisterClicked;

  @override
  State<SignIn> createState() => _SignInState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          const Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerLeft,
              child: LoginTitle(
                title: 'Welcome\nBack',
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
                    decoration: signInInputDecoration(hintText: 'Email'),
                    controller: emailController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: TextField(
                    decoration: signInInputDecoration(hintText: 'Password'),
                    controller: passwordController,
                  ),
                ),
                SignInBar(
                  label: 'Sign in',
                  onPressed: () async {
                    // context.signInWithEmailAndPassword();
                    final email = emailController.text;
                    final password = passwordController.text;
                    if (email.isNotEmpty && password.isNotEmpty) {
                      await BlocProvider.of<AuthCubit>(context)
                          .signInWithEmail(email, password);
                    }
                  },
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      widget.onRegisterClicked.call();
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        color: Palette.darkBlue,
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
