import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saloon_apk/pages/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
            left: 118,
            child: Text(
              'Register',
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
            top: 400,
            left: 20,
            right: 20,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                labelText: 'First Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
           Positioned(
            top: 461,
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
            top: 527,
            left: 20,
            right: 20,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_outline),
                labelText: 'Password',
                              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
           Positioned(
            top: 590,
            left: 20,
            right: 20,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_outline),
                labelText: 'Confirm Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
           Positioned(
            top: 670,
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
                'SIGN UP',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
            Positioned(
            top: 730,
            left: 80,
            child: Text(
              'Already have an account?',
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
            top: 730,
            left: 232,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  LoginScreen()),
                );
              },
              child: Text(
                'Login',
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