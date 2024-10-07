import 'package:aspen/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/nasi padang.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: const EdgeInsets.all(15),
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 2,
                                    spreadRadius: 4,
                                  )
                                ],
                              ),
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      right: 20,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              spreadRadius: 4,
                            )
                          ],
                        ),
                        child: const Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.redAccent,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Nasi Padang',
                        style: GoogleFonts.getFont(
                          'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          color: const Color(0xff232323),
                        ),
                      ),
                      Text(
                        'Show Map',
                        style: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: const Color(0xff176ff2),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '4.5 (354 Reviews)',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: const Color(0xff606060),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex expedita impedit nihil omnis est aperiam, totam aliquid, iste doloremque debitis fugiat eligendi quod inventore eius aliquam alias. Blanditiis, nostrum iure?',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: const Color(0xff606060),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 29),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Menus',
                        style: GoogleFonts.getFont(
                          'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: const Color(0xff232323),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _buildCard(
                              assetPath: 'assets/vectors/vector_2_x2.svg',
                              text: '1 Heater'),
                          _buildCard(
                              assetPath: 'assets/vectors/vector_1_x2.svg',
                              text: '1 Dinner'),
                          _buildCard(
                              assetPath: 'assets/vectors/vector_x2.svg',
                              text: '1 Tub'),
                          _buildCard(
                              assetPath: 'assets/vectors/vector_3_x2.svg',
                              text: 'Pool'),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Order',
                        style: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: const Color(0xff232323),
                        ),
                      ),
                    ),
                    Text(
                      '15k',
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: const Color(0xe2ff5252),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 60,
                  width: MediaQuery.of(context).size.width / 1.8,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Order Now',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({required String assetPath, required String text}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.fromLTRB(0, 14, 0, 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0x0d176ff2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: 30,
              height: 28,
              child: SvgPicture.asset(
                assetPath,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 1.3),
              child: Text(
                text,
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
