import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

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
              width: width,
              color: Colors.orange,
              child: Image.asset("assets/singup.png"),
            ),
            Container(
              height: 2 * height / 3,
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  //todo: login with g00gel, facebook, ...
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
                  //           //color: Colors.orangeAccent,
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
                  //           //color: Colors.orangeAccent,
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
                  //           //color: Colors.orangeAccent,
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

                  //todo :Or, register with phone...
                  // Padding(
                  //   padding: const EdgeInsets.all(15.0),
                  //   child: Text(
                  //     "Or, register with email...",
                  //     style: TextStyle(color: Color(0xEC3B3A3A)),
                  //   ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: new Icon(Icons.account_circle_rounded),
                      labelText: "Name",
                    ),
                  ),
                  SizedBox(
                    height: 10,
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

                  SizedBox(
                    height: 10,
                  ),
                  //password
                  TextField(
                    decoration: InputDecoration(
                      icon: new Icon(Icons.password),
                      labelText: "Conform Password",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //password


                  CupertinoButton(
                    onPressed: () {
                      //todo: login btn
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
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
