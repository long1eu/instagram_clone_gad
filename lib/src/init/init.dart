// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'package:instagram_clone_gad/src/epics/app_epics.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:instagram_clone_gad/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<Store<AppState>> init() async {
  const AppEpics epic = AppEpics();

  return Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  );
}
