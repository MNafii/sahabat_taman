// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/* ---------------------------------- DEPENDENCIES ---------------------------------- */
import 'package:flutter/material.dart';

/* ---------------------------------- PAGE ---------------------------------- */

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Bantuan dan Konsultasi',
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
                      children: [
                        Icon(
                          Icons.chat_bubble_outline_rounded,
                          size: 70,
                          color: Colors.white,
                        ),

                        // DESC
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Whatsapp',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
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
