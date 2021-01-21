import 'package:flutter/material.dart';
import 'package:flutter_expand_view/expand_child_widget.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Collapse view'),
      ),
      body: Column(
        children: [
          SizedBox(height: 100),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Flutter: Expansion/Collapse view', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),

                      ],
                    ),
                  ),
                  ExpandChildWidget(
                    arrowPadding: const EdgeInsets.only(bottom: 0),
                    expand: false,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width  - 50,
                                height: 100,
                                color: Colors.blueAccent,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      SizedBox(height: 100),
        ],
      ),
    );
  }
}
