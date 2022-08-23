import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.padding, color: AppTheme.primary,),
            title: Text('Soy un tittulo'),
            subtitle: Text('Enim excepteur laboris proident consectetur pariatur excepteur dolore.Ipsum est aliqua eu occaecat officia deserunt ex pariatur nisi.'),                 
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end ,
              children: [
                TextButton(
                  onPressed: () {
                }, 
                child: const Text('Ok'),
                
                ),
                TextButton(
                  onPressed: () {
                }, 
                child: const Text('Cancelar'))
              ],
            ),
          ),
          
      ],
      ),
    );
  }
}