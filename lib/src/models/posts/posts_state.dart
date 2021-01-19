// File created by
// Lung Razvan <long1eu>
// on 18/01/2021

part of posts_models;

abstract class PostsState implements Built<PostsState, PostsStateBuilder> {
  factory PostsState([void Function(PostsStateBuilder b) updates]) = _$PostsState;

  factory PostsState.initialState() {
    return _$PostsState();
  }

  factory PostsState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  PostsState._();

  PostInfo get info;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<PostsState> get serializer => _$postsStateSerializer;
}
