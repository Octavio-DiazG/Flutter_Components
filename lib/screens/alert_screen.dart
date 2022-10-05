import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {

    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('Alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('contenido'),
              SizedBox(height: 10),
              FlutterLogo( size: 100,),
            ],
          ),
          actions: [
            TextButton(
              onPressed: ()=> Navigator.pop(context),
              child: Text('Cancelar', style: TextStyle(color: (Colors.red[900])),),
            ),
            TextButton(
              child: const Text('Ok'),
              onPressed: ()=> Navigator.pop(context),
            ),
          ],
        );
      }
    );
  }
  
  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (contex){
        return AlertDialog(
          elevation: 5,
          title: const Text('Alerta'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('contenido'),
              SizedBox(height: 10),
              FlutterLogo( size: 100,),
            ],
          ),
          actions: [
            TextButton(
              onPressed: ()=> Navigator.pop(context),
              child: Text('Cancelar', style: TextStyle(color: (Colors.red[900])),),
            ),
            TextButton(
              child: const Text('Ok'),
              onPressed: ()=> Navigator.pop(context),
            ),
          ],
        );
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Alerta', style: TextStyle( fontSize: 20),),
          ),
          //onPressed: () => displayDialogAndroid( context ), 
          onPressed: () => Platform.isAndroid 
            ? displayDialogAndroid(context)
            : displayDialogIOS( context ), 
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }
}