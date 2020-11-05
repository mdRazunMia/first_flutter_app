import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
            children: [
              new Container(
                color: Colors.grey,
                child: SingleChildScrollView(
                  //clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.check_circle),
                        title: const Text(
                          'This is the first card that I have made by myself',
                          style: TextStyle(color: Colors.green),
                        ),
                        subtitle: Text(
                          '02-11-2020, Wednesday',
                          style: TextStyle(color: Colors.black.withOpacity(1)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'I am Bangladshi and I love my country more then myself.',
                          style: TextStyle(color: Colors.black.withOpacity(1)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          FlatButton(
                            textColor: const Color(0xFF6200EE),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: new Text('This is a dialog box'),
                                      content: new Text(
                                          'This is the alert box for button one'),
                                      actions: <Widget>[
                                        new FlatButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: new Text('Close')),
                                      ],
                                    );
                                  });
                            },
                            child: const Text('press button one'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Card(
                                child: Image(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1504618223053-559bdef9dd5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
                                ),
                              ),
                              SizedBox(
                                //Use of SizedBox
                                height: 30,
                              ),
                              Card(
                                child: Image(
                                  image: AssetImage('assets/2.jpg'),
                                ),
                              ),
                              SizedBox(
                                //Use of SizedBox
                                height: 30,
                              ),
                              Card(
                                child: Image(
                                  image: AssetImage('assets/1.jpg'),
                                ),
                              ),
                            ],
                          ),
                          FlatButton(
                            textColor: const Color(0xFF6200EE),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: new Text('This is a dialog box'),
                                      content: new Text(
                                          'This is the alert box for button two'),
                                      actions: <Widget>[
                                        new FlatButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: new Text('Close')),
                                      ],
                                    );
                                  });
                            },
                            child: const Text('press button two'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                color: Colors.white,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.check_circle),
                        title: const Text(
                          'This is the first card that I have made by myself',
                          style: TextStyle(color: Colors.green),
                        ),
                        subtitle: Text(
                          '02-11-2020, Wednesday',
                          style: TextStyle(color: Colors.black.withOpacity(1)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          FlatButton(
                            textColor: const Color(0xFF6200EE),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: new Text('This is a dialog box'),
                                      content: new Text(
                                          'This is the alert box for button one'),
                                      actions: <Widget>[
                                        new FlatButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: new Text('Close')),
                                      ],
                                    );
                                  });
                            },
                            child: const Text('press button one'),
                          ),
                          FlatButton(
                            textColor: const Color(0xFF6200EE),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: new Text('This is a dialog box'),
                                      content: new Text(
                                          'This is the alert box for button two'),
                                      actions: <Widget>[
                                        new FlatButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: new Text('Close')),
                                      ],
                                    );
                                  });
                            },
                            child: const Text('press button two'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                color: Colors.green,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.check_circle),
                            title: const Text(
                              'This is the first card that I have made by myself',
                              style: TextStyle(color: Colors.green),
                            ),
                            subtitle: Text(
                              '02-11-2020, Wednesday',
                              style:
                                  TextStyle(color: Colors.black.withOpacity(1)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              FlatButton(
                                textColor: const Color(0xFF6200EE),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title:
                                              new Text('This is a dialog box'),
                                          content: new Text(
                                              'This is the alert box for button one'),
                                          actions: <Widget>[
                                            new FlatButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: new Text('Close')),
                                          ],
                                        );
                                      });
                                },
                                child: const Text('press button one'),
                              ),
                              FlatButton(
                                textColor: const Color(0xFF6200EE),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title:
                                              new Text('This is a dialog box'),
                                          content: new Text(
                                              'This is the alert box for button two'),
                                          actions: <Widget>[
                                            new FlatButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: new Text('Close')),
                                          ],
                                        );
                                      });
                                },
                                child: const Text('press button two'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text('This is the third navigation screen',
                        style: TextStyle(color: Colors.pink)),
                    Text('I want to be a good flutter apps developer',
                        style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
            ],
          );
  }
}