// File created by
// Lung Razvan <long1eu>
// on 18/01/2021

part of posts_models;

abstract class PostInfo implements Built<PostInfo, PostInfoBuilder> {
  factory PostInfo([void Function(PostInfoBuilder b) updates]) = _$PostInfo;

  factory PostInfo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  PostInfo._();

  BuiltList<String> get paths;

  BuiltList<String> get tags;

  @nullable
  String get description;

  BuiltList<AppUser> get users;

  @nullable
  double get lng;

  @nullable
  double get lat;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<PostInfo> get serializer => _$postInfoSerializer;
}
