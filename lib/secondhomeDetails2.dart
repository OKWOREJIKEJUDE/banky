// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SecondHomeDetails extends StatefulWidget {
  const SecondHomeDetails({Key? key}) : super(key: key);

  @override
  State<SecondHomeDetails> createState() => _SecondHomeDetailsState();
}

class _SecondHomeDetailsState extends State<SecondHomeDetails>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 8, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
          child: Column(
            children: [
              Text(
                "Home",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
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
                      Container(
                        child: Tab(
                          child: Center(
                            child: Text("Active",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                        ),
                      ),
                      Tab(
                        child: Center(
                            child: Text("Achieved",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))),
                      ),
                      Tab(
                        child: Center(
                          child: Text("Active",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                      ),
                      Tab(
                        child: Center(
                            child: Text("Achieved",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))),
                      ),
                      Tab(
                        child: Center(
                          child: Text("Active",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                      ),
                      Tab(
                        child: Center(
                            child: Text("Achieved",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))),
                      ),
                      Tab(
                        child: Center(
                          child: Text("Active",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                      ),
                      Tab(
                        child: Center(
                            child: Text("Achieved",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))),
                      ),
                    ]),
              ),
              Container(
                width: double.infinity,
                height: double.maxFinite,
                child: TabBarView(controller: tabController, children: [
                  Text("active"),
                  Text("achieved"),
                  Text("active"),
                  Text("achieved"),
                  Text("active"),
                  Text("achieved"),
                  Text("active"),
                  Text("achieved")
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Text("kdghkjgkdgj"),
            ],
          ),
        ),
      ),
    );
  }
}
