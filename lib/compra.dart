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
                  pay.input(name:'Codigo de cuenta', ayuda:'',icon: Icons.send)
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(25.0) ,
              child: pay.boton(name: 'Realizar la compra', funcion: pago())
            ),
          ],
        ),



        // Column(
        //   children: [
        //     Row(
        //       children: [
        //         Text("data"),
        //         TextFormField(
        //           decoration: const InputDecoration(
        //             icon: Icon(Icons.credit_card),
        //             hintText: 'Ingrese su numero de tarjeta',
        //             labelText: 'Numero de tarjeta *',
        //           ),
        //           onSaved: (String? value) {
        //             // This optional block of code can be used to run
        //             // code when the user saves the form.
        //           },
        //           validator: (String? value) {
        //             return (value != null && value.contains(RegExp(r'\D')))
        //                 ? 'Ingrese solo numeros'
        //                 : null;
        //           },
        //         ),
        //         // pay.card,
        //         // pay.cardCV,
        //       ],
        //     ),
        //     // pay.label(name: 'Concepto:'),
        //     // pay.input(name:'Concepto',ayuda:'Detalle de la compra',icon:Icons.description),
        //     // pay.label(name: 'Codigo de compra:'),
        //     // pay.input(name:'Codigo de compra',ayuda:'Ingrese el codigo de compra',icon:Icons.keyboard),
        //     // pay.boton(name: 'Realizar la compra', funcion: pago() )
        //   ],
        // ),
      ),
    );
  }
}
