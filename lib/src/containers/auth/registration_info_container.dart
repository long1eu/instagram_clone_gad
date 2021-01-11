// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

part of auth_conatiners;

class RegistrationInfoContainer extends StatelessWidget {
  const RegistrationInfoContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<RegistrationInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RegistrationInfo>(
      converter: (Store<AppState> store) => store.state.auth.info,
      builder: builder,
    );
  }
}
