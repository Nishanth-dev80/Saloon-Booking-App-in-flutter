import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloon_apk/pages/forget_screen.dart';
import 'package:saloon_apk/pages/signup_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(), // Wrap your login screen with a material app
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 267,
                width: 360,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/david.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 250,
            left: 130,
            child: SvgPicture.asset(
              'assets/vectors/knife.svg',
              width: 88,
              height: 92,
            ),
          ),
          Positioned(
            top: 340,
            left: 62,
            child: Text(
              'Welcome back!',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Work Sans',
                fontWeight: FontWeight.w600,
                fontSize: 34,
                letterSpacing: 0.00,
                color: const Color(0xff101928),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 20,
            right: 20,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email_outlined),
                labelText: 'Email Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 465,
            left: 20,
            right: 20,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_outline),
                labelText: 'Password',
                suffixIcon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen()),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Text(
                      'Forgot?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffD98988),
                      ),
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 540,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                // Handle login logic
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 80.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                backgroundColor: const Color(0xff101928),
              ),
              child: const Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 610,
            left: -35,
            right: 130,
            child: SvgPicture.asset(
              'assets/vectors/google.svg',
              height: 52,
              width: 156,
            ),
          ),
          Positioned(
            top: 610,
            left: 100,
            right: -60,
            child: SvgPicture.asset(
              'assets/vectors/facebook.svg',
              height: 52,
              width: 156,
            ),
          ),
          Positioned(
            top: 700,
            left: 90,
            child: Text(
              'Don’t have an account?',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Open Sans',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                letterSpacing: 0.00,
                color: const Color(0xff84808D),
              ),
            ),
          ),
          Positioned(
            top: 700,
            left: 229,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupScreen()),
                );
              },
              child: Text(
                'Sign up',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Open Sans',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.00,
                  color: const Color(0xff101928),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
