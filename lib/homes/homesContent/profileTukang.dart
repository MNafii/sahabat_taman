// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

/* ---------------------------------- DEPENDENCIES ---------------------------------- */
import 'package:flutter/material.dart';

/* ---------------------------------- PAGE ---------------------------------- */

class ProfileTukang extends StatelessWidget {
  const ProfileTukang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Profil Tukang',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            shadows: [
              Shadow(
                offset: Offset(2.0, 2.0), // Posisi bayangan
                blurRadius: 3.0, // Tingkat blur bayangan
                color:
                    const Color.fromARGB(150, 158, 158, 158), // Warna bayangan
              ),
            ],
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        color: Color.fromARGB(255, 245, 245, 245),
        child: Column(
          children: [
            // CONTENT
            Expanded(
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  // BOX
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 63, 93, 79),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    // BOX CONTENT
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // PROFILE
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // IF ICON
                            // Icon(
                            //   CupertinoIcons.person_crop_circle,
                            //   size: 110,
                            //   color: Colors.white,
                            // ),

                            // IF PICTURE
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'asset/images/Avatar.png',
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),

                            // PROFILE CONTENT
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Bersertifikasi',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),

                        // DESC
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 5),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(150, 182, 226, 206),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // BOX TITLE
                                  Text(
                                    'Bu Hadi',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: Divider(
                                      thickness: 2,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Rating : 5',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Spesialis : Perapian Taman',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Lokasi : Candi Trowulan, Malang ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
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
