import 'package:flutter/material.dart';
import 'package:instagram/ProfilePage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top:35.0),
        child: ListView(
          children: <Widget>[
           Column(

          children: <Widget>[
             Text("English (India) v"),
             SizedBox(height:70),
            Text("Instagram",
            style: TextStyle(
              fontSize:50.0,
             // fontWeight: FontWeight.bold,
              fontFamily: 'Lobster',
              color: Colors.black,
             ),
            ),

            SizedBox(height:37.5,),


            Padding(
             padding: EdgeInsets.only(left:30,right:30,bottom: 20),
              child: TextFormField(
                decoration: InputDecoration(
                   contentPadding: const EdgeInsets.symmetric(vertical:14.0),
                  filled: true,
                  hintText: "   Phone number,email address or username",
                   hintStyle: TextStyle(
                    fontSize: 13,
                  ),
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
                ),
              ),
            ),


            Padding(
             padding: EdgeInsets.only(left:30,right:30),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical:14.0),
                  filled: true,
                  hintText: "  Password",
                  hintStyle: TextStyle(
                    fontSize: 13,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
                ),
              ),
            ),


            SizedBox(height:20.0),

            
            MaterialButton(
                height: 42,
                minWidth: 305,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8)),
                onPressed: () {
                  Navigator.push(context
               ,MaterialPageRoute(
                     builder: (context) => ProfilePage()
                  )
                );
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize:14,
                    color: Colors.white,
                  ),
                ),
                color: Color(0xFF405DE6),
              ),


              Padding(
                 padding: EdgeInsets.only(left:27, bottom: 15,top:8),
                child: Container(
                 height:35,
                 width: 340,
                  child: Row(
                    children: <Widget>[

                      Text("Forgotten your login details?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize:11.0,
                      ),
                      ),

                      Text(" Get help with signing in.",
                      style: TextStyle(
                        color: Color(0xFF2f477a),
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text("Log In With Facebook",
                          style:TextStyle(
                            color: Color(0xFF4267B2),
                            fontSize:14,
                            fontWeight: FontWeight.bold,
                          ) ,   
                    ),
              ),

              SizedBox(height:24),

              Text("-----------------OR------------------",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
               ),
              ),

               Padding(
                 padding: EdgeInsets.only(left: 10, bottom: 15,top:8,),
                child: Container(
                 height:35,
                 width: 340,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:55),
                        child: Text("Dont't have an account?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                        ),
                        ),
                      ),

                      InkWell(
                        onTap: () { },
                        child:  Text(" Sign up",
                      style: TextStyle(
                        color: Color(0xFF2f477a),
                        fontSize: 14.0, 
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                      ),
                     
                    ],
                  ),
                ),
              ),

              SizedBox(height:46),

              Text("-----------------------------------",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),

                Text("Instagram from facebook",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                ),

          ],
         ),
          ],
        ),
          
      )
    );
  }
}