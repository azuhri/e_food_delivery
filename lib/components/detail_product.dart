import 'package:e_food_cort/main.dart';
import 'package:e_food_cort/models/product.dart';
import 'package:e_food_cort/providers/order-provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  bool _liked = false;
  late int _totalLiked = 0;
  
  @override
  void initState() {
    super.initState();
    _totalLiked = widget.product.likes;
  }

  void _incrementOrDecrementCounterLikes(bool isLiked) {
    setState(() {
      if(isLiked) {
        _totalLiked++;
      } else {
        --_totalLiked;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final stateOrder = Provider.of<OrderProvider>(context);
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
            Navigator.pop(context);
          },
        ),
        title: Text(
          "DETAIL MENU : ${widget.product.name}",
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
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Text(
              widget.product.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2D2D2D),
                fontFamily: "Poppins",
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 5),
            child: Text(
              widget.product.price,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xFF009E1A),
                fontFamily: "Poppins",
              ),
            ),
          ),
          Container(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 5),
              child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                widget.product.imagePath,
                fit: BoxFit.cover,
                width: 200,
                height: 250,
              ),
            ),
            )
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 0, top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "❤️ ${_totalLiked} orang suka ${widget.product.name}",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                IconButton(
                  icon: _liked ? Icon(Icons.favorite, size: 30,) : Icon(Icons.favorite_border, size: 30,),
                  color: Colors.red,
                  onPressed: () {
                    setState(() {
                      _liked = !_liked;
                    });
                    _incrementOrDecrementCounterLikes(_liked);
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 0),
            child: Text(
              "Deskripsi Makanan",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2D2D2D),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 25),
            child: Text(
              widget.product.description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 20,
                ),
              ),
              Expanded(
                flex: 15,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius:BorderRadius.circular(5), //atur sudut melengkung
                    // color: Color(0xFFEAEAEF),
                    color: Color(0xFF009E1A),
                  ),
                  height: 45,
                  width: 120,
                  child: TextButton(
                    onPressed: () {
                      stateOrder.createOrder(widget.product);
                      Navigator.push(context,  MaterialPageRoute(builder: (context) => NavbarAppBar()),);
                    },
                    child: Text(
                      'PESAN',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
