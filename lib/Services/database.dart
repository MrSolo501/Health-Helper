
import 'package:cloud_firestore/cloud_firestore.dart';

class  DatabaseService{
  final CollectionReference _breakfastCollection=FirebaseFirestore.instance.collection('breakfast');


  Future AddBmi(double bmiresult) async{
    return await _breakfastCollection.doc('BMI').set({'bmi':bmiresult});
  }
}