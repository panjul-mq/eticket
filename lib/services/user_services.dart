part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection = Firestore.instance.collection('users');

  static Future<void> updateUser(User user) async {
    _userCollection.document(user.id).setData({
      'balance' : user.balance,
      'email' : user.email,
      'name' :user.name,
      'selectedGenres' : user.selectedGenres,
      'selectedLanguage' : user.selectedLanguage,
      'profilePicture' : user.profilePicture ?? ""
    });
  }

  static Future<User> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.document(id).get();

    return User(id, snapshot.data['email'],
    balance: snapshot.data['balance'],
    profilePicture: snapshot.data['profilePicture'],
    selectedGenres: (snapshot.data['selectedGenres'] as List)
        .map((e) => e.toString())
        .toList(),
    selectedLanguage: snapshot.data['selctedLanguage'],
    name: snapshot.data['name']);
  }
}