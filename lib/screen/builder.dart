import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyBuilder extends StatefulWidget {
  
  const MyBuilder({Key? key, required this.input}) : super(key: key);
    final String input;
    //const MyBuilder();
  @override
  State<MyBuilder> createState() => _MyBuilderState();
}

class _MyBuilderState extends State<MyBuilder> {
  _MyBuilderState();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rifki_1462000282_Req2'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: int.parse(widget.input),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                
                title: Text("ini ListTile titlenya ke - ${index+1}"));
          }),
    );
  }
}