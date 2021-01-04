// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppUser> _$appUserSerializer = new _$AppUserSerializer();
Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();

class _$AppUserSerializer implements StructuredSerializer<AppUser> {
  @override
  final Iterable<Type> types = const [AppUser, _$AppUser];
  @override
  final String wireName = 'AppUser';

  @override
  Iterable<Object> serialize(Serializers serializers, AppUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];
    if (object.photoUrl != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(object.photoUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'AuthState';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(AppUser)));
    }
    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppUser)) as AppUser);
          break;
      }
    }

    return result.build();
  }
}

class _$AppUser extends AppUser {
  @override
  final String uid;
  @override
  final String email;
  @override
  final String username;
  @override
  final String photoUrl;

  factory _$AppUser([void Function(AppUserBuilder) updates]) =>
      (new AppUserBuilder()..update(updates)).build();

  _$AppUser._({this.uid, this.email, this.username, this.photoUrl})
      : super._() {
    if (uid == null) {
      throw new BuiltValueNullFieldError('AppUser', 'uid');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('AppUser', 'email');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('AppUser', 'username');
    }
  }

  @override
  AppUser rebuild(void Function(AppUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppUserBuilder toBuilder() => new AppUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppUser &&
        uid == other.uid &&
        email == other.email &&
        username == other.username &&
        photoUrl == other.photoUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, uid.hashCode), email.hashCode), username.hashCode),
        photoUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppUser')
          ..add('uid', uid)
          ..add('email', email)
          ..add('username', username)
          ..add('photoUrl', photoUrl))
        .toString();
  }
}

class AppUserBuilder implements Builder<AppUser, AppUserBuilder> {
  _$AppUser _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  AppUserBuilder();

  AppUserBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _email = _$v.email;
      _username = _$v.username;
      _photoUrl = _$v.photoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppUser;
  }

  @override
  void update(void Function(AppUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppUser build() {
    final _$result = _$v ??
        new _$AppUser._(
            uid: uid, email: email, username: username, photoUrl: photoUrl);
    replace(_$result);
    return _$result;
  }
}

class _$AuthState extends AuthState {
  @override
  final AppUser user;

  factory _$AuthState([void Function(AuthStateBuilder) updates]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.user}) : super._();

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')..add('user', user))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    _$AuthState _$result;
    try {
      _$result = _$v ?? new _$AuthState._(user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
