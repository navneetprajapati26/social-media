import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;
class PostTile extends StatelessWidget {
  String img ;
  PostTile({Key? key,required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          child: Text("Navneet Prajapati",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal)),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          child: Text("Photo",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal)),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          //Image.asset('assets/img2.jpeg'),
          Image.network(img),
          Container(
            //height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Column(
              children: [
                Row(
                  children: [
                    CupertinoButton(
                        padding: EdgeInsets.only(
                            left: 10,
                            right: 5,
                            top: 10,
                            bottom: 15),
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
                        onPressed: () async{
                          //todo: share btn
                          final uri =Uri.parse(img);
                          final res = await http.get(uri);
                          final bytes = res.bodyBytes;

                          final tamp = await getTemporaryDirectory();
                          final path = '${tamp.path}/imag.jpg';
                          File(path).writeAsBytesSync(bytes);
                          await Share.shareFiles([path]);
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
                      padding: const EdgeInsets.only(
                          left: 10, right: 5, top: 3, bottom: 25),
                      child: Text(
                        "129 Likes",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
