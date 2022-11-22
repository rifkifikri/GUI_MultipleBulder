import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyImageNetwork extends StatelessWidget {
  const MyImageNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rifki_1462000282_Req2'),
        centerTitle:true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  
                  children: [
                    Image.network('https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/Revy-Vamella.jpg',
                    height:500,
                    width: 300,
                    ),
                    Text('Vamels',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}