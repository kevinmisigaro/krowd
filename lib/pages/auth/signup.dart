import 'package:flutter/material.dart';

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Krowd', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),),
            SizedBox(height: 40,),
            Text('To get the best experience sign into your account or create a new one', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
            SizedBox(height: 50,),

            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                ),
              onPressed: (){}, 
              icon: Icon(Icons.ac_unit_sharp, color: Colors.black,), label: Text('Sign in with Google', style: TextStyle(color: Colors.black),)
              ),

              SizedBox(height: 20,),

              ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                ),
              onPressed: (){}, 
              icon: Icon(Icons.ac_unit_sharp, color: Colors.black,), label: Text('Sign in with Apple', style: TextStyle(color: Colors.black),)
              ),

              SizedBox(height: 50,),

              Text('Already have an account?', style: TextStyle(color: Colors.white),),

              TextButton(onPressed: (){}, child: Text('Login', style: TextStyle(color: Colors.white),))

        ],),
      ),
    );
  }
}