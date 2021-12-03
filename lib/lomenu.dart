import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lo_menu/Screens/Splash/splash_screen.dart';
import 'package:lo_menu/shared/services/auth_services.dart';

class LoMenu extends StatelessWidget {
  final Color _primaryColor = HexColor('#F2D096');
  final Color _accentColor = HexColor('#CD6701');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lomenu',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(title: "LoMenu"),
    );
  }
}
