// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone_gad/src/actions/index.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:instagram_clone_gad/src/presentation/routes.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Builder(
            builder: (BuildContext context) {
              return Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (String value) {
                      StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(email: value));
                    },
                    validator: (String value) {
                      if (!value.contains('@') || !value.contains('.')) {
                        return 'Please enter a valid email address';
                      }

                      return null;
                    },
                  ),
                  const Spacer(),
                  FlatButton(
                    child: const Text('Continue'),
                    onPressed: () {
                      if (Form.of(context).validate()) {
                        Navigator.pushNamed(context, AppRoutes.username);
                      }
                    },
                  ),
                  const Divider(),
                  Text.rich(
                    TextSpan(
                      text: 'Already have an account? ',
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Login!',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.popUntil(context, ModalRoute.withName(AppRoutes.home));
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
