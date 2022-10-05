import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(AppRoutes.menuOptions[index].name),
          leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary,),
          onTap: () {
            /*
            final route = MaterialPageRoute(
              builder: (context) => const ListView1Screen (),

            );
            Navigator.push(context,route);*/
            Navigator.pushNamed(context, menuOptions[index].route);

          },
        ), 
        separatorBuilder: (_, __) =>  const Divider(), 
        itemCount: menuOptions.length
      )
    );
  }
}