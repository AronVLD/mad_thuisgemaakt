import 'package:flutter/material.dart';
import 'package:mad_thuisgemaakt/main.dart';
import 'package:mad_thuisgemaakt/page/Betaal.dart';
import 'package:mad_thuisgemaakt/page/gerecht.dart';


class Favorieten extends StatelessWidget {
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
                height: 100,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: 400,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Betaal(),
                      ),
                    );
                  },
                  child: Text('Koop volledige versie nu'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                ),
              ),
              Container(
                child: Text(
                  'Jou Favorieten',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Gerecht())),
                child: Card(
                  child: Image(
                    image: AssetImage("eten1.jpg"),
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Gerecht())),
                child: Card(
                  child: Image(
                    image: AssetImage("eten1.jpg"),
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                width: 450,
                height: 110,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
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
