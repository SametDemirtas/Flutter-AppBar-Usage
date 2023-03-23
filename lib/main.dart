import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppBarKullanimi(),
    );
  }
}

class AppBarKullanimi extends StatelessWidget {
  const AppBarKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("AppBar Kullanımı"),
        centerTitle: true, //yazıyı ortaya koyar
        backgroundColor: Colors.amber, //Arkaplan rengini değiştirir
        titleTextStyle: const TextStyle(
          fontSize: 20, //yazımızın fontunu 30 yaptık
          color: Colors
              .black, //ilk başta beyaz olan appbar kullanımı yazısını siyah yaptık
          fontWeight: FontWeight.bold, //yazımızın kalınlığını arttırdık
        ),
        toolbarOpacity:
            0.9, //yazımızın opaklığını kısabiliriz,(0-1) arası değerler alır
        toolbarHeight: 99, // daha büyük veya daha küçük bir appbar istiyorsanız
        // boyunu burdan ayarlayabilirsiniz
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ), //isterseniz de bu şekilde iki tarafını birden şekillendirebilirsiniz
        actions: [
          IconButton(
            //yazının sağ tarafında gözüken icon
            onPressed: () {
              //kod
            },
            icon: Icon(Icons.exit_to_app),
          ),
          IconButton(
            onPressed: () {
              //kod
            },
            icon: Icon(Icons.favorite),
          ),
        ],
        leading: IconButton(
          //yazının sol tarafında gözüken icon
          onPressed: () {},
          icon: Icon(Icons.abc),
        ),
      ),
    );
  }
}
