class ElementDataModel {
  final String c1;
  final String c2;
  final String c3;
  final String color;
  final int terminal;

  ElementDataModel({
    this.c1,
    this.c2,
    this.c3,
    this.terminal,
    this.color,
  });

  ElementDataModel.fromJson(Map<String, dynamic> json)
      : c1 = json["c1"],
        c2 = json["c2"],
        c3 = json["c3"],
        color = json["color"],
        terminal = json["t"];
}
