import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('Flutter Weather App'),
          ),
          body: Center(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(22.3),
                      child: Center(
                        child: Text(
                          ' 72 °F/ 22.2°C',textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontSize: 45.3),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: <Widget>[
                              Text('New York', style: new TextStyle(color: Colors.white,fontSize: 45.2)),

                          Text('Sunny', style: new TextStyle(color: Colors.white, fontSize: 32.0,)),
                             Text(' 22-07-2020', style: new TextStyle(color: Colors.white)),
                          Text('18:30', style: new TextStyle(color: Colors.white)),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: new Icon(Icons.wb_sunny),
                        iconSize: 85.6,
                         tooltip: 'Sunny',

                        onPressed: () {},
                        color: Colors.yellowAccent,
                      ),
                    )

                  ]
              )
          ),
        floatingActionButton: new FloatingActionButton(
        onPressed: (){},
        tooltip: 'useless key',
        child: new Icon(Icons.more_horiz),
      )
      ),
    );
  }
}

