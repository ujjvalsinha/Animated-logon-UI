import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
    
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 18.0).animate(controller)
    
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              child: Carousel(
            boxFit: BoxFit.cover,
            images: [
              AssetImage('images/Loginimg1.jpeg'),
              AssetImage('images/Loginimg7.jpeg'),
              AssetImage('images/Loginimg2.jpeg'),
              AssetImage('images/Loginimg3.jpeg'),
              AssetImage('images/Loginimg4.jpeg'),
              AssetImage('images/Loginimg5.jpeg'),
              AssetImage('images/Loginimg6.jpeg'),
            ],
            
          overlayShadow: true,
            overlayShadowColors: Colors.white,
            overlayShadowSize: 0.0,
            showIndicator: false,
            animationCurve: Curves.bounceOut,
            animationDuration: Duration(seconds: 3),
            
          )),
          Container(
            margin: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "Welcome Back!",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Container(
                  child: Text(
                    "We give wings to the Student",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.05,),
                Container(
                  child: TextField(
                    style: new TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "User Name",
                        hintStyle:
                            TextStyle(fontSize: 14, color: Color(0xFFB8B8B8)),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color(0xFFB8B8B8),
                        )),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.04),
                Container(
                  child: TextField(
                    style: new TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "Password",
                        hintStyle:
                            TextStyle(fontSize: 14, color: Color(0xFFB8B8B8)),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xFFB8B8B8),
                        )),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.07),
                Center(
                  child: Container(
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.height*.2,
                      height: MediaQuery.of(context).size.height*.06,
                      color: Color(0xFF3498DB),
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      onPressed: () {
                        
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
