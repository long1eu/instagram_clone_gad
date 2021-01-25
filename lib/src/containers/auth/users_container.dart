// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

part of auth_conatiners;

class UsersContainer extends StatelessWidget {
  const UsersContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Map<String, AppUser>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, AppUser>>(
      converter: (Store<AppState> store) => store.state.auth.users.asMap(),
      builder: builder,
    );
  }
}
