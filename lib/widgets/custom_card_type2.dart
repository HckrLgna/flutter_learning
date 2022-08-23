import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          Image.network('https://www.akamai.com/site/im-demo/perceptual-standard.jpg?imbypass=true')
        ],
      ),
    );
  }
}