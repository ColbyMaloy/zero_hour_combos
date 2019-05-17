class ElementDataModel {
  final String c1;
  final String c2;
  final String c3;
  //final String color;
  final String terminal;
  bool isDone = false;

  ElementDataModel({
    this.c1,
    this.c2,
    this.c3,
    this.terminal,
   // this.color,
  });

  ElementDataModel.fromJson(Map<String, dynamic> json)
      : c1 = json["Console 1"],
        c2 = json["Console 2"],
        c3 = json["Console 3"],
       // color = json["color"],
        terminal = json["Terminal"];
}
