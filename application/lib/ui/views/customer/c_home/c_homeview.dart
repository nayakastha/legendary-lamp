import 'package:application/ui/utils/ui_scaling.dart';
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
    SizeConfig().init(context);
    return ViewModelBuilder.reactive(
        builder: (context, model, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.blockSizeVertical * 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: SearchButton(model),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        viewModelBuilder: () => CustomerHomeViewModel());
  }
}
