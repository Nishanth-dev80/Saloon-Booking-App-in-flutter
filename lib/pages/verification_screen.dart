import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_screen.dart';


class Verification extends StatelessWidget {
  const Verification({super.key});

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
                width: double.infinity,
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
            left: (MediaQuery.of(context).size.width - 88) / 2,
            child: SvgPicture.asset(
              'assets/vectors/knife.svg',
              width: 88,
              height: 92,
            ),
          ),
          Positioned(
            top: 360,
            left: 42,
            right: 42,
            child: Text(
              'Confirmation code has been sent to your email \nolina....@gmail.com',
              textAlign: TextAlign.center,
              style: GoogleFonts.workSans(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                letterSpacing: 0.0,
                color: const Color(0xff84808D),
              ),
            ),
          ),
          Positioned(
            top: 420,
            left: 42,
            right: 42,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildOtpBox(''),
                _buildOtpBox(''),
                _buildOtpBox(''),
                _buildOtpBox(''),
              ],
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
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
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
                'Verify now',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 570,
            left: 111,
            child: Row(
              children: [
                Text(
                  'Didn’t get code?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.0,
                    color: const Color(0xff84808D),
                  ),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    // Add action for Resend
                  },
                  child: Text(
                    'Resend',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      letterSpacing: 0.0,
                      color: const Color(0xff101928),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Method to create OTP Box
  Widget _buildOtpBox(String digit) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      alignment: Alignment.center,
      child: Text(
        digit,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

