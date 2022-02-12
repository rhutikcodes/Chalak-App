// ignore_for_file: use_build_context_synchronously

import 'package:chalak_app/application/cubit/auth_cubit.dart';
import 'package:chalak_app/core/palette.dart';
import 'package:chalak_app/presentation/auth/widgets/sign_in_up_bar.dart';
import 'package:chalak_app/presentation/auth/widgets/verify_otp_screen.dart';
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

class _SignInState extends State<SignIn> {
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                      final response = await BlocProvider.of<AuthCubit>(context)
                          .signInWithEmail(email, password);
                      if (response.isLeft()) {
                        //show snackbar
                          ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('No user found $email'),
                          ),
                        );
                      }
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
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () async {
                      //send OTP
                      if (emailController.text.isNotEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('OTP sent')),
                        );
                        BlocProvider.of<AuthCubit>(context)
                            .sendOtp(emailController.text)
                            .whenComplete(
                              () => //navigate to verify otp screen
                                  Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => VerifyOtpScreen(
                                    email: emailController.text,
                                  ),
                                ),
                              ),
                            );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Enter email')),
                        );
                      }
                    },
                    child: const Text(
                      'Login with OTP',
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
