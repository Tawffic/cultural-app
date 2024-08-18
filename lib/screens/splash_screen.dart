

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/splashBack.png"),
          fit: BoxFit.cover)
        ),
        child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/splashScreen.jpeg"),
              radius: 100,
            )
          ),
          SizedBox(height: 20,),
          Container(
            child: Text("Culture App",
            style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
          ),
          SizedBox(height: 70,),
          Container(
            
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context,'/second_splash');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30),
                
              ),
              child: Text("Get Started",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
          )

        ],
      ),
      )
    );
  }
}