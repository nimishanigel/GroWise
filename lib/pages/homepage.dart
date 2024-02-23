import 'package:flutter/material.dart';
import 'package:growwise/pages/newsletter.dart';
import 'package:growwise/pages/home.dart';
import 'package:growwise/pages/aibot.dart';
import 'package:growwise/pages/market.dart';
import 'package:growwise/pages/login.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // Replace with your desired value
    double ffem = 1.0; // Replace with your desired value

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20 * fem, 30 * fem, 19 * fem, 66 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(20, 254, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 41),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 28 * fem),
              width: 147 * fem,
              height: 26 * fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 146 * fem,
                        height: 26 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5 * fem,
                    top: 1 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 120 * fem,
                        height: 24 * fem,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'Change Crop',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 19 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2 * ffem / fem,
                              color: const Color(0xff02841e),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Image and Text Section
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 17 * fem),
              padding:
                  EdgeInsets.fromLTRB(18 * fem, 24 * fem, 20 * fem, 7 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15 * fem),
                image: const DecorationImage(
                  image: AssetImage('assets/images/ai.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chat with Our Own AI about any Agri Queries',
                    style: TextStyle(
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2 * ffem / fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                  Text(
                    'GrowWise AI',
                    style: TextStyle(
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.4475 * ffem / fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AiBotScreen()),
                      );
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            // Newsletter Section
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
              padding: EdgeInsets.all(5 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15 * fem),
                color: const Color.fromARGB(30, 21, 200, 12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Latest News in India',
                    style: TextStyle(
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2 * ffem / fem,
                      color: const Color(0xff02841e),
                    ),
                  ),
                  SizedBox(height: 10 * fem),
                  const NewsletterWidget(), // Use your NewsletterWidget here
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(181, 40, 210, 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Handle settings button press
              },
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Market()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
