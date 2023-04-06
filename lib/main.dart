import 'package:e_food_cort/components/bottom_navbar.dart';
import 'package:e_food_cort/components/list_product_paralax.dart';
import 'package:e_food_cort/components/list_products.dart';
import 'package:e_food_cort/components/product_per_category.dart';
import 'package:e_food_cort/components/splash_screen.dart';
import 'package:e_food_cort/models/product.dart';
import 'package:e_food_cort/providers/order-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
          ChangeNotifierProvider(create: (_) => OrderProvider()),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
    );
  }
}

class NavbarAppBar extends StatefulWidget {
  @override
  _NavbarAppBarState createState() => _NavbarAppBarState();
}

class _NavbarAppBarState extends State<NavbarAppBar>{
  late BuildContext _context;
  int _selectedNavbar = 0;

  List<Widget> _widgetOptions = [];

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      ListViewMainScreen(),
      ListProductParallax(),
    ];
  }

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final order =  Provider.of<OrderProvider>(context);
    _context = context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_bag_rounded,
              color: Color(0xFF009E1A),
            ),
            onPressed: () {
              // aksi yang dijalankan saat ikon di-tap
            },
          ),
        ],
        elevation: 0,
        centerTitle: true,
        title: Text('E-WARTEG',
            style: TextStyle(
              color: Color(0xFF009E1A),
              fontSize: 20.0,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 18,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
              size: 18,
            ),
            label: 'Pesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 18,
            ),
            label: 'Wishlist',
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
      body: _widgetOptions.elementAt(_selectedNavbar),
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}

class ListViewMainScreen extends StatefulWidget {
  @override
  _ListViewMainScreen createState() => _ListViewMainScreen();
}

class _ListViewMainScreen extends State<ListViewMainScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20, right: 20, left: 20),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10), //atur sudut melengkung
              color: Color(0xFF096B12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          "Ayo pesen makanan disini, untuk dapatkan promo menarik",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
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
                    )),
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
                                color: Color(0xFFEAEAEF),
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
                                color: Color(0xFFEAEAEF),
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
                                color: Color(0xFFEAEAEF),
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
                                color: Color(0xFFEAEAEF),
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
                                color: Color(0xFFEAEAEF),
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
                                color: Color(0xFFEAEAEF),
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
                                color: Color(0xFFEAEAEF),
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
                                color: Color(0xFFEAEAEF),
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
                    "Rekomendasi Menu",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        color: Color(0xFF2D2D2D),
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: ListProduct(),
                  )
              ],
            )
          )
        ],
      );
  }
}
