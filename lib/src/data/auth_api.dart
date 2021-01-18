// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:instagram_clone_gad/src/models/index.dart';
import 'package:meta/meta.dart';

class AuthApi {
  const AuthApi({@required FirebaseAuth auth, @required FirebaseFirestore firestore, @required GoogleSignIn google})
      : assert(auth != null),
        assert(firestore != null),
        assert(google != null),
        _auth = auth,
        _firestore = firestore,
        _google = google;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _google;

  Future<AppUser> login({@required String email, @required String password}) async {
    final UserCredential response = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = response.user;

    final DocumentSnapshot snapshot = await _firestore.doc('users/${user.uid}').get();
    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> signUp({@required String email, @required String password, @required String username}) async {
    final UserCredential response = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final User user = response.user;

    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..uid = user.uid
        ..email = user.email
        ..username = username;
    });

    await _firestore.doc('users/${user.uid}').set(appUser.json);
    return appUser;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<AppUser> signUpWithGoogle() async {
    // sign in with google
    final GoogleSignInAccount googleAccount = await _google.signIn();
    if (googleAccount == null) {
      return null;
    }

    final GoogleSignInAuthentication authentication = await googleAccount.authentication;

    // create/login with google credential
    final OAuthCredential credential =
        GoogleAuthProvider.credential(idToken: authentication.idToken, accessToken: authentication.accessToken);

    final UserCredential response = await _auth.signInWithCredential(credential);
    final User user = response.user;

    final DocumentSnapshot snapshot = await _firestore.doc('users/${user.uid}').get();
    if (snapshot.exists) {
      return AppUser.fromJson(snapshot.data());
    }

    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..uid = user.uid
        ..email = user.email
        ..username = user.email.split('@').first
        ..photoUrl = user.photoURL;
    });

    await _firestore.doc('users/${user.uid}').set(appUser.json);
    return appUser;
  }

  Future<void> resetPassword(String email) {
    return _auth.sendPasswordResetEmail(email: email);
  }
}
