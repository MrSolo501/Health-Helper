

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:health_helper/pages/landing.dart';

import '../domain/user.dart';

class AuthService {
  final FirebaseAuth _fAuth = FirebaseAuth.instance;

  Future<AuthUser?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _fAuth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return AuthUser.FromFirebase(user);
    } catch (e) {
      return null;
    }
  }

  Future<AuthUser?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _fAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return AuthUser.FromFirebase(user);
    } catch (e) {
      return null;
    }
  }

  Future logOut() async {
    await _fAuth.signOut();

  }

  Stream<AuthUser?> get currentUser {
    return _fAuth
        .authStateChanges()
        .map((User? user) => user != null ? AuthUser.FromFirebase(user) : null);
  }
}
