// author: Mücahit Aktürk
// email : aktrkmcht@gmail.com

import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_homework4/sayfaY.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({Key? key}) : super(key: key);

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayfa X"),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "SAYFA X",
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              onPressed: () {
                //---button-code
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SayfaY()));
                //--------------
              },
              child: const Text("GİT > Y"),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "resimler/sayfaX.png",
                    scale: 0.01,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
