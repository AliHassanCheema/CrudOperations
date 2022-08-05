import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class UserviewModel extends BaseViewModel {
  String? name;
   String? designation;
  final formKey = GlobalKey<FormState>();
  List<String> userData = ['Sharjeel', 'Ammar', 'Faizan'];

  List<String> userDesignation = ['Software', 'Data analyst', 'Programmer'];
  onAdd(String value)
  {
    userData.add(value);
    notifyListeners();
  }

  onDelete(int index) 
  {
    userData.removeAt(index);
    notifyListeners();
  }

  onUpdate(int index, String value) 
  {
    userData[index] = value;
    notifyListeners();
  }

  onSave() {
    formKey.currentState!.save();
    debugPrint('$name    $designation');
    if (formKey.currentState!.validate()) {
      return 'Please enter some text';
    }
    return null;
  }
}
