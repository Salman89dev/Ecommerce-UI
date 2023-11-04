import 'dart:html';

import 'package:ecommerce/dashboard.dart';
import 'package:ecommerce/forget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Login",style:GoogleFonts.montserrat(),),
        titleTextStyle: TextStyle(fontSize: 20,color: Colors.white,fontWeight:FontWeight.w800 ,letterSpacing: 1),
        backgroundColor: Colors.red[600],
        // centerTitle: true,
      ),
      backgroundColor:  Color.fromARGB(255, 250, 250, 250),
      body: Container(
        padding: EdgeInsets.only(top: 0,left: 30,right: 30,bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logoo.png",width: 200,),
            SizedBox(height: 30,),
            
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 120,vertical: 22),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 0, 182, 182))),
                border: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Color.fromARGB(255, 0, 112, 139)),borderRadius: BorderRadius.circular(8)),
                hintText: "Email",
                labelText: "Email",
                prefixIcon:
                Icon(Icons.email_outlined,color: Color.fromARGB(255, 0, 80, 112),size: 20,)
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
            ),
            SizedBox(height: 30,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 120,vertical: 22),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 0, 182, 182))),
                border: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Color.fromARGB(255, 0, 112, 139)),borderRadius: BorderRadius.circular(8)),
                hintText: "Password",
                labelText: "Password",
                prefixIcon:
                Icon(Icons.lock_outline_rounded,color: Color.fromARGB(255, 0, 80, 112),size: 20,)
              ),
              textInputAction: TextInputAction.done,
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: TextButton.icon(
                
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => forget()));
                } ,
                label: Text("Forgot your password?",style: TextStyle(fontSize: 16,color: Colors.black),), icon: Icon(Icons.arrow_forward,color: Colors.red,) ),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  backgroundColor: const Color.fromARGB(255, 216, 27, 14),
                  // elevation: 20,
                  padding: EdgeInsets.symmetric(vertical: 25),
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w100, 
                  )
                  
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>dashboard()));
                }, 
              child: Text("LOGIN")),
            ),
            SizedBox(height: 40,),
              Column(
                children: [
                  Text("Or sign up with social account",style: TextStyle(color: Colors.black,fontSize: 18),),
                  SizedBox(height: 20,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/Google.png"),
                  Image.asset("images/Facebook.png"),
                ],
              )


       



          ],
        ),
      ),
    );
  }
}