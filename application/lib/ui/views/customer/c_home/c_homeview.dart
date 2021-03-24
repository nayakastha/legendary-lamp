import 'package:application/ui/views/customer/c_home/c_homeviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CustomerHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        builder: (context, model, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(),
          );
        },
        viewModelBuilder: () => CustomerHomeViewModel());
  }
}
