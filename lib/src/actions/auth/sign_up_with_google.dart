// File created by
// Lung Razvan <long1eu>
// on 11/01/2021

part of auth_actions;

@freezed
abstract class SignUpWithGoogle with _$SignUpWithGoogle implements AppAction {
  const factory SignUpWithGoogle(ActionResponse response) = SignUpWithGoogle$;

  const factory SignUpWithGoogle.successful(AppUser user) = SignUpWithGoogleSuccessful;

  @Implements(ErrorAction)
  const factory SignUpWithGoogle.error(StateError error) = SignUpWithGoogleError;
}
