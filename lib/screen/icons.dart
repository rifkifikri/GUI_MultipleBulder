import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyIcons extends StatelessWidget {
  const MyIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rifki_1462000282_Req2'),
        centerTitle:true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.search),
          Icon(Icons.search,
          color: Colors.blue,
          ),
          Icon(Icons.search,
          size: 70,
          ),
          
        ],
      ),
    );
  }
}