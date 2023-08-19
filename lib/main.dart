import 'package:dw/Page/PagePdf.dart';
import 'package:flutter/material.dart';
import 'Page/HomePage.dart';
import 'Page/SplashScreens.dart';
import 'Page/Filteration.dart';

void main() {
  runApp(BW());
}

class BW extends StatelessWidget {
  const BW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes: {
        PageForPdf.id: (context) => PageForPdf(),
        HomePage.id: (context) => HomePage(),
        SplashScreen.id: (context) => const SplashScreen(),
        Filteration.id: (context) => const Filteration(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
