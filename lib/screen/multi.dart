import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageMulti extends StatelessWidget {
  const PageMulti({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    final List alphabet = [
    "Hai", "Susah ya?","tetap", "Semangat !!!", "jika aku tak bisa mendapatkanmu hari ini"," Mungkin tahun depan aku bisa"
    ];
    return Scaffold(
    appBar: AppBar(
        title: Text('Rifki_1462000282_Req2'),
        centerTitle:true,
    ),
  body: Container(
    child: ListView(
              
              children: [
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(10),
                  children: List.generate(alphabet.length, (index) {
                    return Container(
                      height: 100,
                      color: Colors.amber,
                      child: Card(
                        child: Center(
                            child: Text(alphabet[index],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13))),
                        color: Colors.deepPurpleAccent,
                      ),
                    );
                  }),
                ),
                Center(
                  child: Text('Kumpulan Kata-kata',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  ),
                ),
                ListTile(
                    title: Text('Daripada lu di khianati pas nikah mending diakhirat pas pacaran'),
                    subtitle: Text('by UUS'),
                  ),ListTile(
                    title: Text('Karena Lu yang kelihatan seolah olah yang lain tidak melakukan'),
                    subtitle: Text('by UUS'),
                    
                  ),ListTile(
                    title: Text('perjalanan jaug kau bangun untuk bertaruh'),
                    subtitle: Text('by UUS'),
                    
                  ),ListTile(
                    title: Text('Ga punya ayang karena menunggu sidia yang selalu terbayang'),
                    subtitle: Text('by aslab'),
                    
                  ),ListTile(
                    title: Text('aku suka kamu eh kamu sukanya fruit tea'),
                    subtitle: Text('by aslab'),
                    
                  ),ListTile(
                    title: Text('kamu diem aja aku suka'),
                    subtitle: Text('by aslab'),
                    
                  ),ListTile(
                    title: Text('Ga perlu berubah aku suka kamu yang gini kok'),
                    subtitle: Text('by aslab'),
                    
                  ),ListTile(
                    title: Text('urusan kamu cuek sama aku hanya kamu yang tau'),
                    subtitle: Text('by UUS'),
                    
                  ),ListTile(
                    title: Text('kita berguna untuk satu dua orang ternyata cukup yah'),
                    subtitle: Text('by UUS'),
                   
                  ),ListTile(
                    title: Text('susah susah di ngedeketin eh kamu malah asik dengan yang lain'),
                    subtitle: Text('by UUS'),
                    
                  ),
              ],
            )
  ),
    );
  }
}