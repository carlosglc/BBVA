import 'dart:html';

import 'package:bbva/compra.dart';
import 'package:bbva/inicio.dart';
import 'package:bbva/ok.dart';
import 'package:bbva/otro.dart';
import 'package:bbva/pago.dart';
import 'package:bbva/recarga.dart';
import 'package:bbva/transferencia.dart';
import 'package:flutter/material.dart';

import 'bot.dart';
import 'login.dart';
import 'option.dart';

void main(){
  runApp(MaterialApp(
    routes: {
      '/invitado': (context)=>Invitado(),
      '/compra':(context)=>Compra(),
      '/ok':(context)=> Ok(),
      '/transferencia':(context)=> Transferencia(),
      '/pago':(context)=> Pago(),
      '/recarga':(context)=> Recarga(),
      '/otro':(context)=> Otro(),
      '/login':(context)=> LoginScreen(),
      '/bot':(context)=> BotScreen(),
    },
    initialRoute: '/login',
  ));
}

