import 'package:flutter/material.dart';

class SunTab extends StatelessWidget{
  const SunTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.teal,
      child: Center(child: Text("today is sunny",style: TextStyle(fontSize: 30),)),
    );
  }
}