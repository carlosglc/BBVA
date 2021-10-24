import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:uuid/uuid.dart';

import './bot_service.dart';

class BotScreen extends StatefulWidget {
  const BotScreen({Key? key}) : super(key: key);

  @override
  _BotScreenState createState() => _BotScreenState();
}

class _BotScreenState extends State<BotScreen> {
  List<types.Message> messages=[];
  final _user = const types.User(id: '1234556');
  final _bot = const types.User(id: "123");
//id of bot and user doesn't matter here as we have only pair interaction

  BotService _botService = BotService();
  String _response='';
  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  void _addMessage(types.Message message, String mns) async {
    setState(() {
      messages.insert(0, message);
    });
    // log("${message.toJson()["text"]}");
    //var data = await _botService.callBot(message.toJson()["text"]);
    String ruta = 'assets/invitado.json';

    if(mns.toLowerCase().contains("pago") ||
        mns.toLowerCase().contains("luz") ||
        mns.toLowerCase().contains("agua") ||
        mns.toLowerCase().contains("internet") ||
        mns.toLowerCase().contains("varios")){
      ruta = ruta = 'assets/pagos.json';
    }else if(mns.toLowerCase().contains("punto")){
      print('++++++++++++++++++++++++++++++++++++++++++++++++++++');
     ruta = 'assets/puntos.json';
    }else
    if(mns.toLowerCase().contains("recompesa") ||
        mns.toLowerCase().contains("recompensa")){
      ruta = ruta = 'assets/recompensas.json';
    }
    _response = await readJson(ruta);
    print(_response+ ruta+"+++++++");
    // log("#####${data['message']}");
    setState(() {
      //messages.insert(0, botMessageReply(data['message']));
      messages.insert(0, botMessageReply(_response));
    });
  }

  types.Message botMessageReply(String message) {
    return types.TextMessage(
      author: _bot,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message,
    );
  }
  Future<String> readJson(ruta) async {
    final String response = await rootBundle.loadString(ruta);
    final data = await json.decode(response);
    String answer = "Te pondre en contacto con un asesor";
    setState(() {

      answer = data["intentClosingSetting"]["closingResponse"]["messageGroupsList"][0]["message"]["plainTextMessage"]["value"];
      // print(_response);
    });
    return answer;
  }
  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage, message.text);
  }

  void _loadMessages() async {
    List<types.Message> messagesList = [];
    Future.delayed(Duration(milliseconds: 300), () {
      messagesList.add(types.TextMessage(
        author: _bot,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        text: "Hola mi nombre es Blue, soy tu asistente virtual, ¿En que puedo ayudarte?",
      ));

      setState(() {
        messages = messagesList;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(automaticallyImplyLeading: false,title:Text("BBVA - Blue Bot"),backgroundColor:Colors.blueBackground),
      body: Chat(
        messages: messages,
        showUserNames: true,
        onSendPressed: _handleSendPressed,
        user: _user,
      ),
    );
  }
}