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
    ElementTabActivity(
      index: 0,
    ),
    ElementTabActivity(
      index: 1,
    ),
    ElementTabActivity(
      index: 2,
    ),
  ];

//style="background:rgb(60, 63, 94);">
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Card(
          color: Colors.transparent,
          elevation: 50,
          child: Scaffold(
            backgroundColor: Color(0xff484c75),
            appBar: AppBar(
              backgroundColor: Color(0xff2e3047),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text("Click Here For Map"),
                    onPressed: () {
                      // ...
                      showDialog(
                          context: context,
                          builder: (c) {
                            return Center(
                              child: Card(
                                  child: Container(
                                width: 500,
                                height: 500,
                                child: Image.network(
                                  "https://firebasestorage.googleapis.com/v0/b/zerohour-d1ca6.appspot.com/o/pasted%20image%200.png?alt=media&token=b5fd2cb4-3efe-48f8-a25a-91303a8fa01b",
                                  fit: BoxFit.cover,
                                ),
                              )),
                            );
                          });
                    },
                  ),
                ), /* Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text("Tutorial by Datto"),
                    onPressed: () {
                      // ...
                    },
                  ),
                ), */
              ],
              bottom: TabBar(
                tabs: elementTabs,
              ),
            ),
            body: TabBarView(
              children: elementTabViews,
            ),
          ),
        ),
      ),
    );
  }
}
