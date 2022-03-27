import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text(
          'About the creators...',
          style:TextStyle(
            color:Colors.white,
            fontSize:48.0,
            letterSpacing:1.0,

          ),
        ),
        backgroundColor:Colors.grey[850],
      ),
    );
  }
}