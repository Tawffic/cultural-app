
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                      child: Text("Login",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    )
                  ],
                ),
              ),
              Text("Login with",
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
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/forgot_pass');
                },
                child: Text("Forgot Password",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16
                ),),
              ),
              SizedBox(height: 70,),
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
                child: Text("Log in",
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
                  Text("Don't have an account?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/sign_up');
                    },
                    child: Text("sign up",
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