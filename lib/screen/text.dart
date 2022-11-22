import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rifki_1462000282_Req2'),
        centerTitle:true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Manusia Biasa'),
            Text('Manusia Luar Biasa',
            style: TextStyle(color: Colors.green),
            ),
            Text('Manusia dengan ukuran 24',
            style: TextStyle(
              fontSize: 24,
            ),),
            Text('Manusia dengan Tebal',
            style: TextStyle(
              fontWeight: FontWeight.w900
            ),
            ),
            Text('Manusia dengan ukuran 24 memiliki keunggulan yaitu dapat melewati lubang yang kecil',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style:TextStyle(
              fontSize: 20,
            ),
            ),
            
          ],
        ),
      ),
    );
  }
}