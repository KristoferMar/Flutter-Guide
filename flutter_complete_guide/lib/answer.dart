import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // Final means that the value wont change after initialized first time.
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        //  Ny removing perentersies we are making a pointer to function
        onPressed: selectHandler,
      ),
    );
  }
}
