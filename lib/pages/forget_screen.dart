import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saloon_apk/pages/verification_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
            left: 60,
            child: Text(
              'Forget Password',
              textAlign: TextAlign.center,
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w600,
                fontSize: 34,
                letterSpacing: 0.00,
                color: const Color(0xff101928),
              ),
            ),
          ),
          Positioned(
            top: 385,
            left: 95,
            child: Text(
              'Please enter email to continue',
              textAlign: TextAlign.center,
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                letterSpacing: 0.00,
                color: const Color(0xff84808D),
              ),
            ),
          ),
          Positioned(
            top: 415,
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
            top: 500,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Verification()),
                );
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
                'CONTINUE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
