import 'package:flutter/material.dart';

import 'dart:math';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.amber;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape(){
    final random = Random();

    // Generate Random width and hight
    _width = random.nextInt(400).toDouble() + 70;
    _height = random.nextInt(400).toDouble() + 70;

    //Generate a random color.
    _color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1
    );

    //Generate a Random Border Radius 
    _borderRadius =  BorderRadius.circular(random.nextInt(100).toDouble() +10);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
         child: AnimatedContainer(
           duration: const Duration(milliseconds: 400),
           curve: Curves.easeOutCubic,
           width: _width,
           height: _height,
           decoration: BoxDecoration(
             color: _color,
             borderRadius: _borderRadius,
           ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_outline, size: 35,),
        onPressed: (){
          setState(() {
            changeShape();
          });
        },
      ),
    );
  }
}