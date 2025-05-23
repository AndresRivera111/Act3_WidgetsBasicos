import 'package:flutter/material.dart';

//!AnimatedPadding

class PantallaCuatro extends StatefulWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  State<PantallaCuatro> createState() => _PantallaCuatroState();
}

class _PantallaCuatroState extends State<PantallaCuatro> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WIDGET 3',
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1cb81e),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
            ),
            child: const Text('Change padding',
                style: TextStyle(color: Colors.white)),
            onPressed: () {
              setState(() {
                padValue = padValue == 0.0 ? 100.0 : 0.0;
              });
            },
          ),
          Text('Padding = $padValue'),
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.blueAccent,
            ),
          ),
          SizedBox(
            height: 30,
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
