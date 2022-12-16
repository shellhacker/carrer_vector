import 'package:carrer_vector/features/auth/login/screens/login_screen.dart';
import 'package:carrer_vector/features/mcq/provider/mcq_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/auth/login/provider/login_controller.dart';
import 'features/auth/signup/provider/register_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => McqController()),
        ChangeNotifierProvider(create: (_) => LoginController()),
        ChangeNotifierProvider(create: (_) => RegisterController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
