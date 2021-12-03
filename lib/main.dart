import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'lomenu.dart';
import 'package:lo_menu/shared/services/auth_services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => AuthService())],
    child: LoMenu(),
  ));
}
