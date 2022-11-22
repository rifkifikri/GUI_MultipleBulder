import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kegiatan_2/main.dart';

class MyProfil extends StatelessWidget {
  const MyProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rifki_1462000282_Req2'),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 159, 187, 235),
        width: double.infinity,
        height: double.infinity,
        child:SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage('images/profilku.jpeg'),
                        ),
                      
                      ]
                       
                    ),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                      colors: [Colors.green, Colors.blue]),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  
                  ),
                ),
                //identitas
                Padding(
                  padding: const EdgeInsets.only(top:30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.person),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Nama : Muhammad Rifki Fikri Firdaus',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.security),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('NBI : 1462000282',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.book),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Prak: PAB',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                               Icon(Icons.account_balance_outlined),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Kelas : Reg 2',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                               Icon(Icons.email_sharp),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Email : rifkifikri_',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            
                            children: [
                               
                               Container(
                                width: 300,
                                 child: Column(
                                   children: [
                                     Text('Deskripsi : Halo disini saya Rifki mempunyai hobby yaitu bersepedah dan makan dengan banyak. kesibukan saya sekarang yaitu belajar menjadi yang terbaik',
                                            maxLines: 5,
                                            softWrap: true,
                                            overflow: TextOverflow.visible,
                                            style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                   ],
                                 ),
                               ),
                             
                            ],
                          ),
                        ),
                      ],),
                    ),
                  ),
                ),
                
                // Padding(
                //   padding: const EdgeInsets.only(top: 50),
                //   child: ElevatedButton(onPressed: (){
                //     Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAppsku())
                //     );
                //   }, child: Text('Back Home')),
                // )
              
               
            ],
          ),
        ),
      ),
    );
  }
}