
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:instagram_clone_gad/src/presentation/mixin/init_mixin.dart';
import 'package:instagram_clone_gad/src/presentation/routes.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(const InstagramClone());
}

class InstagramClone extends StatefulWidget {
  const InstagramClone({Key key}) : super(key: key);

  @override
  _InstagramCloneState createState() => _InstagramCloneState();
}

class _InstagramCloneState extends State<InstagramClone> with InitMixin<InstagramClone> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          final Store<AppState> store = snapshot.data;

          return StoreProvider<AppState>(
            store: store,
            child: MaterialApp(
              title: 'Instagram clone',
              theme: ThemeData.dark(),
              routes: AppRoutes.routes,
            ),
          );
        } else {
          if (snapshot.hasError) {
            throw snapshot.error;
          }

          return MaterialApp(
            title: 'Instagram clone',
            theme: ThemeData.dark(),
            home: const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
