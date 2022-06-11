import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerse_app_uising_getx/model/user_model.dart';

class FireStoreUser{
  final CollectionReference userCollectionRef =
      FirebaseFirestore.instance.collection("Users");

   Future<void> addUserToFireStore(UserModel userModel)async{
     userCollectionRef.doc(userModel.userId).set(userModel.toJson());
  }
}

