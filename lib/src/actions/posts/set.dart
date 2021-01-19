// File created by
// Lung Razvan <long1eu>
// on 11/01/2021

part of posts_actions;

@freezed
abstract class UpdatePostInfo with _$UpdatePostInfo implements AppAction {
  const factory UpdatePostInfo({
    String addImage,
    String removeImage,
    String description,
    double lng,
    double lat,
    AppUser addUser,
    AppUser removeUser,
  }) = UpdatePostInfo$;
}
