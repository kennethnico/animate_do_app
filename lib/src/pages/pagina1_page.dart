import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pagina1page extends StatelessWidget {
  const Pagina1page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animate_do'),
        actions: <Widget>[
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.twitter),
            onPressed: (){},
          ),
          IconButton(
            icon:const Icon(Icons.navigate_next),
            onPressed: (){},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const FaIcon(FontAwesomeIcons.play),
        onPressed: (){},
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.new_releases, color: Colors.blue, size: 40,),
            const Text('Titulo', style: TextStyle(fontSize:40, fontWeight:FontWeight.w200),),
            const Text('Soy un texto pequeño', style: TextStyle(fontSize:25, fontWeight:FontWeight.w200),),
            Container(
              width: 220,
              height: 2,
              color: Colors.blue,
            )
          ]),
      ),
    );
  }
}