// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('Tataboq Sora'),
        backgroundColor: Colors.indigo[800],
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int LeftImageNum = 1;
  int RightImageNum = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          LeftImageNum == RightImageNum ? 'You got it' : 'Try again',
          style: TextStyle(
            fontSize: 42,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      //Here we type what would happen if we pressed the button
                      setState(() {
                        LeftImageNum = Random().nextInt(8) + 1;
                        RightImageNum = Random().nextInt(8) + 1;
                        print(LeftImageNum);
                      });
                    },
                    child: Image.asset('images/image-$LeftImageNum.png')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      //Here we type what would happen if we pressed the button
                      setState(() {
                        RightImageNum = Random().nextInt(8) + 1;
                        LeftImageNum = Random().nextInt(8) + 1;
                        print(RightImageNum);
                      });
                    },
                    child: Image.asset('images/image-$RightImageNum.png')),
              ),
            ],
          ),
        )
      ],
    );
  }
}

// ignore: use_key_in_widget_constructors

