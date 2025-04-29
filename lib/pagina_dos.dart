import 'package:flutter/material.dart';

//! Align
class PantallaDos extends StatefulWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WIDGET 1',
        ),
        centerTitle: true,
        backgroundColor: Color(0xfffb5f54),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 120.0,
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Regresar'))),
        ],
      ),
    );
  }
}
