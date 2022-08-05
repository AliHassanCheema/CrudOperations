import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:testing/users/user_vm.dart';

import 'adduser_vu.dart';

class UserScreen extends ViewModelBuilderWidget<UserviewModel> {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, UserviewModel viewModel, Widget? child) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[900],
          centerTitle: true,
          title: const Text('ADMIN'),
        ),
        body: ListView.builder(
            itemCount: viewModel.userData.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AddUserScreen(viewModel, viewModel.userData[index]);
                  })).then((value) {
                    viewModel.onUpdate(index, value);
                  });
                },
                trailing: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    viewModel.onDelete(index);
                  },
                ),
                leading: Icon(viewModel.userData[index].icon),
                title: Text(viewModel.userData[index].name),
                subtitle: Text(viewModel.userData[index].designation),
              );
            }),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan[900],
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AddUserScreen(viewModel, null);
            })).then((value) {
              if (value != null) {
                viewModel.onAdd(value);
              }
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  @override
  UserviewModel viewModelBuilder(BuildContext context) {
    return UserviewModel();
  }
}
