import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Megaman', 'Halo', 'GR', 'Dark Souls'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.indigo[700],),
          onTap: (){
            final game = options[index];
            // ignore: avoid_print
            print(game);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      )
    );
  }
}
