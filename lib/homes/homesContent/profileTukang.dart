// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_print

/* ---------------------------------- DEPENDENCIES ---------------------------------- */
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/* ---------------------------------- PAGE ---------------------------------- */

class ProfileTukang extends StatefulWidget {
  const ProfileTukang({super.key});

  @override
  ProfileTukangState createState() => ProfileTukangState();
}

class ProfileTukangState extends State<ProfileTukang> {
  // Deklarasi
  List userdata = [];
  Future<void> getrecord() async {
    String uri = "https://astroedu.site/api/tukangs/";
    try {
      var response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        print('Response body: ${response.body}');
        var decodedResponse = jsonDecode(response.body);

        // Sesuaikan dengan struktur data API
        if (decodedResponse is Map<String, dynamic> &&
            decodedResponse.containsKey('data')) {
          setState(() {
            userdata = decodedResponse['data'];
          });
        } else if (decodedResponse is List) {
          setState(() {
            userdata = decodedResponse;
          });
        } else {
          print('Unexpected data structure: $decodedResponse');
        }
      } else {
        print('Failed to fetch data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  void initState() {
    getrecord();
    super.initState();
  }

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
      body: userdata.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: userdata.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                                  userdata[index]["nama"] ?? "Tidak ada nama",
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
                                  userdata[index]["rating"] ?? "Tidak ada rating",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  userdata[index]["spesialis"] ?? "Tidak berspesialis",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  userdata[index]["lokasi"] ?? "Tidak ada lokasi",
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
                );
              },
            ),
    );
  }
}
