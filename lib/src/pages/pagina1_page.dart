import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
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
            onPressed: (){
              Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => const Pagina1page()));
            },
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
            ElasticIn(
              delay: const Duration(milliseconds: 1100),
              child: const Icon(Icons.new_releases, color: Colors.blue, size: 40,)),

            FadeInDown(
              delay: const Duration(milliseconds: 300),
              child: const Text('Titulo', style: TextStyle(fontSize:40, fontWeight:FontWeight.w200),)
              ),

            FadeInRight(
              delay: const Duration(milliseconds: 1500),
              child: const Text('Soy un texto pequeño', style: TextStyle(fontSize:25, fontWeight:FontWeight.w200),)
              ),

            FadeInLeft(
              delay: const Duration(milliseconds: 1500),
              child: Container(
                width: 220,
                height: 2,
                color: Colors.blue,
              ),
            )
          ]),
      ),
    );
  }
}