import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Image.asset("assets/images/CommunitConnectorLogoDark.png", height: 80),
        leading:  Padding(
          padding: const EdgeInsets.only(top:30.0),
          child: ImageIcon(
            AssetImage("assets/images/Icon_Hamburger.png"),
              color: Colors.black54,
              size: 10,
            ),
        ),
      ),

      body: Center(
        child: Text("This is the stories page"),
      ),
    );
  }

}