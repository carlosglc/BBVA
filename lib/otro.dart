import 'package:bbva/pay.dart';
import 'package:flutter/material.dart';

class Otro extends StatefulWidget {
  @override
  _OtroState createState() => _OtroState();
}

class _OtroState extends State<Otro> {
  static const String _title = 'BBVA Invitados - Otros';
  // This widget is the root of your application.
  static PayAbs pay = PayAbs();
  String dropdownValue = 'Diamantes Free Fire';

  @override
  Widget build(BuildContext context) {
//optionList()
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          _title,
          textAlign: TextAlign.left,
        ),
        centerTitle: false,
        backgroundColor: Colors.blueBackground,
      ),
      body: Container(
        child:
        ListView(

          children: [
            Container(
              margin: const EdgeInsets.all(25.0) ,
              child: pay.card,
            ),

            Container(
                margin: const EdgeInsets.all(25.0) ,
            child: Column(
                mainAxisAlignment:MainAxisAlignment.start,
                children:
            [
              pay.label(name: 'Seleccione una opcion: '),
              DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.lightBlue),
              underline: Container(
                height: 2,
                color: Colors.blueAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Diamantes Free Fire', 'Tarjeta Play Store \$20', 'Netflix Gift Card - \$20', 'Amazon Prime Gift Card \$20']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )])),

            Container(
                margin: const EdgeInsets.all(25.0) ,
                child: pay.input(name:'Cantidad*', ayuda:'',icon: Icons.keyboard, number: true),
            ),
            Container(
                margin: const EdgeInsets.all(25.0) ,
                child: pay.boton(name: 'Realizar el pago',context: context)
            ),
          ],
        ),


      ),
    );
  }
}
