import 'package:application/ui/views/customer/c_home/c_homeviewmodel.dart';
import 'package:application/ui/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CustomerHomeView extends StatefulWidget {
  @override
  _CustomerHomeViewState createState() => _CustomerHomeViewState();
}

class _CustomerHomeViewState extends State<CustomerHomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        builder: (context, model, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(child: SearchButton(model)),
          );
        },
        viewModelBuilder: () => CustomerHomeViewModel());
  }
}
