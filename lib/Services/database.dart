import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:health_helper/recipe/extened_recipe.dart';

class  DatabaseService{
  final CollectionReference _breakfastCollection=FirebaseFirestore.instance.collection('breakfast');
  final CollectionReference _lunchCollection=FirebaseFirestore.instance.collection('lunch');
  final CollectionReference _dinnerCollection=FirebaseFirestore.instance.collection('dinner');

  //Future AddRecipes(DescriptionRecipe recipe) async{
   // return await _breakfastCollection.document(recipe)
  //}
}