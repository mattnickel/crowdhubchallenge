import 'package:flutter/material.dart';

import 'framework_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
        backgroundColor: Colors.grey,
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Color(0xFFeaaf13),
        splashColor: Color(0xFF707172),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FrameworkPage(),
    );
  }
}

