// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone_gad/src/actions/index.dart';
import 'package:instagram_clone_gad/src/containers/auth/index.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:instagram_clone_gad/src/presentation/routes.dart';

class UsernamePage extends StatelessWidget {
  const UsernamePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Username'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Builder(
              builder: (BuildContext context) {
                return Column(
                  children: <Widget>[
                    RegistrationInfoContainer(
                      builder: (BuildContext context, RegistrationInfo info) {
                        return TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'username',
                          ),
                          initialValue: info.email.split('@').first,
                          keyboardType: TextInputType.name,
                          onChanged: (String value) {
                            StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(username: value));
                          },
                          validator: (String value) {
                            if (value.length < 3) {
                              return 'Please choose a bigger username';
                            }

                            return null;
                          },
                        );
                      },
                    ),
                    const Spacer(),
                    FlatButton(
                      child: const Text('Continue'),
                      onPressed: () {
                        if (Form.of(context).validate()) {
                          Navigator.pushNamed(context, AppRoutes.password);
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
      ),
    );
  }
}
