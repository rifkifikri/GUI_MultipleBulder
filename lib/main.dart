import 'package:flutter/material.dart';
import 'package:kegiatan_2/Screen/Profil.dart';
import 'package:kegiatan_2/Screen/icons.dart';
import 'package:kegiatan_2/Screen/pageReplacement.dart';
import 'package:kegiatan_2/screen/builder.dart';
import 'package:kegiatan_2/screen/container_page.dart';
import 'package:kegiatan_2/screen/imageNetwork.dart';
import 'package:kegiatan_2/screen/image_asset.dart';
import 'package:kegiatan_2/screen/multi.dart';
import 'package:kegiatan_2/screen/pop.dart';
import 'package:kegiatan_2/screen/push.dart';
import 'package:kegiatan_2/screen/text.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      
      home: const MyApps(),
    );
  }
}

class MyApps extends StatefulWidget {
  final Function (int)? onTap; 
  const MyApps({Key? key, this.onTap}) : super(key: key);

  @override
  State<MyApps> createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  TextEditingController inputan = new TextEditingController();
final List alphabet = [
    "Hai", "Susah ya?","tetap", "Semangat !!!", "jika aku tak bisa mendapatkanmu hari ini"," Mungkin tahun depan aku bisa"
  ];
  var nilai;
  var value;
  @override
  Widget build(BuildContext context) {
    
    
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('1462000282'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "Single",
            ),
            Tab(
              text: "Multi",
            ),
            Tab(
              text: "Builder",
            ),
          ]),
        ),
        body: TabBarView(
          children: [
          Tab(
            child: Container(
            
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(flex: 1,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>MyContainer()),
                     );
                  }, child: Text('Container')),
                )),
                Expanded(flex: 1, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>MyText()),
                    );
                  }, child: Text('Text')),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(flex: 1, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>MyImageNetwork())
                    );
                  }, child: Text('Image')),
                )),
                Expanded(flex: 1, child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyImage())
                  );
                }, child: Text('Image asset'))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(flex:1, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>MyIcons())
                    );
                  }, child: Text('Icon')),
                )),
                Expanded(flex:1, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyPush())
                    );
                  }, child: Text('push')),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(flex: 1, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyPopPage()));
                  }, child: Text('pop')),
                )),
                Expanded(flex: 1, child: Padding( //expanded berguna untuk memenuhi ruang yang tersisa
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyReplacepentPage())
                    );
                  }, child: Text('Replacement')),
                )),
              ],
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfil())
              );
            }, child: Text('Profil saya')),
          ],
        ),
            ),
          ),
          Tab(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    title: Text('Container'),
                    subtitle: Text('Contoh Kontainer di Flutter'),
                    onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>MyContainer()),
                     );
                    },
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  ListTile(
                    title: Text('Text'),
                    subtitle: Text('Contoh Teks di Flutter'),
                    onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>MyText()),
                     );
                    },
                  ),
                  Divider(
                    color: Colors.black,
                  ),ListTile(
                    title: Text('Image'),
                    subtitle: Text('Contoh image Network di Flutter'),
                    onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>MyImageNetwork()),
                     );
                    },
                  ),
                  Divider(
                    color: Colors.black,
                  ),ListTile(
                    title: Text('Image Asset'),
                    subtitle: Text('Contoh Image Asset di Flutter'),
                    onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>MyImage()),
                     );
                    },
                  ),
                  Divider(
                    color: Colors.black,
                  ),ListTile(
                    title: Text('Icon'),
                    subtitle: Text('Contoh Icon di Flutter'),
                    onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>MyIcons()),
                     );
                    },
                  ),
                  Divider(
                    color: Colors.black,
                  ),ListTile(
                    title: Text('Push'),
                    subtitle: Text('Contoh Push di Flutter'),
                    onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>MyPush()),
                     );
                    },
                  ),
                  Divider(
                    color: Colors.black,
                  ),ListTile(
                    title: Text('Pop'),
                    subtitle: Text('Contoh Pop di Flutter'),
                    onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>MyPopPage()),
                     );
                    },
                  ),
                  Divider(
                    color: Colors.black,
                  ),ListTile(
                    title: Text('Replacement'),
                    subtitle: Text('Contoh Replacement di Flutter'),
                    onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>MyReplacepentPage()),
                     );
                    },
                  ),
                  Divider(
                    color: Colors.black,
                  ),ListTile(
                    title: Text('Profil Saya'),
                    subtitle: Text('Profil Saya di Flutter'),
                    onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>MyProfil()),
                     );
                    },
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          Tab(
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
                    onTap: (){
                     
                    },
                  ),ListTile(
                    title: Text('Ga punya ayang karena menunggu sidia yang selalu terbayang'),
                    subtitle: Text('by aslab'),
                    onTap: (){
                     
                    },
                  ),ListTile(
                    title: Text('aku suka kamu eh kamu sukanya fruit tea'),
                    subtitle: Text('by aslab'),
                    onTap: (){
                     
                    },
                  ),ListTile(
                    title: Text('kamu diem aja aku suka'),
                    subtitle: Text('by aslab'),
                    onTap: (){
                     
                    },
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
          Tab(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: inputan,
                    decoration: InputDecoration(
                      hintText: "Masukkan Panjang Builder",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.blue, width: 100),
                      ),
                      ),
                     
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>MyBuilder(
                        input: inputan.text,
                      )),
                    );
                  }, child: Text('Generate')),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}