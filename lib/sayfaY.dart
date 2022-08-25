// author: Mücahit Aktürk
// email : aktrkmcht@gmail.com

import 'package:flutter/material.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({Key? key}) : super(key: key);

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  //-----------------------------------------------------------
  Future<bool> onWillPop() async {
    anasayfayaDon();
    return false;
  }
  void anasayfayaDon(){
    Navigator.of(context).popUntil((route) => route.isFirst);
  }
  //-----------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: onWillPop,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Sayfa Y",style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.yellow,
            leading: IconButton(
                onPressed: () {
                  print("Appbar geri tuşu tıklandı");
                  anasayfayaDon();
                },
                icon: const Icon(Icons.arrow_back_ios_rounded),color: Colors.black,),
          ),
          backgroundColor: Colors.yellow,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "SAYFA Y",
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  "Geri Tuşu >> Anasayfa",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "resimler/sayfaY.png",
                        scale: 0.01,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
