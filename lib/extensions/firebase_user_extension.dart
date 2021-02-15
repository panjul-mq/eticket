part of 'extensions.dart';

extension FirebaseUserExtension on FirebaseUser{
  User convertToUser({
    String name = "No Name",
    String phoneNumber = "0",
  }) => User(this.uid, this.email,
    name: name,
    phoneNumber: phoneNumber,
  );
  Future<User> fromFirestore() async => await UserServices.getUser(this.uid);
  
}