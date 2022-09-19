import 'package:flutter/material.dart';

import 'calories_homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.black,
            iconTheme: IconThemeData(
                color: Colors.amberAccent
            )
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: calories_homepage(),
    );
  }

}




