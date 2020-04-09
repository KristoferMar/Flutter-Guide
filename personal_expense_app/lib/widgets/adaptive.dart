import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// This is an example of an adaptive flat button which is uptimized for both
// IOS and Android. This button can be insertet into an application and you
// Wont have to think about the configuring the button to IOS or android.
class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: handler,
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: handler,
          );
  }
}
