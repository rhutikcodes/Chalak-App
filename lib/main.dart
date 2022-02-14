import 'package:chalak_app/application/cubit/auth_cubit.dart';
import 'package:chalak_app/application/cubit/orders_cubit.dart';
import 'package:chalak_app/presentation/auth/root.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (_) => getIt<AuthCubit>()..handleAppStarted(),
        ),
        BlocProvider<OrdersCubit>(
          create: (_) => OrdersCubit(),
        ),
      ],
      child: FlutterWebFrame(
        maximumSize: const Size(400.0, 800.0), // Maximum size
        enabled: kIsWeb, // default is enable, when disable content is full size
        backgroundColor: Colors.grey, // Background color/white space
        builder: (BuildContext context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Chalak App',
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
          );
        },
      ),
    );
  }
}
