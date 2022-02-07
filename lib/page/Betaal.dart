import 'package:flutter/material.dart';
import 'package:mad_thuisgemaakt/main.dart';

class Betaal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Thuisgemaakt')),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/thuisgemaakt.jpg"),
                width: 300,
                height: 200,
              ),
              Container(
                padding: EdgeInsets.all(30),
                width: 450,
                height: 110,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Betaal(),
                      ),
                    );
                  },
                  child: Text('1 Maand (2,99)'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                width: 450,
                height: 110,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Betaal(),
                      ),
                    );
                  },
                  child: Text('Half Jaar (15,-)'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                width: 450,
                height: 110,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Betaal(),
                      ),
                    );
                  },
                  child: Text('Heel Jaar 25,-'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                width: 450,
                height: 110,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop (
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homepage(),
                      ),
                    );
                  },
                  child: Text('Ga Terug'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
