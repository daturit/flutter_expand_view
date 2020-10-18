import 'package:flutter/material.dart';


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
      body: Container(
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
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Flutter: Expansion/Collapse view', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),

                  ],
                ),
              ),
//              ExpandChildWidget(
//                arrowPadding: const EdgeInsets.only(bottom: 0),
//                expand: false,
//                child: Column(
//                  children: <Widget>[
//                    Container(
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                        children: [
//                          _buildComponentInfoUser(
//                              context,
//                              'common_pl'.tr(),
//                              const Text('123'),
//                              'assets/images/icons/Ic_14_PL@1.5x.svg'),
//                          Container(
//                            width: 1,
//                            height: 30,
//                            color: Colors.grey,
//                          ),
//                          _buildComponentInfoUser(
//                              context,
//                              'common_risk'.tr(),
//                              const Text('123'),
//                              'assets/images/icons/Ic_14_white_risk@1.5x.svg'),
//                        ],
//                      ),
//                    )
//                  ],
//                ),
//              ),
            ],
          ),
        ),
      ),
    );
  }
}
