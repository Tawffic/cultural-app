import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, left: 8),
                child: Row(
             
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white, size: 30,),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30, left: 100, right: 30),
                      child: Text("SIGN UP",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    )
                  ],
                ),
              ),
              Text("Signup with",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white
              ),),
              Container(
                
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black
                      ),
                      child: Icon(Icons.g_mobiledata, color: Colors.white, size: 50,),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black
                      ),
                      child: Icon(Icons.apple, color: Colors.white, size: 40,),
                    ),
                  ],
                )
              ),
              SizedBox(height: 30,),
              Text("User Name",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white
              ),),
              SizedBox(height: 5,),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Abugri",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )      
                  ),
                  
                ),
              ),
               Text("Email",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white
              ),),
              SizedBox(height: 5,),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "examples@gmail.com",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )      
                  ),
                  
                ),
              ),
              SizedBox(height: 20,),
              Text("password",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),),
              SizedBox(height: 5,),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "examples@gmail.com",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )      
                  ),
                  
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.center,
                child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                text: "Accept the",
                style: TextStyle(
                  color: Colors.white,
                ),
                children: <TextSpan>[
                  TextSpan(text: "terms of User",
                  style: TextStyle(
                    color: Colors.pink,
                  ),),
                  TextSpan(text: "and",
                  style: TextStyle(
                    color: Colors.white
                  )),
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(
                      color: Colors.pink
                    )
                  )
                ]
              ),
              ),
              ),
              SizedBox(height: 40,),
              Container(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  minimumSize: Size(300,50)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '');
                },
                child: Text("Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  //fontWeight: FontWeight.bold
                ),),
              ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/third_splash');
                    },
                    child: Text("sign in",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize:  16
                    ),),
                  )
                ],
              )
            ],
          ),
        ),
    )
    );
  }
}