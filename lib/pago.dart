import 'package:bbva/pay.dart';
import 'package:flutter/material.dart';

class Pago extends StatefulWidget {
  @override
  _PagoState createState() => _PagoState();
}

class _PagoState extends State<Pago> {
  static const String _title = 'BBVA Invitados - Pagos';
  // This widget is the root of your application.
  static PayAbs pay = PayAbs();
  pago() {
    print('Pagodo');
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
                  pay.label(name: 'Detalle de la factura: '),
                  // pay.input(name:'Concepto de Pago', ayuda:'Detalle que compro',icon: Icons.description),
                  pay.input(name:'Codigo de factura*', ayuda:'Detalle que compro',icon: Icons.confirmation_num),
                  pay.input(name:'Entidad*', ayuda:'',icon: Icons.other_houses),
                  pay.input(name:'Cantidad*', ayuda:'',icon: Icons.monetization_on, number: true)
                ],
              ),
            ),

            Container(
                margin: const EdgeInsets.all(25.0) ,
                child: pay.boton(name: 'Realizar la Pago', context: context)
            ),
          ],
        ),

      ),
    );
  }
}
