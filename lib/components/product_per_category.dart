
import 'package:e_food_cort/backup-main.dart';
import 'package:e_food_cort/components/detail_product.dart';
import 'package:e_food_cort/main.dart';
import 'package:e_food_cort/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_food_cort/components/bottom_navbar.dart';

class ProductPerCategory extends StatefulWidget {
  const ProductPerCategory({
    Key? key,
    required this.productType,
  }) : super(key: key);
  final String productType;
  @override
  _ProductPerCategoryState createState() => _ProductPerCategoryState();
}

class _ProductPerCategoryState extends State<ProductPerCategory> {
  late String productType;
  List<Product> productFilterType = [];
  dynamic selectedMenu(String typeMenu) {
    if(productType == typeMenu) {
        return Color(0xFFb9e0b8);
    } else {
        return Color(0xFFEAEAEF);
    }
  }

  @override
  void initState() {
    super.initState();
    productType = widget.productType;
    productFilterType = dataProduct.where((product) => product.type == productType).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF2D2D2D),
          ),
          onPressed: () {
            Navigator.push(context,  MaterialPageRoute(builder: (context) => NavbarAppBar()),);
          },
        ),
        title: Text(
          "KATEGORI MENU : ${widget.productType}",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 15,
            color: Color(0xFF2D2D2D),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Text(
              "Daftar Kategori Menu",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  color: Color(0xFF2D2D2D),
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            child: Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductPerCategory(productType: 'ROTI')),
                                );
                              },
                              child: Container(
                                
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(
                                    10), //atur sudut melengkung
                                color: selectedMenu('ROTI'),
                              ),
                              margin:
                                  EdgeInsets.only(top: 10, left: 8, right: 8),
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Image.asset(
                                      "assets/images/menu_1.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                  Text(
                                    "Roti",
                                    style: TextStyle(
                                      fontSize: 8.0,
                                      color: Color(0xFF2D2D2D),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            )
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductPerCategory(productType: 'KOPI')),
                                );
                              },
                              child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(
                                    10), //atur sudut melengkung
                                color: selectedMenu('KOPI'),
                              ),
                              margin:
                                  EdgeInsets.only(top: 10, left: 8, right: 8),
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Image.asset(
                                      "assets/images/menu_2.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                  Text(
                                    "Kopi",
                                    style: TextStyle(
                                      fontSize: 8.0,
                                      color: Color(0xFF2D2D2D),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            )
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductPerCategory(productType: 'MINUMAN')),
                                );
                              },
                              child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(
                                    10), //atur sudut melengkung
                                color: selectedMenu('MINUMAN'),
                              ),
                              margin:
                                  EdgeInsets.only(top: 10, left: 8, right: 8),
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Image.asset(
                                      "assets/images/menu_3.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                  Text(
                                    "Minuman",
                                    style: TextStyle(
                                      fontSize: 7.0,
                                      color: Color(0xFF2D2D2D),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            )
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductPerCategory(productType: 'BURGER')),
                                );
                              },
                              child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(
                                    10), //atur sudut melengkung
                                color: selectedMenu('BURGER'),
                              ),
                              margin:
                                  EdgeInsets.only(top: 10, left: 8, right: 8),
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Image.asset(
                                      "assets/images/menu_4.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                  Text(
                                    "Burger",
                                    style: TextStyle(
                                      fontSize: 8.0,
                                      color: Color(0xFF2D2D2D),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            )
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductPerCategory(productType: 'ESKRIM')),
                                );
                              },
                              child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(
                                    10), //atur sudut melengkung
                                color: selectedMenu('ESKRIM'),
                              ),
                              margin:
                                  EdgeInsets.only(top: 10, left: 8, right: 8),
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Image.asset(
                                      "assets/images/menu_5.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                  Text(
                                    "Eskrim",
                                    style: TextStyle(
                                      fontSize: 8.0,
                                      color: Color(0xFF2D2D2D),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            )
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductPerCategory(productType: 'PIZZA')),
                                );
                              },
                              child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(
                                    10), //atur sudut melengkung
                                color: selectedMenu('PIZZA'),
                              ),
                              margin:
                                  EdgeInsets.only(top: 10, left: 8, right: 8),
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Image.asset(
                                      "assets/images/menu_6.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                  Text(
                                    "Pizza",
                                    style: TextStyle(
                                      fontSize: 8.0,
                                      color: Color(0xFF2D2D2D),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            )
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductPerCategory(productType: 'NASI')),
                                );
                              },
                              child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(
                                    10), //atur sudut melengkung
                                color: selectedMenu('NASI'),
                              ),
                              margin:
                                  EdgeInsets.only(top: 10, left: 8, right: 8),
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Image.asset(
                                      "assets/images/menu_7.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                  Text(
                                    "Nasi",
                                    style: TextStyle(
                                      fontSize: 8.0,
                                      color: Color(0xFF2D2D2D),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            )
                          ),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProductPerCategory(productType: 'SEAFOOD')),
                                );
                              },
                              child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(
                                    10), //atur sudut melengkung
                                color: selectedMenu('SEAFOOD'),
                              ),
                              margin:
                                  EdgeInsets.only(top: 10, left: 8, right: 8),
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Image.asset(
                                      "assets/images/menu_8.png",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                  Text(
                                    "Seafood",
                                    style: TextStyle(
                                      fontSize: 8.0,
                                      color: Color(0xFF2D2D2D),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            )
                          ),
                        ],
                      ),
                     ],
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 10,left: 18, right: 18),
              child: Column(
              children: [
                  Text(
                    "Daftar Menu Tersedia",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        color: Color(0xFF2D2D2D),
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      padding: EdgeInsets.only(top: 0, bottom: 20),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: productFilterType.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          final product = productFilterType[index];
                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              elevation: 10,
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        child: Image.asset(
                                          product.imagePath,
                                          fit: BoxFit.cover,
                                          width: 500,
                                          height: 500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        product.name,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Poppins",
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 0, bottom: 5),
                                        child: Text(
                                          "${product.price}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Poppins",
                                            fontSize: 10,
                                            color: Color(0xFF009E1A),
                                          ),
                                      ), 
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        borderRadius:BorderRadius.circular(5), //atur sudut melengkung
                                        // color: Color(0xFFEAEAEF),
                                        color: Color(0xFF009E1A),
                                      ),
                                      height: 35,
                                      width: 120,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (builder) => DetailProduct(product: product))
                                          );
                                        },
                                        child: Text(
                                          'Detail',
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ),
                            );
                        },
                      ),
                    ),
                  )
              ],
            )
          )
        ],
      ),
    );
  }
}