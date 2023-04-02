import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
           actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Color(0xFF009E1A),
              ),
              onPressed: () {
                // aksi yang dijalankan saat ikon di-tap
              },
            ),
          ],
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Pesenin Apps',
            style: TextStyle(
              color: Color(0xFF2D2D2D),
              fontSize: 17.0,
              fontFamily: "Poppins",
            )),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, right: 20, left: 20),
              padding: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10), //atur sudut melengkung
                color: Color(0xFF5AABFF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250.0,
                    child: Column(
                      children: [
                        Text(
                          "Ayo pesen makanan disini, untuk dapatkan promo menarik",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.0,
                    child: Column(
                      children: [
                          SizedBox(
                            child: Image.asset("assets/images/avatar.png"),
                            height: 100.0,
                            width: 100.0,
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "Daftar Kategori Menu",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10), //atur sudut melengkung
                          color: Color(0xFFEAEAEF),
                        ),
                        margin: EdgeInsets.only(top: 10, left: 8, right: 8),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/menu_1.png"),
                              height: 30.0,
                              width: 50.0,
                            ),
                            Text(
                              "Roti",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xFF2D2D2D),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10), //atur sudut melengkung
                          color: Color(0xFFEAEAEF),
                        ),
                        margin: EdgeInsets.only(top: 10, left: 8, right: 8),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/menu_2.png"),
                              height: 30.0,
                              width: 50.0,
                            ),
                            Text(
                              "Kopi",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xFF2D2D2D),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10), //atur sudut melengkung
                          color: Color(0xFFEAEAEF),
                        ),
                        margin: EdgeInsets.only(top: 10, left: 8, right: 8),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/menu_3.png"),
                              height: 30.0,
                              width: 50.0,
                            ),
                            Text(
                              "Minuman",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xFF2D2D2D),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                       decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10), //atur sudut melengkung
                          color: Color(0xFFEAEAEF),
                        ),
                        margin: EdgeInsets.only(top: 10, left: 8, right: 8),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/menu_4.png"),
                              height: 30.0,
                              width: 50.0,
                            ),
                            Text(
                              "Junk Food",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xFF2D2D2D),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10), //atur sudut melengkung
                          color: Color(0xFFEAEAEF),
                        ),
                        margin: EdgeInsets.only(top: 10, left: 8, right: 8),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/menu_5.png"),
                              height: 30.0,
                              width: 50.0,
                            ),
                            Text(
                              "Eskrim",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xFF2D2D2D),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10), //atur sudut melengkung
                          color: Color(0xFFEAEAEF),
                        ),
                        margin: EdgeInsets.only(top: 10, left: 8, right: 8),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/menu_6.png"),
                              height: 30.0,
                              width: 50.0,
                            ),
                            Text(
                              "Pizza",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xFF2D2D2D),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10), //atur sudut melengkung
                          color: Color(0xFFEAEAEF),
                        ),
                        margin: EdgeInsets.only(top: 10, left: 8, right: 8),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/menu_7.png"),
                              height: 30.0,
                              width: 50.0,
                            ),
                            Text(
                              "Nasi",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xFF2D2D2D),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                       decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10), //atur sudut melengkung
                          color: Color(0xFFEAEAEF),
                        ),
                        margin: EdgeInsets.only(top: 10, left: 8, right: 8),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/menu_8.png"),
                              height: 30.0,
                              width: 50.0,
                            ),
                            Text(
                              "Seafood",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xFF2D2D2D),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}