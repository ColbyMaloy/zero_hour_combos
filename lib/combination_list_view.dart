import 'package:flutter_web/material.dart';
import 'package:http/http.dart' as http show get;
import 'dart:convert';

import 'package:zero_hour_web/element_view_model.dart';

import 'element_data_model.dart';

class CombinationListView extends StatelessWidget {
  final int index;

  CombinationListView({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Colors.indigo[700],
      child: FutureBuilder(
          future: fetchElement(index),
          builder: (BuildContext context,
              AsyncSnapshot<List<ElementDataModel>> items) {
            if (items.hasData) {
              print(items.data[0].c1);
              return ListView.builder(
                itemCount: items.data.length,
                itemBuilder: (c,i){
                   return ListTile(
                    title: Text(items.data[i].c1),
                    subtitle: Text("Terminal"+items.data[index].terminal.toString()),
                  );
                },
                
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}

Future<List<ElementDataModel>> fetchElement(int item) async {
  print("Starteddddd");
  final result = await http.get(
      "https://zerohour-d1ca6.firebaseio.com/elements/tabs/$item/configs.json");

  var mapList = json.decode(result.body);
  List<ElementDataModel> elementList = [];

  for (var item in mapList) {
    ElementDataModel model = ElementDataModel.fromJson(item);
    elementList.add(model);
    print("MODEL");
    print(model.c1);
  }
  print(mapList);
  print("mapList");

  return elementList;
}
