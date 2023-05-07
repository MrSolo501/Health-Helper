
import 'package:cloud_firestore/cloud_firestore.dart';

class  DatabaseService{
  final CollectionReference _BmiCollection=FirebaseFirestore.instance.collection('BMI');


  Future AddBmi(double bmiresult) async{
    return await _BmiCollection.doc('BMI').set({'bmi':bmiresult});
  }

  dynamic getdata() async {
    final DocumentReference docRef = _BmiCollection.doc('BMI');
    final DocumentSnapshot docSnapshot = await docRef.get();
    if (docSnapshot.exists) {
      return docSnapshot.data();
    }
  }
}