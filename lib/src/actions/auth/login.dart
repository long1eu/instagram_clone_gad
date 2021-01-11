// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

part of auth_actions;

@freezed
abstract class Login with _$Login implements AppAction {
  const factory Login({@required String email, @required String password, @required ActionResponse response}) = Login$;

  const factory Login.successful(AppUser user) = LoginSuccessful;

  @Implements(ErrorAction)
  const factory Login.error(Object error) = LoginError;
}
