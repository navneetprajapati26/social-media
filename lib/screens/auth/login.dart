import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media/screens/auth/sing_up.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: height / 3,
              color: Colors.orange,
            ),
            Container(
              height: 2 * height / 3,
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //phone
                  TextField(
                    decoration: InputDecoration(
                      icon: new Icon(Icons.phone),
                      labelText: "Phone",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //password
                  TextField(
                    decoration: InputDecoration(
                      icon: new Icon(Icons.password),
                      labelText: "Password",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CupertinoButton(
                          onPressed: () {
                            //todo:Forgot btn
                          },
                          padding: EdgeInsets.only(
                            top: 4,
                          ),
                          child: Text(
                            "Forgot?",
                            style: TextStyle(fontSize: 15),
                          )),
                    ],
                  ),
                  CupertinoButton(
                    onPressed: () {
                      //todo: login btn
                      Get.to(()=>SingUpScreen());
                    },
                    padding: EdgeInsets.zero,
                    child: Container(
                      width: width - 10,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(15)),
                      alignment: Alignment.center,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Or, login with...",
                      style: TextStyle(color: Color(0xEC3B3A3A)),
                    ),
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     CupertinoButton(
                  //       onPressed: () {},
                  //       padding: EdgeInsets.zero,
                  //       child: Container(
                  //         width: 100,
                  //         height: 60,
                  //         decoration: BoxDecoration(
                  //             //color: Colors.orangeAccent,
                  //             border: Border.all(
                  //               width: 3,
                  //               color: Colors.orangeAccent,
                  //             ),
                  //             borderRadius: BorderRadius.circular(15)),
                  //         alignment: Alignment.center,
                  //         child: Icon(Icons.g_translate),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     CupertinoButton(
                  //       onPressed: () {},
                  //       padding: EdgeInsets.zero,
                  //       child: Container(
                  //         width: 100,
                  //         height: 60,
                  //         decoration: BoxDecoration(
                  //             //color: Colors.orangeAccent,
                  //             border: Border.all(
                  //               width: 3,
                  //               color: Colors.orangeAccent,
                  //             ),
                  //             borderRadius: BorderRadius.circular(15)),
                  //         alignment: Alignment.center,
                  //         child: Icon(Icons.g_translate),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     CupertinoButton(
                  //       onPressed: () {},
                  //       padding: EdgeInsets.zero,
                  //       child: Container(
                  //         width: 100,
                  //         height: 60,
                  //         decoration: BoxDecoration(
                  //             //color: Colors.orangeAccent,
                  //             border: Border.all(
                  //               width: 3,
                  //               color: Colors.orangeAccent,
                  //             ),
                  //             borderRadius: BorderRadius.circular(15)),
                  //         alignment: Alignment.center,
                  //         child: Icon(Icons.g_translate),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New to Sofodel? ",
                        style: TextStyle(fontSize: 15),
                      ),
                      CupertinoButton(
                        onPressed: (){},
                          padding: EdgeInsets.zero,
                          child: Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
