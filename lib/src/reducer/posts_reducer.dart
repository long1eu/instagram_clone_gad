// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'package:built_collection/built_collection.dart';
import 'package:instagram_clone_gad/src/actions/posts/index.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<PostsState> postsReducer = combineReducers(<Reducer<PostsState>>[
  TypedReducer<PostsState, UpdatePostInfo>(_updatePostInfo),
]);

PostsState _updatePostInfo(PostsState state, UpdatePostInfo action) {
  return state.rebuild((PostsStateBuilder b) {
    if (action.addImage != null) {
      b.info.paths.add(action.addImage);
    } else if (action.removeImage != null) {
      b.info.paths.remove(action.removeImage);
    } else if (action.description != null) {
      final List<String> tags =
          RegExp('\#([a-zA-Z0-9]+)').allMatches(action.description).map((RegExpMatch match) => match.group(1)).toList();

      b.info
        ..description = action.description
        ..tags = ListBuilder<String>(tags);
    } else if (action.addUser != null) {
      b.info.users.add(action.addUser);
    } else if (action.removeUser != null) {
      b.info.users.remove(action.removeUser);
    } else if (action.lat != null && action.lng != null) {
      b.info
        ..lat = action.lat
        ..lng = action.lng;
    } else {
      b.info = PostInfo().toBuilder();
    }
  });
}
