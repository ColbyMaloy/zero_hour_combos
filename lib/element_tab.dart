import 'package:flutter_web/material.dart';
import 'package:zero_hour_web/combination_list_view.dart';

class ElementTabActivity extends StatelessWidget {
  final int index;
  ElementTabActivity({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("Top of list"),
          CombinationListView(
            index: index,
          ),
          Text("bottime of list"),
        ],
      ),
    );
  }
}
