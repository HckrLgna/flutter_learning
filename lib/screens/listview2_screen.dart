import 'package:flutter/material.dart';
import 'package:fl_components/screens/listview1_screen.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['megaman','Metal','Gear','Smash','Final'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo2'),
      
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.amber),
          onTap: () {
            final game= options[index];
            print(game);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: options.length
      )
    );
      
  }
}