// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'package:instagram_clone_gad/src/actions/index.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:instagram_clone_gad/src/reducer/auth_reducer.dart';
import 'package:instagram_clone_gad/src/reducer/posts_reducer.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState, SignOutSuccessful>(_signOutSuccessful),
]);

AppState _reducer(AppState state, dynamic action) {
  print(action);
  return state.rebuild((AppStateBuilder b) {
    b
      ..auth = authReducer(state.auth, action).toBuilder()
      ..posts = postsReducer(state.posts, action).toBuilder();
  });
}

AppState _signOutSuccessful(AppState state, SignOutSuccessful action) {
  return AppState.initialState();
}
