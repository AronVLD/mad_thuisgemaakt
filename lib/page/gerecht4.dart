import 'package:flutter/material.dart';
import 'package:mad_thuisgemaakt/main.dart';
import 'package:mad_thuisgemaakt/page/Betaal.dart';

class Gerecht4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Thuisgemaakt')),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Flexible(
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
                    'Spaghetti',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Card(
                          child: Text(
                              'Ingredienten:\n350 gram spaghetti\n500 gram cherrytomaatjes\n250 gram mozzarella\n4 eetlepels olijfolie\n2 teentjes knoflook\n10 blaadjes basilicum'
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Card(
                          child: Image(
                            image: AssetImage("eten2.jpg"),
                            width: 170,
                            height: 170,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all()),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Card(
                        child: Text(
                          'Kook de spaghetti gaar volgens de aanwijzingen op de\nverpakking in ruim water met zout.\nMeng intussen de tomaatjes met de mozzarella, olijfolie, knoflook\nen basilicum.\nGiet de pasta af en roer het tomatenmengsel erdoor.\nBestrooi met peper en serveer direct',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
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
      ),
    );
  }
}
