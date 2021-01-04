// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
]);

AppState _reducer(AppState state, dynamic action) {
  return state.rebuild((AppStateBuilder b) {});
}
