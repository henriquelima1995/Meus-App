import 'package:flutter/material.dart';

class ImagenGerada extends StatefulWidget {
  const ImagenGerada({super.key});

  @override
  State<ImagenGerada> createState() => _ImagenGeradaState();
}

class _ImagenGeradaState extends State<ImagenGerada> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),

      child: Image.asset('image/logo.png'),
    );
  }
}
