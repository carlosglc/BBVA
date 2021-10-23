import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'option.dart';

class Invitado extends StatefulWidget {
  @override
  _InvitadoState createState() => _InvitadoState();
}

class _InvitadoState extends State<Invitado> {
  List<Option> option = [
    Option(url: '/transferencia', title: 'Transferencias', text:'Accede a una forma rapida de pago',icon:0),
    Option(url: '/pago', title: 'Pago de facturas',text:'Accede a una forma rapida de pago',icon:1),
    Option(url: '/recarga', title: 'Recargas',text:'Accede a una forma rapida de pago',icon:2),
    Option(url: '/compra', title: 'Comprar',text:'Accede a una forma rapida de pago',icon:3),
    Option(url: '/otro', title: 'Otros',text:'Accede a una forma rapida de pago',icon:4)
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'BBVA Invitados',
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
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Total de Puntos: 0 pts ', textAlign: TextAlign.right,),
                    Text('*Expiran en # Dias ', textAlign: TextAlign.right,style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    )),
                  ],
                )
            ),

            option[0].optionTemplate(context),
            option[1].optionTemplate(context),
            option[2].optionTemplate(context),
            option[3].optionTemplate(context),
            option[4].optionTemplate(context),
            Container(
              height: 50,
            )

          ],
          //children: option.map((option) => optionTemplate(option)).toList(),
        ),

      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print('Reclamar puntos');
        },
        label: const Text('Reclama tus puntos'),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.blueBackground,
      ),
    );
    //
  }
}
