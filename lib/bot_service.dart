import 'dart:convert';
import 'dart:developer';

// import 'package:amazon_cognito_identity_dart_2/sig_v4.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sigv4/sigv4.dart';

class BotService {
  late Map<String,dynamic> result;
  String botName= "Blue";
  String kAccessKeyId = '<ACCESS_KEY>';
  String kSecretAccessKey = '<SECRET_ACCESS_KEY>';
  String botAlias= "<BOT_ALIAS>";
  String botAWSRegion= "us-east-1";

  Future<Map<String,dynamic>> callBot(String message) async {
    var response;

   // String requestUrl= "https://runtime.lex."+botAWSRegion+".amazonaws.com/bot/"+botName+"/alias/"+botAlias+"/user/1234/text";
    String requestUrl='https://console.aws.amazon.com/connect/v2/app/settings/overview?region=us-east-1&id=arn%3Aaws%3Aconnect%3Aus-east-1%3A208925580451%3Ainstance%2F78497e78-1591-490d-91c4-17383356b31b';
    Sigv4Client client = Sigv4Client(
      region: botAWSRegion,
      serviceName: 'lex',
      defaultContentType: 'application/json; charset=utf-8',
      keyId: kAccessKeyId,
      accessKey: kSecretAccessKey,
    );

    final request = client.request(
      requestUrl,
      method: 'POST',
      body: jsonEncode({'inputText': message}),
    );

    response = await http.post(request.url,
        headers: request.headers, body: request.body);
    result = jsonDecode(response.body);
    return result;
  }
}