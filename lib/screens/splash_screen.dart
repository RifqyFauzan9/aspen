import 'package:aspen/constant.dart';
import 'package:aspen/screens/explore_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 93, 23, 48),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/images/splash-bg-5.jpeg'),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Cooking',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                        height: 1.3,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Delicious Like a Chef',
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffCECECE),
                        height: 1.3,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'This recipe app offers a wide selection of diverse and easy recipes suitable for all cooking levels!',
                    style: TextStyle(
                      color: Color(0xffCECECE),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExploreScreen(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: primaryColor,
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
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
