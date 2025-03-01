import 'package:flutter/material.dart';
import 'package:saloon_apk/components/onboard/constants.dart';
import 'pages/spash_screen.dart';

void main() {
  runApp(const InitialScreen());
}

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      title: appName,
      debugShowCheckedModeBanner: false,
    );
  }
}
