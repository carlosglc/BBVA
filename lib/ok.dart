import 'package:bbva/pay.dart';
import 'package:flutter/material.dart';

class Ok extends StatefulWidget {
  @override
  _OkState createState() => _OkState();
}

class _OkState extends State<Ok> {
  static const String _title = 'BBVA Invitados ';
  // This widget is the root of your application.
  static PayAbs pay = PayAbs();
  pago() {
    print('Okdo');
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
      body: Center(

      child: Container(

        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('Transaccion realizada con exito'),
          Container(
              margin: const EdgeInsets.all(25),
              child:
          Image.asset(
          "images/ok.gif",
          height: 125.0,
          width: 125.0,
        )),
          
          ElevatedButton.icon(
            icon: Icon(
              Icons.home,
              color: Colors.blueBackground,
              size: 24.0,
            ),
            label: Text('Volver al menu'),
            onPressed: () {
              print('Menu');
              Navigator.pushNamed(context, '/invitado');
            },
          ),
        ]


      ),
      ),
      ),
    );
  }
}
