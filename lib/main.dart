import 'package:chalak_app/application/cubit/auth_cubit.dart';
import 'package:chalak_app/presentation/auth/root.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'core/palette.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>()..handleAppStarted(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const Root(),
        theme: ThemeData(
          platform: TargetPlatform.iOS,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: const AppBarTheme(
            color: Palette.darkBlue,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
          tabBarTheme: const TabBarTheme(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Palette.lightBlue),
            ),
          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Palette.darkOrange,
            primary: Palette.lightBlue,
          ),
        ),
      ),
    );
  }
}
