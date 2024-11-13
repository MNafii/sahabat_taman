// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

/* ------------------------------ DEPENDENCIES ------------------------------ */
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:sahabat_taman/contact/contact.dart';

/* ------------------------------ PAGE ------------------------------ */
import 'package:sahabat_taman/homes/home.dart';
import 'package:sahabat_taman/personalData/personal.dart';
import 'package:sahabat_taman/search/search.dart';

// NAVBAR
class Gnav extends StatefulWidget {
  const Gnav({super.key});

  @override
  GnavState createState() => GnavState();
}

class GnavState extends State<Gnav> {
  //HALAMAN YANG DIPILIH PERTAMA
  int selectedIndex = 0;

  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

// ANIMATED NAVBAR DELAY
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;

      // ANIMASI PINDAH PAGE
      pageController.animateToPage(
        selectedIndex,
        duration: Duration(milliseconds: 750),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // HALAMAN AWAL
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        // CONTENT
        children: [
          SafeArea(
            child: Home(),
          ),
          SafeArea(
            child: Search(),
          ),
          SafeArea(
            child: Contact(),
          ),
          SafeArea(
            child: Personal(),
          ),
        ],
      ),

      // NAV FLUTTER
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: 70,
        // GNAV ICON
        child: Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: GNav(
              gap: 5,
              activeColor: Colors.white,
              tabBackgroundColor: Color.fromARGB(255, 63, 93, 79),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13.5),
              selectedIndex: selectedIndex,
              onTabChange: _onItemTapped,
              tabs: const [
                GButton(
                  icon: CupertinoIcons.house_fill,
                  iconSize: 35,
                  text: 'Beranda',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  iconColor: Color.fromARGB(255, 63, 93, 79),
                ),
                GButton(
                  icon: CupertinoIcons.search,
                  iconSize: 35,
                  text: 'Cari',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  iconColor: Color.fromARGB(255, 63, 93, 79),
                ),
                GButton(
                  icon: CupertinoIcons.chat_bubble,
                  iconSize: 35,
                  text: 'Pesan',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  iconColor: Color.fromARGB(255, 63, 93, 79),
                ),
                GButton(
                  icon: CupertinoIcons.person,
                  iconSize: 35,
                  text: 'Profil',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  iconColor: Color.fromARGB(255, 63, 93, 79),
                ),
                GButton(
                  icon: CupertinoIcons.person,
                  iconSize: 35,
                  text: 'Profil',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  iconColor: Color.fromARGB(255, 63, 93, 79),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
