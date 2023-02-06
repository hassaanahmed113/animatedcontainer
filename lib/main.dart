import 'package:flutter/material.dart';
import 'package:flutter_application_5/firstpage.dart';


void main(List<String> args) {
  runApp(app1());

}
class app1 extends StatelessWidget {
  const app1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firstpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}