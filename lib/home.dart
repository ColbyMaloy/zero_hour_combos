import 'package:flutter_web/material.dart';
import 'package:zero_hour_web/element_tab.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Tab> elementTabs = const [
    Tab(
      text: "Void",
    ),
    Tab(
      text: "Arc",
    ),
    Tab(
      text: "Solar",
    ),
  ];

  final List<ElementTabActivity> elementTabViews = [
    ElementTabActivity(index: 0,),
    ElementTabActivity(index: 1,),
    ElementTabActivity(index: 2,),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(backgroundColor: Colors.black54,
            appBar: AppBar(
              bottom: TabBar(
                tabs: elementTabs,
              ),
            ),
            body: TabBarView(
              children: elementTabViews,
            )));
  }
}
