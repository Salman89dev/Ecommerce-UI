import 'package:ecommerce/cartDetail.dart';
import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Product Details",style:GoogleFonts.montserrat(),),
        titleTextStyle: TextStyle(fontSize: 20,color: Colors.white,fontWeight:FontWeight.w800 ,letterSpacing: 1),
        backgroundColor: Colors.red[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(product.image,width: 300,),
            ),
                SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(product.name,style:TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold)),
                Text('\$' '${product.price}',style:TextStyle(fontWeight:FontWeight.bold, fontSize:20,color: Colors.red)),
              ],
            ),
            SizedBox(height: 20,),
            Text(product.description,style: TextStyle(fontSize: 16,color: Colors.grey),),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.bottomLeft,
            child: Text("Available Colors",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                  color(Colors.red),
                  color(Colors.yellow),
                  color(Colors.pinkAccent),
                  color(Colors.orange),
              ],
            )
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
        child: Container(
          height: MediaQuery.of(context).size.height/10,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$' '${product.price}',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
              ElevatedButton.icon(
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>CartDetail(product: product,)));
                  //  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => loginscreen()));
                },
                 icon: Icon(Icons.send), label: Text("Add to Cart",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),))
            ],
          ),
        ),
      ),
      );
  }
}


color(color)
{
  return  Container(
                margin: EdgeInsets.only(right: 10),
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: color
                  ),
                );
}