import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class CartDetail extends StatelessWidget {
  final Product product;
  const CartDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CArt",style:GoogleFonts.montserrat(),),
        titleTextStyle: const TextStyle(fontSize: 20,color: Colors.white,fontWeight:FontWeight.w800 ,letterSpacing: 1),
        backgroundColor: Colors.red[600],
      ),
      body: 
      Container(
        child: Row(
          children: [
            ListTile(
              title: Text(product.name),
              subtitle: Text(product.category),
              leading: CircleAvatar(
                backgroundImage: AssetImage(product.image),
              ),
            )
          ],
        ),
      ),
    );
  }
}