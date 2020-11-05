import 'package:flutter/material.dart';
import './screen/person_screen.dart';

import './screen/main_drawer.dart';
import './widgets/tabBar_widget.dart';
import './screen/information_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: TabsExample(),
      routes:{
        '/': (_) => TabsExample(),
          MainDrawer.routePerson : (_) => PersonScreen(),
          MainDrawer.informationRoute : (_) => InformationScreen(),
      },
    );
  }
}

class TabsExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabState();
  }
}

class TabState extends State<TabsExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: AppBar(
            title: Text('My First Flutter App'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.contact_phone)),
                Tab(icon: Icon(Icons.contact_phone)),
                Tab(icon: Icon(Icons.border_color))
              ],
            ),
          ),
          drawer: MainDrawer(),
          body: TabBarWidget(),
        ),
    );
  }
}
