// File created by
// Lung Razvan <long1eu>
// on 11/01/2021

part of auth_actions;

@freezed
abstract class UpdateRegistrationInfo with _$UpdateRegistrationInfo implements AppAction {
  const factory UpdateRegistrationInfo({
    String email,
    String password,
    String username,
  }) = UpdateRegistrationInfo$;
}
