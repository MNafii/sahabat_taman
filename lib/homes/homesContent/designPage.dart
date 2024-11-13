// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

/* ---------------------------------- DEPENDENCIES ---------------------------------- */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/* ---------------------------------- PAGE ---------------------------------- */

class DesignPage extends StatelessWidget {
  const DesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        color: Color.fromARGB(255, 245, 245, 245),
        child: Column(
          children: [
            // TEXT
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 5, bottom: 0),
              child: Text(
                'Galeri Inspirasi ',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0), // Posisi bayangan
                      blurRadius: 3.0, // Tingkat blur bayangan
                      color: const Color.fromARGB(
                          150, 158, 158, 158), // Warna bayangan
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 5, bottom: 10),
              child: Text(
                'Lihat dan gabungkan inspirasi garapan tukang kami untuk dijadikan inspirasi desain taman Anda. ',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ),

            // CONTENT
            Expanded(
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  // Text
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Vertical Garden',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Colors.black54),
                    ),
                  ),

                  // BOX
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(top: 3),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 63, 93, 79),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    // BOX CONTENT
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // PIC
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'asset/images/des3.png',
                                      height: 100,
                                      width: 90,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'asset/images/des3.png',
                                      height: 100,
                                      width: 90,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'asset/images/des1.png',
                                      height: 100,
                                      width: 90,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'asset/images/des2.png',
                                      height: 100,
                                      width: 90,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // ICON
                        Icon(
                          CupertinoIcons.chevron_right_2,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
