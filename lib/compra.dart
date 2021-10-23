import 'package:bbva/pay.dart';
import 'package:flutter/material.dart';

class Compra extends StatefulWidget {
  @override
  _CompraState createState() => _CompraState();
}

class _CompraState extends State<Compra> {
  static const String _title = 'BBVA Invitados - Compras';
  // This widget is the root of your application.
  static PayAbs pay = PayAbs();
  pago() {
    print('comprado');
  }

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
                  pay.label(name: 'Concepto de compra: '),
                  pay.input(name:'Concepto de compra', ayuda:'Detalle que compro',icon: Icons.description)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(25.0) ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  pay.label(name: 'Cuenta destino '),
                  pay.input(name:'Codigo de cuenta', ayuda:'',icon: Icons.send),

                  pay.input(name:'Cantidad', ayuda:'',icon: Icons.monetization_on, number: true)
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(25.0) ,
              child: pay.boton(name: 'Realizar la compra',context: context)
            ),
          ],
        ),


      ),
    );
  }
}
