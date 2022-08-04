import 'package:flutter/material.dart';
import 'package:testing/users/user_vm.dart';

class AddUserScreen extends StatelessWidget {
  const AddUserScreen(this.viewModel, this.name, {Key? key}) : super(key: key);
  final UserviewModel viewModel;
  final String? name;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        centerTitle: true,
        title: const Text('ADD USER'),
      ),
      body: Form(
          key: viewModel.formKey,
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  initialValue: name ?? '',
                  onSaved: (newValue) {
                    viewModel.name = newValue;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty || value == '') {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Name',
                      hintText: 'Enter Your Name',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  onSaved: (newValue) {
                    viewModel.designation = newValue;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty || value == '') {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Designation',
                      hintText: 'Enter you Designation',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      viewModel.onSave();
                      if (viewModel.name != '' || viewModel.name!.isNotEmpty) {
                        Navigator.pop(context, viewModel.designation);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan[900], // Background color
                    ),
                    child: const Text('Save', style: TextStyle(fontSize: 15)))
              ],
            ),
          )),
    ));
  }
}
