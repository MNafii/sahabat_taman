// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

/* ------------------------------ DEPENDENCIES ------------------------------ */
import 'package:flutter/cupertino.dart';

/* ------------------------------ PAGE ------------------------------ */
import 'package:sahabat_taman/gnav_view/gnav.dart';

class UserOwn extends StatefulWidget {
  const UserOwn({super.key});

  @override
  UserState createState() => UserState();
}

class UserState extends State<UserOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // BACK BUTTON
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        toolbarHeight: 50,
        leading: SizedBox(
          width: 20,
          height: 20,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.arrow_left,
              color: Colors.black,
              size: 18,
            ),
          ),
        ),
        elevation: 0,
      ),

      // SCROLL
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          color: Color.fromARGB(255, 245, 245, 245),
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            // scrollDirection: Axis.vertical,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 63, 93, 79),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  // CONTENT
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'asset/images/Avatar.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // USER FIELD
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Nama Pengguna',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    margin: EdgeInsets.only(top: 5, bottom: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Rani',
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  // EMAIL FIELD
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email Pengguna',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    margin: EdgeInsets.only(top: 5, bottom: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Rani@gmail.com',
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  // NOMOR FIELD
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Nomor Telepon',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    margin: EdgeInsets.only(top: 5, bottom: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: '089878684828',
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  // ALAMAT FIELD
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Alamat Pengguna',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    margin: EdgeInsets.only(top: 5, bottom: 20),
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.home_filled),
                        hintText:
                            'Jl. Kopi Studio No 17, Lowokwaru, Malang, 65141',
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  // LOGIN BUTTON
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gnav()),
                      );
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(150, 182, 226, 206),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Simpan',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
