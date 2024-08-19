import 'package:flutter/material.dart';

class SecondSplash extends StatelessWidget {
  const SecondSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //margin: EdgeInsets.all(30),
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 70),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/secondscreen.jpeg"),
                radius: 150,
              )
            ),
            SizedBox(height:250,),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  minimumSize: Size(300,50)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/third_splash');
                },
                child: Text("Log in",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
            SizedBox(height: 20,),
             Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:  const Color.fromARGB(255, 17, 1, 44),
                  minimumSize: Size(300, 50)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/sign_up');
                },
                child: Text("SIGN UP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
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