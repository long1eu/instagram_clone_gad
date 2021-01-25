// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

part of auth_conatiners;

class PostsContainer extends StatelessWidget {
  const PostsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Post>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Post>>(
      converter: (Store<AppState> store) => store.state.posts.posts //
          .where((Post post) => store.state.auth.users[post.uid] != null)
          .toList(),
      builder: builder,
    );
  }
}
