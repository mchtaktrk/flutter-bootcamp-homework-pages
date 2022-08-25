// author: Mücahit Aktürk
// email : aktrkmcht@gmail.com

import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_homework4/sayfaB.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayfa A"),
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("SAYFA A",style: TextStyle(fontSize: 50,),),
            ElevatedButton(onPressed: (){
              //------button-code
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaB()));
              //-----------------
            }, child: const Text("GİT > B"),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                textStyle: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
              ),),
            Padding(padding: const EdgeInsets.only(top: 30),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("resimler/sayfaA.png", scale: 0.01,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
