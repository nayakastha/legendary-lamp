import 'package:application/ui/constants.dart';
import 'package:application/ui/views/customer/c_home/c_homeviewmodel.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatefulWidget {
  final CustomerHomeViewModel model;
  SearchButton(this.model);

  @override
  _SearchButtonState createState() => _SearchButtonState(model);
}

class _SearchButtonState extends State<SearchButton> {
  CustomerHomeViewModel model;
  _SearchButtonState(this.model);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.bounceOut,
      duration: Duration(microseconds: 400),
      width: widget.model.folded ? 56 : 300,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: primaryColor,
        boxShadow: kElevationToShadow[6],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16),
              child: !widget.model.folded
                  ? Row(
                      children: [
                        TextField(
                          textCapitalization: TextCapitalization.none,
                          showCursor: true,
                          decoration: InputDecoration(
                              hintText: 'Search',
                              isDense: true,
                              hintStyle: TextStyle(color: secondaryColor),
                              border: InputBorder.none),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: InkWell(
                            child: Icon(
                              Icons.qr_code_scanner_rounded,
                              color: secondaryColor,
                            ),
                            onTap: () {
                              model.scanCamera();
                            },
                          ),
                        ),
                      ],
                    )
                  : Container(),
            ),
          ),
          AnimatedContainer(
            duration: Duration(microseconds: 400),
            curve: Curves.bounceIn,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                child: Icon(
                  Icons.search,
                  color: secondaryColor,
                ),
                onTap: () {
                  setState(() {
                    widget.model.fold(!widget.model.folded);
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
