import 'package:e_food_cort/components/detail_product.dart';
import 'package:flutter/material.dart';
import 'package:e_food_cort/models/product.dart';



class ListProduct extends StatelessWidget {
  @override
Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 0, bottom: 20),
    child: GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: dataProduct.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (BuildContext context, int index) {
        final product = dataProduct[index];
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
  );
}
}