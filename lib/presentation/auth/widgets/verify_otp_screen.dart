// ignore_for_file: use_build_context_synchronously

import 'package:chalak_app/application/cubit/auth_cubit.dart';
import 'package:chalak_app/core/palette.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({Key? key, required this.email}) : super(key: key);
  final String email;
  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  void dispose() {
    digitOneController.dispose();
    digitTwoController.dispose();
    digitThreeController.dispose();
    digitFourController.dispose();
    digitFiveController.dispose();
    digitSixController.dispose();
    super.dispose();
  }

  final TextEditingController digitOneController = TextEditingController();
  final TextEditingController digitTwoController = TextEditingController();
  final TextEditingController digitThreeController = TextEditingController();
  final TextEditingController digitFourController = TextEditingController();
  final TextEditingController digitFiveController = TextEditingController();
  final TextEditingController digitSixController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Verification',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Enter your OTP code number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                padding: const EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOTP(
                          first: true,
                          last: false,
                          context: context,
                          controller: digitOneController,
                        ),
                        _textFieldOTP(
                          first: false,
                          last: false,
                          context: context,
                          controller: digitTwoController,
                        ),
                        _textFieldOTP(
                          first: false,
                          last: false,
                          context: context,
                          controller: digitThreeController,
                        ),
                        _textFieldOTP(
                          first: false,
                          last: false,
                          context: context,
                          controller: digitFourController,
                        ),
                        _textFieldOTP(
                          first: false,
                          last: false,
                          context: context,
                          controller: digitFiveController,
                        ),
                        _textFieldOTP(
                          first: false,
                          last: true,
                          context: context,
                          controller: digitSixController,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          final optValue = digitOneController.text +
                              digitTwoController.text +
                              digitThreeController.text +
                              digitFourController.text +
                              digitFiveController.text +
                              digitSixController.text;
                          print(optValue);

                          final otpResponse =
                              await BlocProvider.of<AuthCubit>(context)
                                  .validateOtp(widget.email, optValue);

                          if (otpResponse) {
                            //authenticate user
                            //check if user exist

                            //find user's password
                            String? password;
                            try {
                              final userData = await FirebaseFirestore.instance
                                  .collection('users')
                                  .limit(1)
                                  .where(
                                    'email',
                                    isEqualTo: widget.email,
                                  )
                                  .get();

                              if (userData.docs.isNotEmpty) {
                                print('user found in db');
                                password =
                                    userData.docs.first.data()['password'];
                                print(password);
                              } else {
                                print('user not found');
                                //redirect to signup page
                                Navigator.pop(context);
                              }
                            } on Exception catch (e) {
                              print('error $e');
                            }
                            if (password != null) {
                              //sign in user
                              await BlocProvider.of<AuthCubit>(context)
                                  .signInWithEmail(widget.email, password);
                              Navigator.pop(context);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      Text('No user found ${widget.email}'),
                                ),
                              );
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Invalid otp')),
                            );
                          }
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Palette.lightBlue,
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Verify',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Didn't you receive any code?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Resend New Code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Palette.darkBlue,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _textFieldOTP({
  required bool first,
  last,
  required BuildContext context,
  required TextEditingController controller,
}) {
  return SizedBox(
    height: 50,
    child: AspectRatio(
      aspectRatio: 0.8,
      child: TextField(
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        controller: controller,
        showCursor: false,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counter: const Offstage(),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.black12),
            borderRadius: BorderRadius.circular(9),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Palette.darkBlue),
            borderRadius: BorderRadius.circular(9),
          ),
        ),
      ),
    ),
  );
}
