import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar',),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('FES'),
              backgroundColor: Colors.lightGreen[800]
            ),
          ),
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 150,
           backgroundImage: NetworkImage('https://i.pinimg.com/originals/65/9b/33/659b33c6c5a802ee5d74334bd0228b5c.jpg'),
         ),
      ),
    );
  }
}