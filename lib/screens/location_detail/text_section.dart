import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _horizontalPadding = 16.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            child: Text(_title, style: Theme.of(context).textTheme.title,),
            padding: const EdgeInsets.fromLTRB(
                _horizontalPadding, 32.0, _horizontalPadding, 4.0)),
        Container(
          child: Text(_body, style: Theme.of(context).textTheme.body1),
          padding: const EdgeInsets.fromLTRB(
              _horizontalPadding, 10.0, _horizontalPadding, _horizontalPadding),
        )
      ],
    );
  }
}
