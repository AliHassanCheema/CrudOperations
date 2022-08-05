import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'model.dart';

class UserviewModel extends BaseViewModel {
  String? userName;
  String? userDesignation;
  final formKey = GlobalKey<FormState>();
  List<Users> userData = [
    Users('Sharjeel', 'SOftware Engineer', Icons.person),
    Users('Ammar', 'IT Professional', Icons.heart_broken_rounded),
    Users('Faizan', 'Data Scientist', Icons.save),
  ];
  Users? users;
  // List<String> userData = ['Sharjeel', 'Ammar', 'Faizan'];

  // List<String> userDesignation = ['Software', 'Data analyst', 'Programmer'];
  onAdd(Users user) {
    userData.add(user);
    notifyListeners();
  }

  onDelete(int index) {
    userData.removeAt(index);
    notifyListeners();
  }

  onUpdate(int index, Users user) {
    userData[index] = user;
    notifyListeners();
  }

  onSave() {
    formKey.currentState!.save();
    debugPrint('$userName    $userDesignation');
    users = Users(userName!, userDesignation!, Icons.add_alarm);
    if (formKey.currentState!.validate()) {
      return 'Please enter some text';
    }
    return null;
  }
}
