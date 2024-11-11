// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/* ---------------------------------- DEPENDENCIES ---------------------------------- */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahabat_taman/homes/homesContent/parkOrder.dart';

/* ---------------------------------- PAGE ---------------------------------- */
import 'package:sahabat_taman/homes/homesContent/profileTukang.dart';
import 'package:sahabat_taman/homes/homesContent/designPage.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 245, 245, 245),
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 25),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          // PADDING BOTTOM
          child: Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CONTENT
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // USER GREETING
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          'Hi, Hanif!',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0), // Posisi bayangan
                                blurRadius: 3.0, // Tingkat blur bayangan
                                color: Colors.grey, // Warna bayangan
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Text(
                          'Pilih layanan yang sesuai dengan kebutuhan',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),

                      // APPLICATIONs
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // APP 1
                          Column(
                            children: [
                              // BOX
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProfileTukang(),
                                    ),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 63, 93, 79),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(
                                            0.5), // Warna bayangan dengan opasitas 50%
                                        spreadRadius: 2, // Jangkauan bayangan
                                        blurRadius: 6, // Tingkat blur bayangan
                                        offset: Offset(5, 8),
                                      ),
                                    ],
                                  ),
                                  height: 100,
                                  width: 100,
                                  child: Icon(
                                    Icons.people_alt_outlined,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),

                              // TEXT
                              SizedBox(
                                width: 100,
                                child: Text(
                                  'Profil Tukang Taman',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54,
                                  ),
                                ),
                              )
                            ],
                          ),

                          // APP 2
                          Column(
                            children: [
                              // BOX
                              GestureDetector(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DesignPage(),
                                  ),
                                ),
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 63, 93, 79),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(
                                            0.5), // Warna bayangan dengan opasitas 50%
                                        spreadRadius: 2, // Jangkauan bayangan
                                        blurRadius: 6, // Tingkat blur bayangan
                                        offset: Offset(5, 8),
                                      ),
                                    ],
                                  ),
                                  height: 100,
                                  width: 100,
                                  child: Icon(
                                    Icons.edit_outlined,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),

                              // TEXT
                              SizedBox(
                                width: 100,
                                child: Text(
                                  'Inspirasi Desain',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // APP 3
                          Column(
                            children: [
                              // BOX
                              GestureDetector(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ParkOrder(),
                                  ),
                                ),
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 63, 93, 79),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2, // Jangkauan bayangan
                                        blurRadius: 6, // Tingkat blur bayangan
                                        offset: Offset(5, 8),
                                      ),
                                    ],
                                  ),
                                  height: 100,
                                  width: 100,
                                  child: Icon(
                                    Icons.discount_outlined,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),

                              // TEXT
                              SizedBox(
                                width: 100,
                                child: Text(
                                  'Pemesanan Layanan',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // BANNER
                Container(
                  color: Color.fromARGB(255, 63, 93, 79),
                  // padding: EdgeInsets.symmetric(horizontal: 25),
                  margin: EdgeInsets.symmetric(vertical: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'asset/images/banner.png',
                        height: 120,
                      ),
                      Text(
                        'Sahabat Taman',
                        style: TextStyle(
                            fontFamily: 'Sacramento',
                            fontSize: 40,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),

                //TIPS CONTAINER
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,

                  // DIRECT BOX
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        // CONTENT 1
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 63, 93, 79),
                          ),
                          width: 280,
                          margin: EdgeInsets.only(right: 10),

                          // DIRECT CONTENT
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              children: [
                                // DIRECT TITLE
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, bottom: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        margin: EdgeInsets.only(right: 5),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              150, 182, 226, 206),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          'TIPS and TRICK',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: 'Passero',
                                            fontSize: 25,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      // ICON
                                      Transform.rotate(
                                        angle: 3,
                                        child: Icon(
                                          CupertinoIcons.paperclip,
                                          color: Color.fromARGB(
                                              223, 126, 191, 162),
                                          size: 35,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // DESCRIPTION
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(
                                    'Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // CONTENT 2
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 63, 93, 79),
                          ),
                          width: 280,
                          margin: EdgeInsets.only(right: 10),

                          // DIRECT CONTENT
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Column(
                              children: [
                                // DIRECT TITLE
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, bottom: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        margin: EdgeInsets.only(right: 5),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              150, 182, 226, 206),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          'TIPS and TRICK',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: 'Passero',
                                            fontSize: 25,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      // ICON
                                      Transform.rotate(
                                        angle: 3,
                                        child: Icon(
                                          CupertinoIcons.paperclip,
                                          color: Color.fromARGB(
                                              223, 126, 191, 162),
                                          size: 35,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // DESCRIPTION
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(
                                    'Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit Lorem Ipsum Dolor Sit ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
