// File created by
// Lung Razvan <long1eu>
// on 25/01/2021

part of posts_actions;

@freezed
abstract class ListenForPosts with _$ListenForPosts implements AppAction {
  const factory ListenForPosts() = ListenForPosts$;

  const factory ListenForPosts.successful(List<Post> posts) = ListenForPostsSuccessful;

  @Implements(ErrorAction)
  const factory ListenForPosts.error(Object error) = ListenForPostsError;
}
