import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    //Todo borrar home
    MenuOption(route: 'home', icon: Icons.home_max_outlined, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list, name: 'Listview tipo 1', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_alt_outlined, name: 'Listview tipo 2', screen: const Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.alarm, name: 'Alertas', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.card_giftcard, name: 'Card', screen: const CardScreen()),

  ];
  //static Map<String, Widget Function(BuildContext)> routes = {
    //    'home' : (BuildContext context) => const HomeScreen(),
      //  'listView1': (BuildContext contex) => const Listview1Screen(),
        //'listView2': (BuildContext contex) => const Listview2Screen(),
        //'alert': (BuildContext contex) => const AlertScreen(),
        //'card': (BuildContext contex) => const CardScreen()


      //};
      static Map<String, Widget Function(BuildContext)> getAppRoutes(){
        Map<String, Widget Function(BuildContext)> appRoutes = {};
        for (var option in menuOptions) {
          appRoutes.addAll({option.route: (BuildContext context ) => option.screen});
        }
        return appRoutes;
      }
      static Route<dynamic> onGeneradeRoute (settings) {
        return MaterialPageRoute(builder: (context)=> const AlertScreen(),
        );
      }
}