# flutter_expand_view

Flutter Expansion Collapse view is a flutter plugin that helps you make a Expansion Collapse view. Create Expansion Collapse view has never been easier and faster

## Animation
<p>
<img src="https://media.giphy.com/media/KJO4pC9dwLms5o4IAv/giphy.gif?raw=true" align = "center" height = "650px">
</p>

<p>
<img src = "https://github.com/daturit/flutter_expand_view/blob/main/flutter_expand_view/intro1.png?raw=true" align = "center" height = "550px"/>
<img src = "https://github.com/daturit/flutter_expand_view/blob/main/flutter_expand_view/intro2.png?raw=true" align = "center" height = "550px"/>
</p>

<p>
<img src="https://media.giphy.com/media/KJO4pC9dwLms5o4IAv/giphy.gif?raw=true" align = "center" height = "650px">
</p>

## Example Project

There is a example project in the `example` folder. Check it out. Otherwise, keep reading to get up and running.

## Usage

**Custom Numbers**

```dart
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
          SizedBox(height: 100,),
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
        ],
      ),
    );
  }
}


```

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
