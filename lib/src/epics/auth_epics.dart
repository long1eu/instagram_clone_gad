// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'package:instagram_clone_gad/src/actions/index.dart';
import 'package:instagram_clone_gad/src/data/auth_api.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  const AuthEpics({@required AuthApi api})
      : assert(api != null),
        _api = api;

  final AuthApi _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, InitializeApp$>(_initializeApp),
      TypedEpic<AppState, Login$>(_login),
      TypedEpic<AppState, Signup$>(_signup),
      TypedEpic<AppState, SignOut$>(_signOut),
      TypedEpic<AppState, SignUpWithGoogle$>(_signUpWithGoogle),
      TypedEpic<AppState, ResetPassword$>(_resetPassword),
      TypedEpic<AppState, SearchUsers$>(_searchUsers),
      TypedEpic<AppState, UpdateFollowing$>(_updateFollowing),
      TypedEpic<AppState, GetUser$>(_getUser),
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeApp$ action) => Stream<InitializeApp$>.value(action)
            .asyncMap((InitializeApp$ action) => _api.getCurrentUser())
            .map((AppUser user) => InitializeApp.successful(user))
            .onErrorReturnWith((dynamic error) => InitializeApp.error(error)));
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Login$ action) => Stream<Login$>.value(action)
            .asyncMap((Login$ action) => _api.login(email: action.email, password: action.password))
            .map((AppUser user) => Login.successful(user))
            .onErrorReturnWith((dynamic error) => Login.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _signup(Stream<Signup$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Signup$ action) => Stream<Signup$>.value(action)
            .asyncMap((Signup$ action) => _api.signUp(
                  email: store.state.auth.info.email,
                  password: store.state.auth.info.password,
                  username: store.state.auth.info.username ?? store.state.auth.info.email.split('@').first,
                ))
            .map((AppUser user) => Signup.successful(user))
            .onErrorReturnWith((dynamic error) => Signup.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _signOut(Stream<SignOut$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignOut$ action) => Stream<SignOut$>.value(action)
            .asyncMap((SignOut$ action) => _api.signOut())
            .mapTo(const SignOut.successful())
            .onErrorReturnWith((dynamic error) => SignOut.error(error)));
  }

  Stream<AppAction> _signUpWithGoogle(Stream<SignUpWithGoogle$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignUpWithGoogle$ action) => Stream<SignUpWithGoogle$>.value(action)
            .asyncMap((SignUpWithGoogle$ action) => _api.signUpWithGoogle())
            .map((AppUser user) => SignUpWithGoogle.successful(user))
            .onErrorReturnWith((dynamic error) => SignUpWithGoogle.error(error))
            .doOnData(action.response));
  }

  Stream<AppAction> _resetPassword(Stream<ResetPassword$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((ResetPassword$ action) => Stream<ResetPassword$>.value(action)
            .asyncMap((ResetPassword$ action) => _api.resetPassword(action.email))
            .mapTo(const ResetPassword.successful())
            .onErrorReturnWith((dynamic error) => ResetPassword.error(error)));
  }

  Stream<AppAction> _searchUsers(Stream<SearchUsers$> actions, EpicStore<AppState> store) {
    return actions //
        .debounceTime(const Duration(milliseconds: 500))
        .flatMap((SearchUsers$ action) => Stream<SearchUsers$>.value(action)
            .asyncMap((SearchUsers$ action) => _api.searchUsers(action.query))
            .map((List<AppUser> users) => SearchUsers.successful(users))
            .onErrorReturnWith((dynamic error) => SearchUsers.error(error)));
  }

  Stream<AppAction> _updateFollowing(Stream<UpdateFollowing$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((UpdateFollowing$ action) => Stream<UpdateFollowing$>.value(action)
            .asyncMap((UpdateFollowing$ action) => _api.updateFollowing(
                  uid: store.state.auth.user.uid,
                  add: action.add,
                  remove: action.remove,
                ))
            .mapTo(UpdateFollowing.successful(add: action.add, remove: action.remove))
            .onErrorReturnWith((dynamic error) => UpdateFollowing.error(error)));
  }

  Stream<AppAction> _getUser(Stream<GetUser$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetUser$ action) => Stream<GetUser$>.value(action)
            .asyncMap((GetUser$ action) => _api.getUser(action.uid))
            .map((AppUser user) => GetUser.successful(user))
            .onErrorReturnWith((dynamic error) => GetUser.error(error)));
  }
}
