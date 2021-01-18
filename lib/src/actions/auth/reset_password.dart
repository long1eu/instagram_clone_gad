// File created by
// Lung Razvan <long1eu>
// on 11/01/2021

part of auth_actions;

@freezed
abstract class ResetPassword with _$ResetPassword implements AppAction {
  const factory ResetPassword(String email) = ResetPassword$;

  const factory ResetPassword.successful() = ResetPasswordSuccessful;

  @Implements(ErrorAction)
  const factory ResetPassword.error(Object error) = ResetPasswordError;
}
