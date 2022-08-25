// author: Mücahit Aktürk
// email : aktrkmcht@gmail.com

import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_homework4/sayfaY.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({Key? key}) : super(key: key);

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa B"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("SAYFA B",style: TextStyle(fontSize: 50,color: Colors.white),),
            ElevatedButton(onPressed: (){
              //----button-code
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaY()));
              //---------------
            }, child: const Text("GİT > Y"),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
              textStyle: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),),
            Padding(padding: const EdgeInsets.only(top: 30),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("resimler/sayfaB.png", scale: 0.01,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
