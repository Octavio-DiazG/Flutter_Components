//import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';


class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? title;


  const CustomCardType2({
    Key? key, 
    required this.imageUrl,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      elevation: 30,
      shadowColor: Colors.black87.withOpacity(0.9),
      child: Column(
        children:[

          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if(title != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(title ?? ' ')
            )
        ],
      ),
    );
  }
}


/*'https://i.pinimg.com/originals/f6/57/31/f65731c37ca480de35576b2b1f89ee41.jpg'*/ 