// File created by
// Lung Razvan <long1eu>
// on 11/01/2021

part of auth_actions;

@freezed
abstract class SignOut with _$SignOut implements AppAction {
  const factory SignOut() = SignOut$;

  const factory SignOut.successful() = SignOutSuccessful;

  @Implements(ErrorAction)
  const factory SignOut.error(StateError error) = SignOutError;
}
