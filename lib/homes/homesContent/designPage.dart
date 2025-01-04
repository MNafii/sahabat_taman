// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_print

/* ---------------------------------- DEPENDENCIES ---------------------------------- */
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/* ---------------------------------- PAGE ---------------------------------- */
class DesignPage extends StatefulWidget {
  const DesignPage({super.key});

  @override
  DesignPageState createState() => DesignPageState();
}

class DesignPageState extends State<DesignPage> {
  // Deklarasi
  List galeridata = [];
  Future<void> getrecord() async {
    String uri = "https://astroedu.site/api/galeries/";
    try {
      var response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        print('Response body: ${response.body}');
        var decodedResponse = jsonDecode(response.body);

        // Sesuaikan dengan struktur data API
        if (decodedResponse is Map<String, dynamic> &&
            decodedResponse.containsKey('data')) {
          setState(() {
            galeridata = decodedResponse['data'];
          });
        } else if (decodedResponse is List) {
          setState(() {
            galeridata = decodedResponse;
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
              child: galeridata.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: galeridata.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            // Text
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                galeridata[index]["nama"] ?? "Tidak ada judul",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image.asset(
                                                'asset/images/des3.png',
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
                        );
                      }),
              // child: ListView(
              //   shrinkWrap: true,
              //   physics: BouncingScrollPhysics(),
              //   children: [
              //     // Text
              //     Container(
              //       padding: EdgeInsets.only(top: 20),
              //       width: MediaQuery.of(context).size.width,
              //       child: Text(
              //         galeridata[index]["nama"] ?? "Tidak ada nama",
              //         style: TextStyle(
              //             fontSize: 20,
              //             fontFamily: 'Poppins',
              //             fontWeight: FontWeight.w600,
              //             color: Colors.black54),
              //       ),
              //     ),

              //     // BOX
              //     Container(
              //       padding: EdgeInsets.all(15),
              //       margin: EdgeInsets.only(top: 3),
              //       decoration: BoxDecoration(
              //         color: Color.fromARGB(255, 63, 93, 79),
              //         borderRadius: BorderRadius.circular(20),
              //       ),

              //       // BOX CONTENT
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           // PIC
              //           Expanded(
              //             child: SingleChildScrollView(
              //               scrollDirection: Axis.horizontal,
              //               child: Row(
              //                 children: [
              //                   Padding(
              //                     padding: EdgeInsets.only(right: 10),
              //                     child: ClipRRect(
              //                       borderRadius: BorderRadius.circular(15),
              //                       child: Image.asset(
              //                         'asset/images/des3.png',
              //                         height: 100,
              //                         width: 90,
              //                         fit: BoxFit.cover,
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsets.only(right: 10),
              //                     child: ClipRRect(
              //                       borderRadius: BorderRadius.circular(15),
              //                       child: Image.asset(
              //                         'asset/images/des3.png',
              //                         height: 100,
              //                         width: 90,
              //                         fit: BoxFit.cover,
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsets.only(right: 10),
              //                     child: ClipRRect(
              //                       borderRadius: BorderRadius.circular(15),
              //                       child: Image.asset(
              //                         'asset/images/des1.png',
              //                         height: 100,
              //                         width: 90,
              //                         fit: BoxFit.cover,
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: EdgeInsets.only(right: 10),
              //                     child: ClipRRect(
              //                       borderRadius: BorderRadius.circular(15),
              //                       child: Image.asset(
              //                         'asset/images/des2.png',
              //                         height: 100,
              //                         width: 90,
              //                         fit: BoxFit.cover,
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),

              //           // ICON
              //           Icon(
              //             CupertinoIcons.chevron_right_2,
              //             color: Colors.white,
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
