import 'package:coach_app/Screens/splash_screen.dart';
import 'package:coach_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'Screens/main_screens/bottom_bar.dart';
import 'Screens/main_screens/home/home_screen.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('es_MX');
    return MultiProvider(
      providers: [
        Provider<AuthService>(
            create: (_) => AuthService()),
      ],
      child: MaterialApp(
        title: 'Coach App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BottomBar(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
