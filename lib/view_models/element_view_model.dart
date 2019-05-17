import 'package:flutter_web/material.dart';
import 'package:zero_hour_web/data_models/element_data_model.dart';

class ElementViewModel extends StatefulWidget {
  final ElementDataModel _model;

  ElementViewModel(this._model) {}

  @override
  _ElementViewModelState createState() => _ElementViewModelState();
}

class _ElementViewModelState extends State<ElementViewModel> {
  Color _color;

  double fontSize = 20;

  //bool _value = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _color = getContainerColor(widget._model.terminal);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: Card(
        color: widget._model.isDone ? Colors.black : _color,
        child: CheckboxListTile(
          value: widget._model.isDone,
          onChanged: (value) {
            setState(() {
              widget._model.isDone = !widget._model.isDone;
              //_value = widget._model.isDone;
            });
          },
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          widget._model.c1, textAlign: TextAlign.center,
                          // overflow: TextOverflow.visible,
                          style: TextStyle(fontSize: fontSize),
                        ),
                        Text(
                          "TERMINAL 1",
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 10),
                        )
                      ],
                    )),
                Container(
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          widget._model.c2, textAlign: TextAlign.center,
                          // overflow: TextOverflow.visible,
                          style: TextStyle(fontSize: fontSize),
                        ),
                        Text(
                          "TERMINAL 2",
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 10),
                        )
                      ],
                    )),
                Container(
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          widget._model.c3, textAlign: TextAlign.center,
                          // overflow: TextOverflow.visible,
                          style: TextStyle(fontSize: fontSize),
                        ),
                        Text(
                          "TERMINAL 3",
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 10),
                        )
                      ],
                    )),
                Container(
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          widget._model.terminal, textAlign: TextAlign.center,
                          // overflow: TextOverflow.visible,
                          style: TextStyle(fontSize: fontSize),
                        ),
                        Text(
                          "SOLUTION",
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 10),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color getContainerColor(String terminalString) {
    Color color;
    print("object");
    String switcher = terminalString[0];

    switch (switcher) {
      case "w":
        color = Colors.white70;
        break;
      case "g":
        color = Colors.green[400];
        break;
      case "y":
        color = Colors.yellow[300];
        break;
      case "r":
        color = Colors.red[300];
        break;
      case "p":
        color = Colors.purple[300];
        break;
      case "b":
        color = Colors.blue;
        break;
      case "c":
        color = Colors.cyan;
        break;

      ///
      ///
      case "W":
        color = Colors.white70;
        break;
      case "G":
        color = Colors.green[400];
        break;
      case "Y":
        color = Colors.yellow[300];
        break;
      case "R":
        color = Colors.red[300];
        break;
      case "P":
        color = Colors.purple[300];
        break;
      case "B":
        color = Colors.blue;
        break;
      case "C":
        color = Colors.cyan;
        break;
    }
    return color;
  }
}
