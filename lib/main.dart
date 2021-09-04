import 'dart:async';

import 'package:flutter/material.dart';
void main()=>runApp(Myclass());
class Myclass extends StatelessWidget {
  const Myclass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("splashscreen"),
        ),
        body: Splash(),
      ),
    );
  }
}
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 3000),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    Secound()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("img/n4.jpg",width:200),
    );
  }
}
class Secound extends StatelessWidget {
  const Secound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Secound new tab"),
      ),
    );
  }
}
