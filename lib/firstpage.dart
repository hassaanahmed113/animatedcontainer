import 'dart:math';

import 'package:flutter/material.dart';


class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {

      double width =100;
    double height =100;
    double radius = 20;
    Color color = Colors.red;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        
      ),
      body: Center(
        child: AnimatedContainer(
          
          duration: Duration(milliseconds: 800),
          width: width,
          height: height,
          decoration: BoxDecoration(
            
            color: color,
            borderRadius: BorderRadius.circular(radius),
          ), 
          ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: color,
        elevation: 5,
        child: Icon(Icons.refresh),
       


        onPressed: (){
          final random = Random();
          height = random.nextInt(300).toDouble();
          width = random.nextInt(300).toDouble();
          radius = random.nextInt(100).toDouble();

          color = Color.fromARGB(random.nextInt(255),random.nextInt(255),random.nextInt(255),1);
          setState(() {
            
          });
        },
        ),
    );
  }
}
