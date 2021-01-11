// File created by
// Lung Razvan <long1eu>
// on 11/01/2021

part of auth_actions;

@freezed
abstract class Signup with _$Signup implements AppAction {
  const factory Signup(ActionResponse response) = Signup$;

  const factory Signup.successful(AppUser user) = SignupSuccessful;

  @Implements(ErrorAction)
  const factory Signup.error(Object error) = SignupError;
}
