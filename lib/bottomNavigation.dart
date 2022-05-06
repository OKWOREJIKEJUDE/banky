// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:banky/NavItems/account.dart';
import 'package:banky/NavItems/annuities.dart';
import 'package:banky/NavItems/home.dart';
import 'package:banky/NavItems/me.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int mycurrent_index = 0;
  final tabs = [
    Home(),
    Accounts(),
    Annuities(),
    Me(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: tabs[mycurrent_index],
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
              // backgroundColor: Color(0xFFF0B50F),
              currentIndex: mycurrent_index,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: TextStyle(fontSize: 12),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  title: Text("Home"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.kitchen),
                  title: Text("Accounts"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  title: Text("Annuities"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Me"),
                )
              ],
              onTap: (index) {
                setState(() {
                  mycurrent_index = index;
                });
              }),
        ),
      ),
    );
  }
}
