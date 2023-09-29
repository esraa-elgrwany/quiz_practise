import 'package:flutter/material.dart';

class SnowTab extends StatelessWidget{
  const SnowTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        height: double.infinity,
        color: Colors.blueGrey,
      child: Center(child: Text("today is snowy",style: TextStyle(fontSize: 30),)),
    );
  }
}