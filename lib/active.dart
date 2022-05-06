// ignore_for_file: prefer_const_constructors

import 'package:banky/model/datas.dart';
import 'package:flutter/material.dart';

class Active extends StatelessWidget {
  const Active({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "All Goals",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
                itemCount: listData.length,
                itemBuilder: (context, index) {
                  MyDatas myDatas = listData[index];
                  return Card(
                    elevation: 2,
                    child: Container(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    myDatas.imageURL,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  myDatas.myTitle,
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Checkbox(
                              value: true,
                              onChanged: (val) {
                                print(val);
                              })
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
