import 'package:aspen/constant.dart';
import 'package:aspen/widgets/popular_item.dart';
import 'package:aspen/widgets/recommended_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: primaryColor,
          currentIndex: 0,
          unselectedItemColor: Colors.black38,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Save',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event_note),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0x87E8E6E6),
                    ),
                    child: const Icon(Icons.menu),
                  ),
                  const Column(
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                          color: Color(0xffCECECE),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.location_solid,
                            color: Colors.red,
                          ),
                          Text(
                            'Jakarta, Indonesia',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down_outlined),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0x87E8E6E6),
                    ),
                    child: const Icon(Icons.notifications_none_outlined),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 18,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text.rich(
                            TextSpan(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                  text: 'New Recipe\n',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'When you order \$20+ automatically applied.',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 16),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 2,
                                    spreadRadius: 4,
                                  )
                                ],
                              ),
                              child: const Text(
                                'Order Now',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0x87E8E6E6),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Color(0xffCECECE),
                        ),
                        hintText: 'Search Foods, Groceries, Drinks, etc.',
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: primaryColor,
              labelColor: primaryColor,
              unselectedLabelColor: const Color(0xffb8b8b8),
              labelStyle: GoogleFonts.robotoCondensed(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
              unselectedLabelStyle: GoogleFonts.robotoCondensed(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              tabs: const [
                Tab(text: 'Breakfast'),
                Tab(text: 'Fast Food'),
                Tab(text: 'Desserts'),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: [
                buildContent('Breakfast'),
                buildContent('Fast Food'),
                buildContent('Desserts'),
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget buildContent(String tab) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: const Color(0xff232323),
                  ),
                ),
                Text(
                  'See All',
                  style: GoogleFonts.robotoCondensed(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color(0xff176ff2),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecommendedCard(
                    title: 'Nasi Goreng',
                    duration: '42-60 min',
                    price: '\$60 - \$120',
                    image: 'assets/images/Nasi Goreng (2).jpeg',
                  ),
                  SizedBox(width: 16),
                  RecommendedCard(
                    title: 'Luxurious Aspen',
                    duration: '42-60 min',
                    price: '\$60 - \$120',
                    image: 'assets/images/nasi padang.jpeg',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
