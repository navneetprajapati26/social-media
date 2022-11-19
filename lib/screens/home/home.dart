
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:social_media/util/post.dart';
import 'dart:io';

import '../../util/bottem_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final img1 = 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80';
    final img2 = 'https://images.unsplash.com/photo-1599165939170-a236bc35c9ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60';
    final img3 ='https://images.unsplash.com/photo-1639404694992-94e5d514b307?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXxwNG80aXhIRVQ4MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=1000&q=60';
    final img4 ='https://images.unsplash.com/photo-1517922759988-50141b72eb61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTR8cDRvNGl4SEVUODB8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=60';
    final img5 ='https://images.unsplash.com/photo-1513008961022-5d1d8a89c300?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bGlicm98ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60';
    final img6 ='https://images.unsplash.com/photo-1613993995046-07bce4b0bfed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bGlicm98ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60';
    final img7 ='https://images.unsplash.com/flagged/photo-1578916171119-1ff73a8bbe6c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGxpYnJvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60';
    final img8 ='https://images.unsplash.com/photo-1575387392362-7fe1cf705587?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NHxwNG80aXhIRVQ4MHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=1000&q=60';

    List<String> imgs = [img1,img2,img3,img4,img5,img6,img7,img8];

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white10,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              title: Text(
                'Glassmorphism Appbar',
                style: TextStyle(color: Colors.orangeAccent,fontWeight: FontWeight.bold,),
              ),
              elevation: 0.0,
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
              itemCount: 8,
              itemBuilder: (context, index) {
                return PostTile(img: imgs[index],) ;
              })),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottemNavBar(
          home_BTN: () {},
          likes_BTN: () {},
          serch_BTN: () {},
          profile_BTN: () {},
        ),
      ),
    );
  }
}
