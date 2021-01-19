// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

part of auth_conatiners;

class PostInfoContainer extends StatelessWidget {
  const PostInfoContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<PostInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PostInfo>(
      converter: (Store<AppState> store) => store.state.posts.info,
      builder: builder,
    );
  }
}
