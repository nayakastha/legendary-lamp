import 'package:application/ui/utils/constants.dart';
import 'package:application/ui/utils/ui_scaling.dart';
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
    return Container(
      width: widget.model.folded
          ? SizeConfig.blockSizeHorizontal * 16
          : SizeConfig.screenWidth * 0.9,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: primaryColor,
        boxShadow: kElevationToShadow[6],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          !widget.model.folded
              ? Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal * 4),
                  width: SizeConfig.blockSizeHorizontal * 58,
                  child: TextField(
                    textCapitalization: TextCapitalization.none,
                    showCursor: true,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      isDense: true,
                      hintStyle: TextStyle(color: secondaryColor),
                      border: InputBorder.none,
                    ),
                  ),
                )
              : Container(),
          !widget.model.folded
              ? Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal * 4),
                  child: InkWell(
                    child: Icon(
                      Icons.qr_code_scanner_rounded,
                      color: secondaryColor,
                    ),
                    onTap: () {
                      model.scanCamera();
                    },
                  ),
                )
              : Container(),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 4),
            child: InkWell(
              child: Icon(
                widget.model.folded ? Icons.search : Icons.done,
                color: secondaryColor,
              ),
              onTap: () {
                setState(() {
                  widget.model.fold(!widget.model.folded);
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
