import 'package:flutter/material.dart';

class Option {
  String title;
  String text;
  String url;
  int icon;
  Option({this.title="",this.text = "", this.url = "", this.icon=0});
  List<IconData> _icons = [Icons.attach_money ,Icons.sell ,Icons.phone_android_outlined, Icons.add_shopping_cart,Icons.more_horiz ];
  Widget optionTemplate(BuildContext context) {
    return InkWell(
      // When the user taps the button, show a snackbar.
      onTap: () {
        Navigator.pushNamed(context, url);
        // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        //   content: Text('Tap'),
        // ));
      },
      child: Card(
          margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
          color: Colors.blue,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text(this.title, style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),),
            subtitle: Text(
                this.text, style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
            ),),
            leading: Icon(_icons[this.icon])),
          )
      );
  }
}
