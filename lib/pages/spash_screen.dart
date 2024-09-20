import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/onboard/constants.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(barbarImage),
              ),
            ),
          ),
          Positioned(
            top: 523,
            left: 72,
            child: SvgPicture.asset(
              'assets/vectors/knife.svg',
              width: 221.39,
              height: 201,
            ),
          ),
        ],
      ),
    );
  }
}