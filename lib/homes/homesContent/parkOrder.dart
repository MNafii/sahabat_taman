// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, prefer_final_fields

/* ---------------------------------- DEPENDENCIES ---------------------------------- */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/* ---------------------------------- PAGE ---------------------------------- */
import 'package:sahabat_taman/gnav_view/gnav.dart';

class ParkOrder extends StatefulWidget {
  const ParkOrder({super.key});

  @override
  ParkOrderState createState() => ParkOrderState();
}

class ParkOrderState extends State<ParkOrder> {
  int? selectedOption;
  int? selectedOptionBayar;
  String dropdownValue = 'Bu Hadi';
  var _items = [
    'Bu Hadi',
    'Pak Hadi',
  ];

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
          color: Color.fromARGB(255, 245, 245, 245),
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            // PADDING PAGE
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),

              // CONTENT
              child: Column(
                children: [
                  // TITLE
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Pesan yang Anda butuhkan!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  // RADIOLIST TAMAN
                  Column(
                    children: [
                      // LIST 1
                      RadioListTile<int>(
                        contentPadding: EdgeInsets.all(0),
                        activeColor: Color.fromARGB(255, 63, 93, 79),
                        title: Text(
                          "Perancangan Desain Taman",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        value: 0,
                        groupValue: selectedOption,
                        onChanged: (int? value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),

                      // LIST 2
                      RadioListTile<int>(
                        contentPadding: EdgeInsets.all(0),
                        activeColor: Color.fromARGB(255, 63, 93, 79),
                        title: Text(
                          "Pembuatan Taman",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        value: 1,
                        groupValue: selectedOption,
                        onChanged: (int? value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),

                      // LIST 3
                      RadioListTile<int>(
                        contentPadding: EdgeInsets.all(0),
                        activeColor: Color.fromARGB(255, 63, 93, 79),
                        title: Text(
                          "Perapihan Taman",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        value: 2,
                        groupValue: selectedOption,
                        onChanged: (int? value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                    ],
                  ),

                  // TITLE
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'Siapa yang akan anda pesan?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  // Dropdown
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 225, 225, 225),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: DropdownButton(
                      alignment: Alignment.center,
                      value: dropdownValue,
                      icon: Icon(CupertinoIcons.chevron_down),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: _items.map((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                    ),
                  ),

                  // DECOR
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 63, 93, 79),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    margin: EdgeInsets.only(top: 30, bottom: 20),

                    // TEXT FIELD
                    child: TextField(
                      maxLines: 5,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        // ICON
                        suffixIcon: Icon(Icons.email),
                        suffixIconColor: Colors.white,

                        // HINT
                        hintText: 'Detail Pemesanan :',
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  // RADIOLIST BAYAR
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 63, 93, 79),
                    ),
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        // BAYAR TITLE
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Pilih Metode Pembayaran :',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        // LIST 1
                        RadioListTile<int>(
                          contentPadding: EdgeInsets.all(0),
                          activeColor: Colors.white,
                          title: Text(
                            "E-Money",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          value: 0,
                          groupValue: selectedOptionBayar,
                          onChanged: (int? value) {
                            setState(() {
                              selectedOptionBayar = value;
                            });
                          },
                          fillColor: MaterialStateProperty.all(
                            Colors.white,
                          ),
                        ),

                        // LIST 2
                        RadioListTile<int>(
                          contentPadding: EdgeInsets.all(0),
                          activeColor: Colors.white,
                          title: Text(
                            "ATM",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          value: 1,
                          groupValue: selectedOptionBayar,
                          onChanged: (int? value) {
                            setState(() {
                              selectedOptionBayar = value;
                            });
                          },
                          fillColor: MaterialStateProperty.all(
                            Colors.white,
                          ),
                        ),

                        // LIST 3
                        RadioListTile<int>(
                          contentPadding: EdgeInsets.all(0),
                          activeColor: Colors.white,
                          title: Text(
                            "Cash",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          value: 2,
                          groupValue: selectedOptionBayar,
                          onChanged: (int? value) {
                            setState(() {
                              selectedOptionBayar = value;
                            });
                          },
                          fillColor: MaterialStateProperty.all(
                            Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // YES BUTTON
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Gnav(),
                      ),
                    ),
                    // DECOR
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      margin: EdgeInsets.only(top: 20, bottom: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 63, 93, 79),
                      ),

                      // TITLE
                      child: Text(
                        'Setuju',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
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
