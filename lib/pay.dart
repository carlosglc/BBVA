import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PayAbs {
  TextFormField card = TextFormField(
    decoration: const InputDecoration(
      icon: Icon(Icons.credit_card),
      hintText: 'Ingrese su numero de tarjeta',
      labelText: 'Numero de tarjeta *',
    ),
    keyboardType: TextInputType.number,
    inputFormatters: <TextInputFormatter>[
      FilteringTextInputFormatter.digitsOnly
    ],
    onSaved: (String? value) {
      // This optional block of code can be used to run
      // code when the user saves the form.
    },
    validator: (String? value) {
      print(value);
      return (value != null && value.contains(RegExp(r'\D'))) ? 'Ingrese solo numeros' : 'Data correcta';
    },
  );
  TextFormField cardCV = TextFormField(
    decoration: const InputDecoration(
      icon: Icon(Icons.credit_card),
      hintText: 'Ingrese su CV',
      labelText: 'Numero de CV *',
    ),
    onSaved: (String? value) {
      // This optional block of code can be used to run
      // code when the user saves the form.
    },
    validator: (String? value) {
      print(value);
      return (value != null && value.contains(RegExp(r'\D'))) ? 'Ingrese solo numeros' : null;
    },
  );
  Text label ({name:''}){
    return Text(
      name,
      textAlign: TextAlign.left,
    );
  }
  TextField input({name='1',ayuda='w', required IconData icon}){

    return TextField(
      decoration: InputDecoration(
        icon: Icon(icon),
        hintText: ayuda,
        labelText: name ,
      ),
    );
  }
  ElevatedButton boton({name='', funcion  }){
    return ElevatedButton(onPressed: ()=>{
      print('hola')
    }, child:Text(
      name
    ));
  }
}


