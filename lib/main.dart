import 'dart:html';

import 'package:bbva/compra.dart';
import 'package:bbva/inicio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'option.dart';

void main(){
  runApp(MaterialApp(
    routes: {
      '/invitado': (context)=>Invitado(),
      '/compra':(context)=>Compra(),
    },
    initialRoute: '/invitado',
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   static const String _title = 'BBVA Invitados';
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
// //optionList()
//     return MaterialApp(
//         title: _title,
//         theme: ThemeData(
//           primarySwatch: Colors.blueBackground,
//         ),
//         home:OptionList(),
//         // Scaffold(
//         //   backgroundColor: Colors.grey[200],
//         //   appBar: AppBar(
//         //     title: Text(
//         //       'BBVA Invitados',
//         //       textAlign: TextAlign.left,
//         //     ),
//         //     centerTitle: false,
//         //     backgroundColor: Colors.blueBackground,
//         //   ),
//         //   body: Container(
//         //     child:
//         //         OptionList(),
//         //
//         //     ),
//         //   floatingActionButton: FloatingActionButton.extended(
//         //     onPressed: () {
//         //       print('Reclamar puntos');
//         //     },
//         //     label: const Text('Reclama tus puntos'),
//         //     icon: const Icon(Icons.thumb_up),
//         //     backgroundColor: Colors.blueBackground,
//         //   ),
//         //   ),
//         );
//   }
// }

// class OptionList extends StatefulWidget {
//   @override
//   _OptionListState createState() => _OptionListState();
// }
//
// class _OptionListState extends State<OptionList> {
//   List<Option> option = [
//     Option(url: '#', title: 'Transferencias', text:'Accede a una forma rapida de pago',icon:0),
//     Option(url: '#', title: 'Pago de facturas',text:'Accede a una forma rapida de pago',icon:1),
//     Option(url: '#', title: 'Recargas',text:'Accede a una forma rapida de pago',icon:2),
//     Option(url: '#', title: 'Comprar',text:'Accede a una forma rapida de pago',icon:3),
//     Option(url: '#', title: 'Otros',text:'Accede a una forma rapida de pago',icon:4)
//   ];
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         title: Text(
//           'BBVA Invitados',
//           textAlign: TextAlign.left,
//         ),
//         centerTitle: false,
//         backgroundColor: Colors.blueBackground,
//       ),
//       body: Container(
//         child:
//         ListView(
//           children: [
//             Container(
//                 margin: const EdgeInsets.all(10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Text('Total de Puntos: 0 pts ', textAlign: TextAlign.right,),
//                     Text('*Expiran en # Dias ', textAlign: TextAlign.right,style: TextStyle(
//                       fontSize: 10.0,
//                       fontWeight: FontWeight.bold,
//                     )),
//                   ],
//                 )
//             ),
//
//             option[0].optionTemplate(context),
//             option[1].optionTemplate(context),
//             option[2].optionTemplate(context),
//             option[3].optionTemplate(context),
//             option[4].optionTemplate(context),
//             Container(
//               height: 50,
//             )
//
//           ],
//           //children: option.map((option) => optionTemplate(option)).toList(),
//         ),
//
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           print('Reclamar puntos');
//         },
//         label: const Text('Reclama tus puntos'),
//         icon: const Icon(Icons.thumb_up),
//         backgroundColor: Colors.blueBackground,
//       ),
//     );
//     return ListView(
//       children: [
//         Container(
//           margin: const EdgeInsets.all(10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text('Total de Puntos: 0 pts ', textAlign: TextAlign.right,),
//               Text('*Expiran en # Dias ', textAlign: TextAlign.right,style: TextStyle(
//                 fontSize: 10.0,
//                   fontWeight: FontWeight.bold,
//               )),
//           ],
//           )
//         ),
//
//         option[0].optionTemplate(context),
//         option[1].optionTemplate(context),
//         option[2].optionTemplate(context),
//         option[3].optionTemplate(context),
//         option[4].optionTemplate(context),
//         Container(
//           height: 50,
//         )
//
//       ],
//       //children: option.map((option) => optionTemplate(option)).toList(),
//     );
//   }
// }
