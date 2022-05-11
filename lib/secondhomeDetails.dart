// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SecondHomeDetails extends StatefulWidget {
  const SecondHomeDetails({Key? key}) : super(key: key);

  @override
  State<SecondHomeDetails> createState() => _SecondHomeDetailsState();
}

class _SecondHomeDetailsState extends State<SecondHomeDetails>
    with TickerProviderStateMixin {
  bool mon = false;
  bool tue = false;
  bool wed = false;
  bool thur = false;
  bool fri = false;
  bool sat = false;
  bool sun = false;
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 8, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Home",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: TabBar(
                    controller: tabController,
                    isScrollable: true,
                    labelColor: Colors.green,
                    unselectedLabelColor: Colors.blue,
                    indicator: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.purple,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.05),
                          spreadRadius: .5,
                          blurRadius: .5,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    indicatorColor: Colors.yellow,
                    tabs: [
                      Tab(
                        child: Text("Active",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Achieved",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("New",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Later",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Virws",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Liked",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Disliked",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Closed",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                    ]),
              ),
              Container(
                width: double.infinity,
                height: double.maxFinite,
                child: TabBarView(controller: tabController, children: [
                  //Text("active"),
                  Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "All Goals",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Card(
                        elevation: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                // CircleAvatar(
                                //   radius: 25,
                                //   backgroundColor: Colors.white,
                                //   child: Image.asset("assets/bank1.jpg"),
                                // ),
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage("assets/bank1.jpg"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Cash Balance",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            Checkbox(
                                value: mon,
                                onChanged: (newValue) {
                                  setState(() {
                                    mon = newValue!;
                                    tue = false;
                                    wed = false;
                                    thur = false;
                                    fri = false;
                                    sat = false;
                                    sun = false;
                                    if (mon) {
                                    } else {}
                                  });
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Card(
                        elevation: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  backgroundImage:
                                      AssetImage("assets/bank2.jpg"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Cash Equivalents",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            Checkbox(
                                value: tue,
                                onChanged: (newValue) {
                                  setState(() {
                                    tue = newValue!;
                                    mon = false;
                                    wed = false;
                                    thur = false;
                                    fri = false;
                                    sat = false;
                                    sun = false;
                                    if (wed) {
                                    } else {}
                                  });
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Card(
                        elevation: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  backgroundImage:
                                      AssetImage("assets/bank4.jpg"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Certificate of Deposit",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            Checkbox(
                                value: wed,
                                onChanged: (newValue) {
                                  setState(() {
                                    wed = newValue!;
                                    mon = false;
                                    tue = false;
                                    thur = false;
                                    fri = false;
                                    sat = false;
                                    sun = false;
                                    if (wed) {
                                    } else {}
                                  });
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Card(
                        elevation: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  backgroundImage:
                                      AssetImage("assets/bank3.jpg"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Shares",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            Checkbox(
                                value: thur,
                                onChanged: (newValue) {
                                  setState(() {
                                    thur = newValue!;
                                    mon = false;
                                    wed = false;
                                    tue = false;
                                    fri = false;
                                    sat = false;
                                    sun = false;
                                    if (thur) {
                                    } else {}
                                  });
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Card(
                        elevation: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  backgroundImage:
                                      AssetImage("assets/bank2.jpg"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "ATM",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            Checkbox(
                                value: fri,
                                onChanged: (newValue) {
                                  setState(() {
                                    fri = newValue!;
                                    mon = false;
                                    wed = false;
                                    thur = false;
                                    tue = false;
                                    sat = false;
                                    sun = false;
                                    if (fri) {
                                    } else {}
                                  });
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Container(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/frame1.png"),
                      SizedBox(
                        height: 40,
                      ),
                      Text("achieved"),
                      SizedBox(
                        height: 50,
                      ),
                      Image.asset("assets/master1.png"),
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/master1.png"),
                      SizedBox(
                        height: 40,
                      ),
                      Text("achieved"),
                      SizedBox(
                        height: 50,
                      ),
                      Image.asset("assets/frame1.png")
                    ],
                  )),
                  Text("New"),
                  Text("Later"),
                  Text("Views"),
                  Text("Liked"),
                  Text("Disliked"),
                  Text("Closed"),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
