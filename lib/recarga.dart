import 'package:bbva/pay.dart';
import 'package:flutter/material.dart';

class Recarga extends StatefulWidget {
  @override
  _RecargaState createState() => _RecargaState();
}

class _RecargaState extends State<Recarga> {
  static const String _title = 'BBVA Invitados - Recargas';
  // This widget is the root of your application.
  static PayAbs pay = PayAbs();


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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  pay.label(name: 'Detalle de Recarga: '),
                  pay.input(name:'Numero de telefono', ayuda:'',icon: Icons.phone),
                  pay.input(name:'Compañia', ayuda:'',icon: Icons.other_houses),
                  pay.input(name:'Cantidad*', ayuda:'',icon: Icons.monetization_on, number: true)
                ],
              ),
            ),

            Container(
                margin: const EdgeInsets.all(25.0) ,
                child: pay.boton(name: 'Realizar la Recarga', context: context)
            ),
          ],
        ),

      ),
    );
  }
}
