import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inicio',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff94a3ff),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Pantalla Dos');
                },
                child: const Text('Ver WIDGET 1')),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Pantalla Tres');
                },
                child: const Text('Ver  WIDGET 2')),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Pantalla Cuatro');
                },
                child: const Text('Ver  WIDGET 3')),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Pantalla Cinco');
                },
                child: const Text('Ver  WIDGET 4')),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Pantalla Seis');
                },
                child: const Text('Ver  WIDGET 5')),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Pantalla Siete');
                },
                child: const Text('Ver  WIDGET 6')),
          ),
        ],
      ),
    );
  }
}
