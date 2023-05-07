
import 'package:cloud_firestore/cloud_firestore.dart';

class  DatabaseService{
  final CollectionReference _ageCollection=FirebaseFirestore.instance.collection('age');
  final CollectionReference _heightCollection=FirebaseFirestore.instance.collection('height');
  final CollectionReference _weightCollection=FirebaseFirestore.instance.collection('weight');
  final CollectionReference _bmiCollection=FirebaseFirestore.instance.collection('bmi');

  Future AddBMI(double bmiresult) async{
    return await _bmiCollection.doc('bmi').set({'bmi':bmiresult});
  }
  Future Addage(int age) async{
    return await _ageCollection.doc('age').set({'age':age});
  }
  Future Addweight(double weight) async{
    return await _weightCollection.doc('weight').set({'weight':weight});
  }
  Future Addheight(double height) async{
    return await _heightCollection.doc('height').set({'height':height});
  }

  dynamic getdata() async {
    final DocumentReference docRef = _ageCollection.doc('age');
    final DocumentSnapshot docSnapshot = await docRef.get();
    if (docSnapshot.exists) {
      return docSnapshot.data();
    }
  }
}