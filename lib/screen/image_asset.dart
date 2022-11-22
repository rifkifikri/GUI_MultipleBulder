import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyImage extends StatelessWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rifki_1462000282_Req2'),
        centerTitle:true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            
            children:[
               Image.asset('images/habib.jpg',
               height: MediaQuery.of(context).size.height*0.8,
               width: MediaQuery.of(context).size.width *0.8,
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Habib Hussain',
                 
                 style: TextStyle(
                  fontSize: 20
                 ),),
               )
            ]
           
          ),
        ),
      ),
    );
  }
}