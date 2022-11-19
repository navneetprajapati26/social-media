import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              title: Text('Glassmorphism Appbar',style: TextStyle(color: Colors.orangeAccent),),
              //elevation: 0.0,
              backgroundColor: Colors.black.withOpacity(0.2),
            ),
          ),
        ),
        preferredSize: Size(
          double.infinity,
          56.0,
        ),
      ),


      body: Container(
          height: height,
          width: width,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30))),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),

                            //todo: Usre img
                            ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Image.asset(
                                  height: 45,
                                  width: 45,
                                  fit: BoxFit.cover,
                                  'assets/user.jpg'),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text("Ujala Prajapati",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                      Image.asset('assets/img2.jpeg'),
                      Container(
                        //height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30))),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CupertinoButton(
                                    padding: EdgeInsets.only(
                                        left: 10, right: 5, top: 10, bottom: 15),
                                    onPressed: () {
                                      //todo: favorite btn
                                    },
                                    child: Icon(
                                      Icons.favorite,
                                      size: 30,
                                      color: Colors.orangeAccent,
                                    )),
                                CupertinoButton(
                                    padding: EdgeInsets.only(
                                        left: 5, right: 5, top: 10, bottom: 15),
                                    onPressed: () {
                                      //todo: share btn
                                    },
                                    child: Icon(
                                      Icons.share_rounded,
                                      size: 30,
                                      color: Colors.orangeAccent,
                                    )),
                                CupertinoButton(
                                    padding: EdgeInsets.only(
                                        left: 5, right: 5, top: 10, bottom: 15),
                                    onPressed: () {
                                      //todo: comment btn
                                    },
                                    child: Icon(
                                      Icons.comment,
                                      size: 30,
                                      color: Colors.orangeAccent,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 5, top: 3, bottom: 25),
                                  child: Text("129 Likes",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              })),
    );
  }
}
