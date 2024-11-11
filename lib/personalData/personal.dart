// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/* ---------------------------------- DEPENDENCIES ---------------------------------- */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/* ---------------------------------- PAGE ---------------------------------- */
import 'package:sahabat_taman/personalData/userData/user.dart';

class Personal extends StatelessWidget {
  const Personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        color: Color.fromARGB(255, 245, 245, 245),
        child: ListView(
          shrinkWrap: true,
          children: [
            // CONTENT
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserOwn(),
                ),
              ),

              // APP 1
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ICON
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 63, 93, 79),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      CupertinoIcons.person_crop_circle,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),

                  // TITLE
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Profile User',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            // APP 2
            Row(
              children: [
                // ICON
                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 63, 93, 79),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    size: 50,
                    color: Colors.white,
                  ),
                ),

                // TITLE
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Tentang Sahabat Taman',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                )
              ],
            ),

            // APP 3
            Row(
              children: [
                // ICON
                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 63, 93, 79),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    CupertinoIcons.flag,
                    size: 50,
                    color: Colors.white,
                  ),
                ),

                // TITLE
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Ketentuan Layanan',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
