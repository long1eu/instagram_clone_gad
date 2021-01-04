// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone_gad/src/init/init.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:redux/redux.dart';
import 'package:rxdart/rxdart.dart';

mixin InitMixin<S extends StatefulWidget> on State<S> {
  final Completer<Store<AppState>> _completer = Completer<Store<AppState>>();

  @override
  void initState() {
    super.initState();
    _initStore();
  }

  Future<void> _initStore() async {
    final List<dynamic> result = await ConcatStream<dynamic>(<Stream<dynamic>>[
      init().asStream(),
      Future<void>.delayed(const Duration(seconds: 3)).asStream(),
    ]).toList();

    _completer.complete(result[0]);
  }

  Future<Store<AppState>> get future => _completer.future;
}
