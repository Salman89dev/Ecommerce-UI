import 'package:ecommerce/models/details_screen.dart';
import 'package:ecommerce/models/my_product.dart';
import 'package:ecommerce/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected=0;
  @override
  Widget build(BuildContext context) {
    return 
       Padding(
         padding: const EdgeInsets.all(20.0),
         child: Column(
          children: [

                     Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/CoverImage.png"),
                fit: BoxFit.cover
                )
            ),
            child: Text("Fashion Sale",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white), ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("All Categories",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.black)),
              ],
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text("data"),
                  _buildProductCategory(index: 0, name: "All Product"),
                  _buildProductCategory(index: 1, name: "Jackets"),
                  _buildProductCategory(index: 2, name: "Sneakers"),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: isSelected==0
              ? _buildAllProducts()
              : isSelected==1 
                 ? _buildAllJackets()
                 : _buildAllSneaker(),
              ),
             ],
             ),
       );

  }


  
_buildProductCategory({required int index, required String name}) =>
  GestureDetector(
    onTap: () => setState(() =>isSelected=index ),
    child: Container(
      width: 100,
      height: 40,
      margin: EdgeInsets.only(top: 10,right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected==index ?Colors.red: Colors.red.shade300,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Text(name,style: TextStyle(color: Colors.white),),
    ),
  );


_buildAllProducts()=> GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: (100/140),
    crossAxisSpacing: 12,
    mainAxisSpacing: 12,
    ),
    scrollDirection: Axis.vertical,
    itemCount: MyProducts.allProducts.length,
    itemBuilder: (context, index){
      final allProducts=MyProducts.allProducts[index];
      return GestureDetector(
        onTap: ()=> Navigator.push(
          context,
           MaterialPageRoute(
            builder: (context)=>DetailScreen(product: allProducts,),
            )
            ),
        child: ProductCard(product: allProducts))
        ;
    },
 );

_buildAllJackets()=> GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: (100/140),
    crossAxisSpacing: 12,
    mainAxisSpacing: 12,
    ),
    scrollDirection: Axis.vertical,
    itemCount: MyProducts.jacketsList.length,
    itemBuilder: (context, index){
      final jacketsList=MyProducts.jacketsList[index];
      return GestureDetector(
        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(product: jacketsList))),
        child: ProductCard(product: jacketsList));
    },
 );

_buildAllSneaker()=> GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: (100/140),
    crossAxisSpacing: 12,
    mainAxisSpacing: 12,
    ),
    scrollDirection: Axis.vertical,
    itemCount: MyProducts.sneakersList.length,
    itemBuilder: (context, index){
      final sneakersList=MyProducts.sneakersList[index];
      return GestureDetector(
        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(product: sneakersList))),
        child: ProductCard(product: sneakersList));
    },
 );


}