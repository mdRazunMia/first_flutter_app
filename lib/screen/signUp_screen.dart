import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() {
    return _SignUpScreenState();
  }
}

// ignore: missing_return
String passwordLengthValidator(value){
  if(value.isEmpty){
    return "Required *";
  }else if(value.length < 6){
    return "Password should be at least 6 charaters";
  }else if(value.length >= 15){
    return "Password should be less then 15 characters";
  }else{
    return null;
  }
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            autovalidate: true,
            key: _formKey,
            child: SingleChildScrollView(
              // crossAxisAlignment: CrossAxisAlignment.center,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Name';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                      validator: MultiValidator(
                        [
                          RequiredValidator(errorText: "Required *"),
                          EmailValidator(errorText: "Not A Valid Email"),
                        ]
                      ),
                      // validator: (value) {
                      //   if (value.isEmpty) {
                      //     return 'Please enter Email';
                      //   }
                      //   return null;
                      // },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                      validator: passwordLengthValidator,
                      //obscureText: false,
                      //MinLengthValidator(6, errorText: "Should be at least 6 character"),
                      // validator: (value) {
                      //   if (value.isEmpty) {
                      //     return 'Please enter password';
                      //   }
                      //   return null;
                      // },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data')));
                        }
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 25, color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
