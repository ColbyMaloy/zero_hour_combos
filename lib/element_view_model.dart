import 'package:flutter_web/material.dart';
import 'package:zero_hour_web/element_data_model.dart';

class ElementViewModel extends StatelessWidget {
  final ElementDataModel _model;
  Color _color;
  ElementViewModel(this._model) {
    print("element view");
    _color = getContainerColor(_model.color);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
      child: Text(
        _model.c1,
      ),
    );
  }

  Color getContainerColor(String terminalString) {
    Color color;
    switch (terminalString) {
      case "w":
        color = Colors.white;
        break;
      case "g":
        color = Colors.green;
        break;
      case "y":
        color = Colors.yellow;
        break;
      case "r":
        color = Colors.red;
        break;
      case "p":
        color = Colors.purple;
        break;
      case "b":
        color = Colors.blue;
        break;
      case "c":
        color = Colors.cyan;
        break;
    }
    return color;
  }
}
