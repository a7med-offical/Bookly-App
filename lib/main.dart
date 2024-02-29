import 'package:app/constants.dart';
import 'package:app/features/splash/presentation/view_model/view/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bookly());
}
class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: KprimaryColor),
      home:const SplashView(),
    );
  }
}