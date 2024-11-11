// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/* ---------------------------------- DEPENDENCIES ---------------------------------- */
import 'package:flutter/material.dart';

/* ---------------------------------- PAGE ---------------------------------- */

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          color: Color.fromARGB(255, 245, 245, 245),
          child: Column(
            children: [
              // TEXT
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 5, bottom: 10),
                child: Text(
                  'Cari layanan sesuai dengan Kebutuhan',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
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
              // SEARCH BAR
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 63, 93, 79),
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                margin: EdgeInsets.only(top: 5, bottom: 20),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                  decoration: InputDecoration(
                    hintText: 'Cari Sesuatu...',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    suffixIconColor: Colors.white,
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),

              // CONTENT
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  children: [
                    // BOX
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 63, 93, 79),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      // BOX CONTENT
                      child: Row(
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

                          // DESC
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                  'Spesialis : Perapian',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
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
      ),
    );
  }
}
