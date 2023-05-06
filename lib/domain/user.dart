import 'package:firebase_auth/firebase_auth.dart';

class AuthUser{
   String? id;

   AuthUser.FromFirebase(User? user){
      id=user?.uid;
   }
}