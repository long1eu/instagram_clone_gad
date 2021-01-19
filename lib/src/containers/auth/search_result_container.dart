// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

part of auth_conatiners;

class SearchResultContainer extends StatelessWidget {
  const SearchResultContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<AppUser>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<AppUser>>(
      converter: (Store<AppState> store) => store.state.auth.searchResult.asList(),
      builder: builder,
    );
  }
}
