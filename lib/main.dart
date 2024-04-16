import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ramees_portfolio/res/constants.dart';
import 'package:ramees_portfolio/view/splash/splash_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAhLBH8HNRliRFpdabgeAc3PqsSVffT8KQ",
          authDomain: "rameesportfolio.firebaseapp.com",
          projectId: "rameesportfolio",
          storageBucket: "rameesportfolio.appspot.com",
          messagingSenderId: "938776413318",
          appId: "1:938776413318:web:8fd9d0d6ba6e2cfa3afd07",
          measurementId: "G-DBQC7EHFFV"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: bgColor,
          useMaterial3: true,
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
              .apply(
                bodyColor: Colors.white,
              )
              .copyWith(
                bodyText1: const TextStyle(color: bodyTextColor),
                bodyText2: const TextStyle(color: bodyTextColor),
              ),
        ),
        home: const SplashView());
  }
}
