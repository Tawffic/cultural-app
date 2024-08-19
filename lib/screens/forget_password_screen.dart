import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
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
                      margin: EdgeInsets.only(top: 30, bottom: 30, left: 70, right: 30),
                      child: Text("Forgot Password",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    )
                  ],
                ),
              ),
              
              SizedBox(height: 30,),
              Text("New Password",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white
              ),),
              SizedBox(height: 5,),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter new password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )      
                  ),
                  
                ),
              ),
              SizedBox(height: 20,),
              Text("Confirm Password",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),),
              SizedBox(height: 5,),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )      
                  ),
                  
                ),
              ),
              SizedBox(height: 250,),
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
                child: Text("Save",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  //fontWeight: FontWeight.bold
                ),),
              ),
              ),
              
            ],
          ),
        ),
    ),
    );
  }
}