
import 'package:flutter/material.dart';
import './screens/images_screen.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: ElevatedButton.icon(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
      return sidesImages();
    },));}, icon: Icon(Icons.image_aspect_ratio), label: Text("Images"))),);
  }
}