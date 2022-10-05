import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes{

  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    //MenuOption(route: 'home', name: 'Home screen', screen: const HomeScreen(), icon: Icons.home_filled),
    MenuOption(route: 'listview1', name: 'Listview 1', screen: const ListView1Screen(), icon: Icons.list_rounded),
    MenuOption(route: 'listview2', name: 'Listview 2', screen: const ListView2Screen(), icon: Icons.list_alt_rounded),
    MenuOption(route: 'alert', name: 'Alert', screen: const AlertScreen(), icon: Icons.error_outline_rounded),
    MenuOption(route: 'card', name: 'Bikes', screen: const CardScreen(), icon: Icons.directions_bike_rounded),
    MenuOption(route: 'avatar', name: 'Avatar', screen: const AvatarScreen(), icon: Icons.person_pin),
    MenuOption(route: 'animation', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_outlined),
    MenuOption(route: 'slider', name: 'Slider & Checks', screen: const SliderScreen(), icon: Icons.sync_alt_rounded),
    MenuOption(route: 'listviewbuilder', name: 'Infinite Scroll & Pull to Refresh', screen: const ListViewBuilderScreen(), icon: Icons.all_inclusive_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }
    return appRoutes; 
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
        'home'     : (BuildContext context) => const HomeScreen(),
        'listview1': (BuildContext context) => const ListView1Screen(),
        'listview2': (BuildContext context) => const ListView2Screen(),
        'alert'    : (BuildContext context) => const AlertScreen(),
        'card'     : (BuildContext context) => const CardScreen()
  };*/

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
  }
} 