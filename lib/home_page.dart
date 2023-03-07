
import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _color = Color(0xFFFFFFFF);
  var rng = Random();


  void _changeColor() {
    setState(() {
      int colorNum =rng.nextInt(16777215); //as its equals FFFFFF the maximum color num in  hex
      _color=Color(0xFFffff*colorNum);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          _changeColor();
        },
        child: Container(
          alignment: AlignmentDirectional.center,
          color:_color ,
          child: Text(
            'Hey there',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }
}