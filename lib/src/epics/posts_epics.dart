// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'package:instagram_clone_gad/src/actions/index.dart';
import 'package:instagram_clone_gad/src/data/posts_api.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class PostsEpics {
  const PostsEpics({@required PostsApi api})
      : assert(api != null),
        _api = api;

  final PostsApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, CreatePost$>(_createPost),
      TypedEpic<AppState, ListenForPosts$>(_listenForPosts),
    ]);
  }

  Stream<AppAction> _createPost(Stream<CreatePost$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreatePost$ action) => Stream<CreatePost$>.value(action)
            .asyncMap((CreatePost$ action) => _api.createPost(store.state.posts.info, store.state.auth.user.uid))
            .map((Post post) => CreatePost.successful(post))
            .onErrorReturnWith((dynamic error) => CreatePost.error(error)));
  }

  Stream<AppAction> _listenForPosts(Stream<ListenForPosts$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ListenForPosts$ action) => Stream<ListenForPosts$>.value(action)
            .asyncMap((ListenForPosts$ action) => _api.listenForPosts(<String>[
                  store.state.auth.user.uid,
                  ...store.state.auth.user.following,
                ]))
            .expand((List<Post> posts) => <AppAction>[
                  ListenForPosts.successful(posts),
                  ...posts
                      .map((Post post) => post.uid)
                      .toSet()
                      .where((String uid) => store.state.auth.users[uid] == null)
                      .map((String uid) => GetUser(uid)),
                ])
            .onErrorReturnWith((dynamic error) => ListenForPosts.error(error)));
  }
}
