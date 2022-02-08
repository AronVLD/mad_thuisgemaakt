import 'package:flutter/material.dart';
import 'package:mad_thuisgemaakt/main.dart';
import 'package:mad_thuisgemaakt/page/Betaal.dart';

class Gerecht3 extends StatelessWidget {
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
                    'Paella',
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
                              'Ingredienten:\n162½g gele rijst\n1½ rode paprika\n100g chorizoworst\n100g kipfilethaasje\n2el traditionele olijfolie\n100g diepvries tuinerwten\n100g gekookte gambas'
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Card(
                          child: Image(
                            image: AssetImage("paella.jpg"),
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
                          'Doe alle ingrediënten voor de marinade in een kom.\nVoeg de kip in blokjes toe.\nDek af met folie en laat 1 uur marineren in de koelkast.\nKook de rijst gaar.\nSnipper de ui.\nVerhit een pan en voeg de ui aan toe met een beetje olie.\nVoeg de kip hier aan toe inclusief de marinade.\nVerwarm dit tot de kip gaar is, dit duurt ca 20 tot 25 minuten.\nOmdat je de kip verwarmt in de saus blijft deze lekker mals.\nServeer de kip tandoori met de rijsten naanbrood.\ntip: Ook lekker met een frisse salade.',
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
