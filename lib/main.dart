import 'package:flutter/material.dart';
import 'package:mad_thuisgemaakt/page/Betaal.dart';
import 'package:mad_thuisgemaakt/page/gerechten.dart';
import 'package:mad_thuisgemaakt/page/favorieten.dart';

void main() => runApp(MAD());

class MAD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Image(
              image: AssetImage("assets/thuisgemaakt.jpg"),
              width: 300,
              height: 200,
            ),
            Container(
              padding: EdgeInsets.all(50),
              width: 400,
              height: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Betaal(),
                    ),
                  );
                },
                child: Text('Koop hele versie'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              width: 400,
              height: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Gerechten(),
                    ),
                  );
                },
                child: Text('Gerechten'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              width: 400,
              height: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Favorieten(),
                    ),
                  );
                },
                child: Text('Mijn favorieten'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
