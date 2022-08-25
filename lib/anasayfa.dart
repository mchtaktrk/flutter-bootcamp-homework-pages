// author: Mücahit Aktürk
// email : aktrkmcht@gmail.com

import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_homework4/sayfaA.dart';
import 'package:flutter_bootcamp_homework4/sayfaX.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Bootcamp Homework"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("ANASAYFA", style: TextStyle(fontSize: 50),),
            ElevatedButton(onPressed: (){
              //button code
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaA()));
              //-----------
            }, child: const Text("GİT > A"),style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),),
            ElevatedButton(onPressed: (){
              //------button-code
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaX()));
              //-----------------
            }, child: const Text("GİT > X"),style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
              textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),),
            Padding(padding: const EdgeInsets.only(top: 30),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("resimler/anasayfa.png", scale: 0.01,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
