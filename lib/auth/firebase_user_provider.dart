import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FintechFirebaseUser {
  FintechFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FintechFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FintechFirebaseUser> fintechFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FintechFirebaseUser>(
      (user) {
        currentUser = FintechFirebaseUser(user);
        return currentUser!;
      },
    );
