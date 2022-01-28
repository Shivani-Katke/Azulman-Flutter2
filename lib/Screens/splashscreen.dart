import 'package:flutter/material.dart';
import 'dart:async';
import 'loginscreen.dart';


class splashscreen extends StatefulWidget {

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override

  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
          () =>
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>  loginscreen(),
          ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/azulman_bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 300.0,bottom: 250.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/test_logo.png', height: 110.0, width: 110.0),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 50.0,
              color: const Color(0xFF967d51),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget> [
                  Text("SBE Technologies Pvt Ltd.",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}

