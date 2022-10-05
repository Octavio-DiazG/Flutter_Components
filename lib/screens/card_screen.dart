import 'package:flutter/material.dart';


import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [

          CustomCardType1(),
          SizedBox(height: 5,),
          CustomCardType2(imageUrl: 'https://i.pinimg.com/originals/f6/57/31/f65731c37ca480de35576b2b1f89ee41.jpg', title: 'Ducati Panigale V4',),
          SizedBox(height: 25,),
          CustomCardType1(),
          SizedBox(height: 5,),
          CustomCardType2(imageUrl: 'https://vistapointe.net/images/kawasaki-ninja-zx10r-2.jpg', title: 'Kawasaki ninja ZX-10R',),
          SizedBox(height: 25,),
          CustomCardType1(),
          SizedBox(height: 5,),
          CustomCardType2(imageUrl: 'https://wallpaperaccess.com/full/4241928.jpg', title: 'Yamaha R1',),


        ],
      ),
    );
  }
}


