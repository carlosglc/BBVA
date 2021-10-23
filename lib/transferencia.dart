import 'package:bbva/pay.dart';
import 'package:flutter/material.dart';

class Transferencia extends StatefulWidget {
  @override
  _TransferenciaState createState() => _TransferenciaState();
}

class _TransferenciaState extends State<Transferencia> {
  static const String _title = 'BBVA Invitados - Transferencias';
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
              margin: const EdgeInsets.all(10.0) ,
              child: pay.card,
            ),
            Container(
              margin: const EdgeInsets.all(10.0) ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  pay.label(name: 'Concepto de Transferencia: '),
                  pay.input(name:'Concepto de Transferencia', ayuda:'Detalle de la transferencia',icon: Icons.description)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0) ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  pay.label(name: 'Datos de la cuenta destino '),
                  pay.input(name:'Codigo de cuenta*', ayuda:'',icon: Icons.send),
                  pay.input(name:'Entidad Bancaria*', ayuda:'',icon: Icons.other_houses),
                  pay.input(name:'Beneficiario*', ayuda:'',icon: Icons.person),
                  pay.input(name:'DNI*', ayuda:'',icon: Icons.card_membership),
                  pay.input(name:'Cantidad*', ayuda:'',icon: Icons.monetization_on, number: true)
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(25.0) ,
                child: pay.boton(name: 'Realizar la Transferencia', context: context)
            ),
          ],
        ),




      ),
    );
  }
}
