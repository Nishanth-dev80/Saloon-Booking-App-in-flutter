import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Nishanth',
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          letterSpacing: 0.2,
                          color: const Color(0xFF101928),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Welcome Back',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.4,
                          letterSpacing: 0.5,
                          color: const Color(0xFF727272),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Positioned(
                        top: -6,
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(
                            sigmaX: 2,
                            sigmaY: 2,
                          ),
                          child: Container(
                            width: 54,
                            height: 54,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(27),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/ellipse_48.jpeg'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 54,
                        height: 54,
                        padding: const EdgeInsets.all(6),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/ellipse_48.jpeg'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 24),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFFAFAFA)),
                borderRadius: BorderRadius.circular(22),
                color: const Color(0xFFFFFFFF),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    color: Color(0x26000000),
                    offset: Offset(2, 2),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Content goes here', // Example text
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color(0xFF101928),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
