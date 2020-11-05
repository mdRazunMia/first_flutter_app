import 'package:flutter/material.dart';

class PersonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Person pictures',
            style: TextStyle(fontSize: 25, color: Colors.green),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child: Image(
                    image: AssetImage('assets/2.jpg'),
                  ),
                ),
                Card(
                    child: Image(
                  image: AssetImage('assets/1.jpg'),
                )),
                SizedBox(
                  //Use of SizedBox
                  height: 30,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.arrow_back),
                  onPressed: (){
                    Navigator.of(context).pop();
                  }, 
                ),
                SizedBox(
                  //Use of SizedBox
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}
