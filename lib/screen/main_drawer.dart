import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  static const routePerson = '/person_screen.dart';
  static const informationRoute = '/information_screen.dart';
  static const signUpRouter = '/signUp_screen.dart';
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/2.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'Md. Razun Mia',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'razun.neub.cse@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Profile',
                style: TextStyle(fontSize: 18),
              ),
              onTap: (){
                Navigator.of(context).pushNamed(routePerson);
              },
          ),
          ListTile(
              leading: Icon(Icons.info),
              title: Text(
                'Information',
                style: TextStyle(fontSize: 18),
              ),
              onTap: (){
                Navigator.of(context).pushNamed(informationRoute);
              },
          ),
          ListTile(
              leading: Icon(Icons.account_box),
              title: Text(
                'SignUp',
                style: TextStyle(fontSize: 18),
              ),
              onTap: (){
                Navigator.of(context).pushNamed(signUpRouter );
              },
          ),
          ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 18),
              ),
              onTap: null,
          ),
        ],
      ),
    );
  }
}
