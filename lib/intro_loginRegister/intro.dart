// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

/* ---------------------------------- PAGE ---------------------------------- */
import 'package:sahabat_taman/login/login.dart';
import 'package:sahabat_taman/register/register.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20),
        color: Color.fromARGB(255, 63, 93, 79),
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CONTENT

              // BATAS BAWAH
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Image.asset(
                  'asset/images/logo.png',
                  height: 220,
                ),
              ),

              // SIGN UP
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 182, 226, 206),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Color.fromARGB(255, 63, 93, 79),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),

              // HORIZONTAL RULE
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 55,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.white,
                        thickness: 5,
                      ),
                    ),

                    // TEXT
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Or',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),

                    Expanded(
                      child: Divider(
                        color: Colors.white,
                        thickness: 5,
                      ),
                    ),
                  ],
                ),
              ),

              // LOGIN
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 182, 226, 206),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Color.fromARGB(255, 63, 93, 79),
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
    );
  }
}
