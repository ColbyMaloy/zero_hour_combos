import 'package:flutter_web/material.dart';
import 'package:http/http.dart' as http show get;
import 'package:zero_hour_web/view_models/element_view_model.dart';
import 'dart:convert';

import 'data_models/element_data_model.dart';

class CombinationListView extends StatelessWidget {
  final int index;

  CombinationListView({this.index});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchElement(index),
        builder: (BuildContext context,
            AsyncSnapshot<List<ElementDataModel>> items) {
          if (items.hasData) {
            return Container(
              height: 600,
              child: ListView.builder(padding: EdgeInsets.only(bottom: 200),
                itemCount: items.data.length,
                itemBuilder: (c, i) {
                  return ElementViewModel(items.data[i]);
                },
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

Future<List<ElementDataModel>> fetchElement(int item) async {
  final result = await http.get(
      "https://zerohour-d1ca6.firebaseio.com/elements/tabs/$item/configs.json");

  var mapList = json.decode(result.body);
  List<ElementDataModel> elementList = [];

  for (var item in mapList) {
    ElementDataModel model = ElementDataModel.fromJson(item);
    elementList.add(model);
  }

  return elementList;
}
