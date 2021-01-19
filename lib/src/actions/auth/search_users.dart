// File created by
// Lung Razvan <long1eu>
// on 18/01/2021

part of auth_actions;

@freezed
abstract class SearchUsers with _$SearchUsers implements AppAction {
  const factory SearchUsers(String query) = SearchUsers$;

  const factory SearchUsers.successful(List<AppUser> users) = SearchUsersSuccessful;

  @Implements(ErrorAction)
  const factory SearchUsers.error(Object error) = SearchUsersError;
}
