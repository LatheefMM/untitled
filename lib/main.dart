import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
          useInheritedMediaQuery: true, home: project2()), // Wrap your app
    ),
  );
}

// ignore: no_logic_in_create_state
class project2 extends StatefulWidget{
  const project2({super.key});


  @override
  State<StatefulWidget> createState() => _projectstate();
}
class _projectstate extends State<project2>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            ///background color
            // decoration:  const BoxDecoration(
            //   image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image:AssetImage('assets/img_1.png'),
            //   )
            // ),
            child:Center(
             child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image.asset('assets/img_1.png',height: 700,width: 800),
                 const Align(
                   child: Text(
                     'Hello World!',
                     style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),

                   ),
                 ),








               ],
             ),
            ),
          ),
        ),
      )
    );
  }

}
