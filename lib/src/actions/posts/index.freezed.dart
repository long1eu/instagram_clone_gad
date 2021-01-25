// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of posts_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreatePostTearOff {
  const _$CreatePostTearOff();

// ignore: unused_element
  CreatePost$ call() {
    return const CreatePost$();
  }

// ignore: unused_element
  CreatePostSuccessful successful(Post post) {
    return CreatePostSuccessful(
      post,
    );
  }

// ignore: unused_element
  CreatePostError error(Object error) {
    return CreatePostError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreatePost = _$CreatePostTearOff();

/// @nodoc
mixin _$CreatePost {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Post post),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Post post),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreatePost$ value), {
    @required Result successful(CreatePostSuccessful value),
    @required Result error(CreatePostError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreatePost$ value), {
    Result successful(CreatePostSuccessful value),
    Result error(CreatePostError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CreatePostCopyWith<$Res> {
  factory $CreatePostCopyWith(
          CreatePost value, $Res Function(CreatePost) then) =
      _$CreatePostCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePostCopyWithImpl<$Res> implements $CreatePostCopyWith<$Res> {
  _$CreatePostCopyWithImpl(this._value, this._then);

  final CreatePost _value;
  // ignore: unused_field
  final $Res Function(CreatePost) _then;
}

/// @nodoc
abstract class $CreatePost$CopyWith<$Res> {
  factory $CreatePost$CopyWith(
          CreatePost$ value, $Res Function(CreatePost$) then) =
      _$CreatePost$CopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePost$CopyWithImpl<$Res> extends _$CreatePostCopyWithImpl<$Res>
    implements $CreatePost$CopyWith<$Res> {
  _$CreatePost$CopyWithImpl(
      CreatePost$ _value, $Res Function(CreatePost$) _then)
      : super(_value, (v) => _then(v as CreatePost$));

  @override
  CreatePost$ get _value => super._value as CreatePost$;
}

/// @nodoc
class _$CreatePost$ implements CreatePost$ {
  const _$CreatePost$();

  @override
  String toString() {
    return 'CreatePost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreatePost$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Post post),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Post post),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreatePost$ value), {
    @required Result successful(CreatePostSuccessful value),
    @required Result error(CreatePostError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreatePost$ value), {
    Result successful(CreatePostSuccessful value),
    Result error(CreatePostError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreatePost$ implements CreatePost {
  const factory CreatePost$() = _$CreatePost$;
}

/// @nodoc
abstract class $CreatePostSuccessfulCopyWith<$Res> {
  factory $CreatePostSuccessfulCopyWith(CreatePostSuccessful value,
          $Res Function(CreatePostSuccessful) then) =
      _$CreatePostSuccessfulCopyWithImpl<$Res>;
  $Res call({Post post});
}

/// @nodoc
class _$CreatePostSuccessfulCopyWithImpl<$Res>
    extends _$CreatePostCopyWithImpl<$Res>
    implements $CreatePostSuccessfulCopyWith<$Res> {
  _$CreatePostSuccessfulCopyWithImpl(
      CreatePostSuccessful _value, $Res Function(CreatePostSuccessful) _then)
      : super(_value, (v) => _then(v as CreatePostSuccessful));

  @override
  CreatePostSuccessful get _value => super._value as CreatePostSuccessful;

  @override
  $Res call({
    Object post = freezed,
  }) {
    return _then(CreatePostSuccessful(
      post == freezed ? _value.post : post as Post,
    ));
  }
}

/// @nodoc
class _$CreatePostSuccessful implements CreatePostSuccessful {
  const _$CreatePostSuccessful(this.post) : assert(post != null);

  @override
  final Post post;

  @override
  String toString() {
    return 'CreatePost.successful(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatePostSuccessful &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(post);

  @override
  $CreatePostSuccessfulCopyWith<CreatePostSuccessful> get copyWith =>
      _$CreatePostSuccessfulCopyWithImpl<CreatePostSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Post post),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(post);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Post post),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreatePost$ value), {
    @required Result successful(CreatePostSuccessful value),
    @required Result error(CreatePostError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreatePost$ value), {
    Result successful(CreatePostSuccessful value),
    Result error(CreatePostError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreatePostSuccessful implements CreatePost {
  const factory CreatePostSuccessful(Post post) = _$CreatePostSuccessful;

  Post get post;
  $CreatePostSuccessfulCopyWith<CreatePostSuccessful> get copyWith;
}

/// @nodoc
abstract class $CreatePostErrorCopyWith<$Res> {
  factory $CreatePostErrorCopyWith(
          CreatePostError value, $Res Function(CreatePostError) then) =
      _$CreatePostErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$CreatePostErrorCopyWithImpl<$Res> extends _$CreatePostCopyWithImpl<$Res>
    implements $CreatePostErrorCopyWith<$Res> {
  _$CreatePostErrorCopyWithImpl(
      CreatePostError _value, $Res Function(CreatePostError) _then)
      : super(_value, (v) => _then(v as CreatePostError));

  @override
  CreatePostError get _value => super._value as CreatePostError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(CreatePostError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$CreatePostError implements CreatePostError {
  const _$CreatePostError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'CreatePost.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatePostError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $CreatePostErrorCopyWith<CreatePostError> get copyWith =>
      _$CreatePostErrorCopyWithImpl<CreatePostError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(Post post),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(Post post),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(CreatePost$ value), {
    @required Result successful(CreatePostSuccessful value),
    @required Result error(CreatePostError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(CreatePost$ value), {
    Result successful(CreatePostSuccessful value),
    Result error(CreatePostError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreatePostError implements CreatePost, ErrorAction {
  const factory CreatePostError(Object error) = _$CreatePostError;

  Object get error;
  $CreatePostErrorCopyWith<CreatePostError> get copyWith;
}

/// @nodoc
class _$ListenForPostsTearOff {
  const _$ListenForPostsTearOff();

// ignore: unused_element
  ListenForPosts$ call() {
    return const ListenForPosts$();
  }

// ignore: unused_element
  ListenForPostsSuccessful successful(List<Post> posts) {
    return ListenForPostsSuccessful(
      posts,
    );
  }

// ignore: unused_element
  ListenForPostsError error(Object error) {
    return ListenForPostsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListenForPosts = _$ListenForPostsTearOff();

/// @nodoc
mixin _$ListenForPosts {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Post> posts),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Post> posts),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ListenForPosts$ value), {
    @required Result successful(ListenForPostsSuccessful value),
    @required Result error(ListenForPostsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForPosts$ value), {
    Result successful(ListenForPostsSuccessful value),
    Result error(ListenForPostsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ListenForPostsCopyWith<$Res> {
  factory $ListenForPostsCopyWith(
          ListenForPosts value, $Res Function(ListenForPosts) then) =
      _$ListenForPostsCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForPostsCopyWithImpl<$Res>
    implements $ListenForPostsCopyWith<$Res> {
  _$ListenForPostsCopyWithImpl(this._value, this._then);

  final ListenForPosts _value;
  // ignore: unused_field
  final $Res Function(ListenForPosts) _then;
}

/// @nodoc
abstract class $ListenForPosts$CopyWith<$Res> {
  factory $ListenForPosts$CopyWith(
          ListenForPosts$ value, $Res Function(ListenForPosts$) then) =
      _$ListenForPosts$CopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForPosts$CopyWithImpl<$Res>
    extends _$ListenForPostsCopyWithImpl<$Res>
    implements $ListenForPosts$CopyWith<$Res> {
  _$ListenForPosts$CopyWithImpl(
      ListenForPosts$ _value, $Res Function(ListenForPosts$) _then)
      : super(_value, (v) => _then(v as ListenForPosts$));

  @override
  ListenForPosts$ get _value => super._value as ListenForPosts$;
}

/// @nodoc
class _$ListenForPosts$ implements ListenForPosts$ {
  const _$ListenForPosts$();

  @override
  String toString() {
    return 'ListenForPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListenForPosts$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Post> posts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Post> posts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ListenForPosts$ value), {
    @required Result successful(ListenForPostsSuccessful value),
    @required Result error(ListenForPostsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForPosts$ value), {
    Result successful(ListenForPostsSuccessful value),
    Result error(ListenForPostsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ListenForPosts$ implements ListenForPosts {
  const factory ListenForPosts$() = _$ListenForPosts$;
}

/// @nodoc
abstract class $ListenForPostsSuccessfulCopyWith<$Res> {
  factory $ListenForPostsSuccessfulCopyWith(ListenForPostsSuccessful value,
          $Res Function(ListenForPostsSuccessful) then) =
      _$ListenForPostsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Post> posts});
}

/// @nodoc
class _$ListenForPostsSuccessfulCopyWithImpl<$Res>
    extends _$ListenForPostsCopyWithImpl<$Res>
    implements $ListenForPostsSuccessfulCopyWith<$Res> {
  _$ListenForPostsSuccessfulCopyWithImpl(ListenForPostsSuccessful _value,
      $Res Function(ListenForPostsSuccessful) _then)
      : super(_value, (v) => _then(v as ListenForPostsSuccessful));

  @override
  ListenForPostsSuccessful get _value =>
      super._value as ListenForPostsSuccessful;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(ListenForPostsSuccessful(
      posts == freezed ? _value.posts : posts as List<Post>,
    ));
  }
}

/// @nodoc
class _$ListenForPostsSuccessful implements ListenForPostsSuccessful {
  const _$ListenForPostsSuccessful(this.posts) : assert(posts != null);

  @override
  final List<Post> posts;

  @override
  String toString() {
    return 'ListenForPosts.successful(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListenForPostsSuccessful &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @override
  $ListenForPostsSuccessfulCopyWith<ListenForPostsSuccessful> get copyWith =>
      _$ListenForPostsSuccessfulCopyWithImpl<ListenForPostsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Post> posts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(posts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Post> posts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ListenForPosts$ value), {
    @required Result successful(ListenForPostsSuccessful value),
    @required Result error(ListenForPostsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForPosts$ value), {
    Result successful(ListenForPostsSuccessful value),
    Result error(ListenForPostsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ListenForPostsSuccessful implements ListenForPosts {
  const factory ListenForPostsSuccessful(List<Post> posts) =
      _$ListenForPostsSuccessful;

  List<Post> get posts;
  $ListenForPostsSuccessfulCopyWith<ListenForPostsSuccessful> get copyWith;
}

/// @nodoc
abstract class $ListenForPostsErrorCopyWith<$Res> {
  factory $ListenForPostsErrorCopyWith(
          ListenForPostsError value, $Res Function(ListenForPostsError) then) =
      _$ListenForPostsErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ListenForPostsErrorCopyWithImpl<$Res>
    extends _$ListenForPostsCopyWithImpl<$Res>
    implements $ListenForPostsErrorCopyWith<$Res> {
  _$ListenForPostsErrorCopyWithImpl(
      ListenForPostsError _value, $Res Function(ListenForPostsError) _then)
      : super(_value, (v) => _then(v as ListenForPostsError));

  @override
  ListenForPostsError get _value => super._value as ListenForPostsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ListenForPostsError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$ListenForPostsError implements ListenForPostsError {
  const _$ListenForPostsError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'ListenForPosts.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListenForPostsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ListenForPostsErrorCopyWith<ListenForPostsError> get copyWith =>
      _$ListenForPostsErrorCopyWithImpl<ListenForPostsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Post> posts),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Post> posts),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ListenForPosts$ value), {
    @required Result successful(ListenForPostsSuccessful value),
    @required Result error(ListenForPostsError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ListenForPosts$ value), {
    Result successful(ListenForPostsSuccessful value),
    Result error(ListenForPostsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListenForPostsError implements ListenForPosts, ErrorAction {
  const factory ListenForPostsError(Object error) = _$ListenForPostsError;

  Object get error;
  $ListenForPostsErrorCopyWith<ListenForPostsError> get copyWith;
}

/// @nodoc
class _$UpdatePostInfoTearOff {
  const _$UpdatePostInfoTearOff();

// ignore: unused_element
  UpdatePostInfo$ call(
      {String addImage,
      String removeImage,
      String description,
      double lng,
      double lat,
      AppUser addUser,
      AppUser removeUser}) {
    return UpdatePostInfo$(
      addImage: addImage,
      removeImage: removeImage,
      description: description,
      lng: lng,
      lat: lat,
      addUser: addUser,
      removeUser: removeUser,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdatePostInfo = _$UpdatePostInfoTearOff();

/// @nodoc
mixin _$UpdatePostInfo {
  String get addImage;
  String get removeImage;
  String get description;
  double get lng;
  double get lat;
  AppUser get addUser;
  AppUser get removeUser;

  $UpdatePostInfoCopyWith<UpdatePostInfo> get copyWith;
}

/// @nodoc
abstract class $UpdatePostInfoCopyWith<$Res> {
  factory $UpdatePostInfoCopyWith(
          UpdatePostInfo value, $Res Function(UpdatePostInfo) then) =
      _$UpdatePostInfoCopyWithImpl<$Res>;
  $Res call(
      {String addImage,
      String removeImage,
      String description,
      double lng,
      double lat,
      AppUser addUser,
      AppUser removeUser});
}

/// @nodoc
class _$UpdatePostInfoCopyWithImpl<$Res>
    implements $UpdatePostInfoCopyWith<$Res> {
  _$UpdatePostInfoCopyWithImpl(this._value, this._then);

  final UpdatePostInfo _value;
  // ignore: unused_field
  final $Res Function(UpdatePostInfo) _then;

  @override
  $Res call({
    Object addImage = freezed,
    Object removeImage = freezed,
    Object description = freezed,
    Object lng = freezed,
    Object lat = freezed,
    Object addUser = freezed,
    Object removeUser = freezed,
  }) {
    return _then(_value.copyWith(
      addImage: addImage == freezed ? _value.addImage : addImage as String,
      removeImage:
          removeImage == freezed ? _value.removeImage : removeImage as String,
      description:
          description == freezed ? _value.description : description as String,
      lng: lng == freezed ? _value.lng : lng as double,
      lat: lat == freezed ? _value.lat : lat as double,
      addUser: addUser == freezed ? _value.addUser : addUser as AppUser,
      removeUser:
          removeUser == freezed ? _value.removeUser : removeUser as AppUser,
    ));
  }
}

/// @nodoc
abstract class $UpdatePostInfo$CopyWith<$Res>
    implements $UpdatePostInfoCopyWith<$Res> {
  factory $UpdatePostInfo$CopyWith(
          UpdatePostInfo$ value, $Res Function(UpdatePostInfo$) then) =
      _$UpdatePostInfo$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String addImage,
      String removeImage,
      String description,
      double lng,
      double lat,
      AppUser addUser,
      AppUser removeUser});
}

/// @nodoc
class _$UpdatePostInfo$CopyWithImpl<$Res>
    extends _$UpdatePostInfoCopyWithImpl<$Res>
    implements $UpdatePostInfo$CopyWith<$Res> {
  _$UpdatePostInfo$CopyWithImpl(
      UpdatePostInfo$ _value, $Res Function(UpdatePostInfo$) _then)
      : super(_value, (v) => _then(v as UpdatePostInfo$));

  @override
  UpdatePostInfo$ get _value => super._value as UpdatePostInfo$;

  @override
  $Res call({
    Object addImage = freezed,
    Object removeImage = freezed,
    Object description = freezed,
    Object lng = freezed,
    Object lat = freezed,
    Object addUser = freezed,
    Object removeUser = freezed,
  }) {
    return _then(UpdatePostInfo$(
      addImage: addImage == freezed ? _value.addImage : addImage as String,
      removeImage:
          removeImage == freezed ? _value.removeImage : removeImage as String,
      description:
          description == freezed ? _value.description : description as String,
      lng: lng == freezed ? _value.lng : lng as double,
      lat: lat == freezed ? _value.lat : lat as double,
      addUser: addUser == freezed ? _value.addUser : addUser as AppUser,
      removeUser:
          removeUser == freezed ? _value.removeUser : removeUser as AppUser,
    ));
  }
}

/// @nodoc
class _$UpdatePostInfo$ implements UpdatePostInfo$ {
  const _$UpdatePostInfo$(
      {this.addImage,
      this.removeImage,
      this.description,
      this.lng,
      this.lat,
      this.addUser,
      this.removeUser});

  @override
  final String addImage;
  @override
  final String removeImage;
  @override
  final String description;
  @override
  final double lng;
  @override
  final double lat;
  @override
  final AppUser addUser;
  @override
  final AppUser removeUser;

  @override
  String toString() {
    return 'UpdatePostInfo(addImage: $addImage, removeImage: $removeImage, description: $description, lng: $lng, lat: $lat, addUser: $addUser, removeUser: $removeUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatePostInfo$ &&
            (identical(other.addImage, addImage) ||
                const DeepCollectionEquality()
                    .equals(other.addImage, addImage)) &&
            (identical(other.removeImage, removeImage) ||
                const DeepCollectionEquality()
                    .equals(other.removeImage, removeImage)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.addUser, addUser) ||
                const DeepCollectionEquality()
                    .equals(other.addUser, addUser)) &&
            (identical(other.removeUser, removeUser) ||
                const DeepCollectionEquality()
                    .equals(other.removeUser, removeUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addImage) ^
      const DeepCollectionEquality().hash(removeImage) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(lng) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(addUser) ^
      const DeepCollectionEquality().hash(removeUser);

  @override
  $UpdatePostInfo$CopyWith<UpdatePostInfo$> get copyWith =>
      _$UpdatePostInfo$CopyWithImpl<UpdatePostInfo$>(this, _$identity);
}

abstract class UpdatePostInfo$ implements UpdatePostInfo {
  const factory UpdatePostInfo$(
      {String addImage,
      String removeImage,
      String description,
      double lng,
      double lat,
      AppUser addUser,
      AppUser removeUser}) = _$UpdatePostInfo$;

  @override
  String get addImage;
  @override
  String get removeImage;
  @override
  String get description;
  @override
  double get lng;
  @override
  double get lat;
  @override
  AppUser get addUser;
  @override
  AppUser get removeUser;
  @override
  $UpdatePostInfo$CopyWith<UpdatePostInfo$> get copyWith;
}
