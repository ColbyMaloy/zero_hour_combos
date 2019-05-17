import 'package:flutter_web/material.dart';

class Credits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            "Special thanks to those who helped figure out these combinations. \nI had no part in it, I've only put together this web app.",style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text(
              "Click here to contact me",
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (c) {
                    return Center(
                      child: Card(color:  Color(0xff484c75),
                          child: Container(
                            
                              width: 500,
                              height: 300,
                              child: Center(
                                child: Text(//https://www.reddit.com/r/raidsecrets/comments/bpbifd/zero_hour_outbreak_perfected_catalyst/
                                    "feel free to email me colbymaloydev@gmail.com",style: TextStyle(fontSize: 24),),
                              ))),
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}
