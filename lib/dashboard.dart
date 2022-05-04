// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:banky/content_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  static List<String> images = [
    'assets/redVisaCard.png',
    'assets/redVerveCard.png',
    'assets/blueVisaCard0.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple.withOpacity(0.4),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            "assets/bank1.jpg",
                          ),
                        ),
                        Text("fudget",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.settings,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 160),
                    child: Container(
                      height: 210,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Swiper(
                          itemCount: images.length,
                          itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                          layout: SwiperLayout.STACK,
                          pagination: SwiperPagination(
                            builder: DotSwiperPaginationBuilder(
                                activeSize: 15, space: 2, color: Colors.black),
                          ),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              child: Stack(
                                children: <Widget>[
                                  Image.asset(images[index]), //todo run it now
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "My Goals",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "View All",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                height: 120,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: contentsItems.length,
                    itemBuilder: (context, index) {
                      ContItems contItems = contentsItems[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 10,
                        ),
                        child: Card(
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 30, left: 20, top: 20, bottom: 5),
                            child: Container(
                              width: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        contItems.title,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        contItems.percent,
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    height: 5,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    contItems.date,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Daily Budget",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Card(
                        elevation: 2,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                "Bank with us",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              trailing: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage("assets/bank1.jpg"),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        )),
                    Card(
                        elevation: 2,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                "Finance Issues",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              trailing: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage("assets/bank3.jpg"),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        )),
                    Card(
                        elevation: 2,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                "Recharge Issues",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              trailing: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage("assets/bank2.jpg"),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
