// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:banky/bottomNavigation.dart';
import 'package:flutter/material.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/bank2.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 70,
              right: 30,
              left: 30,
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Do you want to manage your money more ',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                    text: 'efficiently ?',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    child: Positioned(
                        child: FlatButton(
                      //height: 50,
                      onPressed: () {},
                      child: Text("Sign In",
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                      color: Colors.green,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    child: Positioned(
                        child: FlatButton(
                      //height: 50,

                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNav()));
                      },
                      child: Text("Sign Up",
                          style: TextStyle(fontSize: 15, color: Colors.blue)),
                      color: Colors.white,
                      textColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
