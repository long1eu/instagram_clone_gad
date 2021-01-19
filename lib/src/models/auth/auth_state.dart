// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

part of auth_models;

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  factory AuthState.initialState() {
    return _$AuthState();
  }

  factory AuthState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  AuthState._();

  @nullable
  AppUser get user;

  RegistrationInfo get info;

  BuiltList<AppUser> get searchResult;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
