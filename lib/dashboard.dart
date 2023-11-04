// import 'package:ecommerce/home.dart';
import 'package:ecommerce/CartDetail.dart';
import 'package:ecommerce/home.dart';
import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 0;

  List _pages = [
   
       HomeScreen(),
    Center(
      child: Text("Cart"),
    ),
    Center(
      child: Text("Favourite"),
    ),
    Center(
      child: Text("Profile"),
    ),
    Center(
      child: Text("Settings"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>const CartDetail()));
          }, icon: Icon(Icons.add_shopping_cart,color: Colors.white,))
        ],
        title: Text("Dashboard",style:GoogleFonts.montserrat(),),
        titleTextStyle: const TextStyle(fontSize: 20,color: Colors.white,fontWeight:FontWeight.w800 ,letterSpacing: 1),
        backgroundColor: Colors.red[600],
        
      ),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favourite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}