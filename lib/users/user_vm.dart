import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class UserviewModel extends BaseViewModel {
  String? name;
  final formKey = GlobalKey<FormState>();
  List<String> userData = ['Sharjeel', 'Ammar', 'Lana Rose'];
  onAdd(String value) {
    userData.add(value);
    notifyListeners();
  }

  onDelete(int index) {
    userData.removeAt(index);
    notifyListeners();
  }

  onUpdate(int index, String value) {
    userData[index] = value;
    notifyListeners();
  }

  onSave() {
    formKey.currentState!.save();
    if (formKey.currentState!.validate()) {
      return 'Please enter some text';
    }
    return null;
  }
}
