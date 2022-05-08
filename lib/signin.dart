// ignore_for_file: prefer_const_constructors

import 'package:banky/bottomNavigation.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailTEC = TextEditingController();
  TextEditingController passwordTEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: emailTEC,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Email"),
              ),
              SizedBox(
                height: 35,
              ),
              TextField(
                controller: passwordTEC,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Password"),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 50,
                width: double.infinity,
                child: FlatButton(
                  child: Text("Sign In"),
                  onPressed: () {
                    {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BottomNav(),
                        ),
                      );
                    }
                  },
                  color: Colors.deepPurpleAccent.withOpacity(0.5),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Or Sign In With",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Color(0xffc4c4c4).withOpacity(0.7),
                      child: Image.asset("assets/google_pix.png"),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffc4c4c4).withOpacity(0.7),
                      child: Image.asset("assets/facebook_pix.png"),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffc4c4c4).withOpacity(0.7),
                      child: Image.asset("assets/linkedin_pix.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child: Text(
                    "By clicking on the Login Button, you agree to our terms and conditions and "
                    "Privacy Policy",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
