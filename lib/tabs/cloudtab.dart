import 'package:flutter/material.dart';

class CloudTab extends StatelessWidget{
  const CloudTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.brown,
      child: Center(child: Text("today is cloudy",style: TextStyle(fontSize: 30),)),
    );
  }
}
