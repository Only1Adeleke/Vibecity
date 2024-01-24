import '../models/equalizer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibecity/core/app_export.dart';

// ignore: must_be_immutable
class EqualizerItemWidget extends StatelessWidget {
  EqualizerItemWidget(
    this.equalizerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EqualizerItemModel equalizerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 38.h,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: Text(
                equalizerItemModelObj.dBCounter!,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.img1,
            height: 298.v,
            width: 19.h,
          ),
          SizedBox(height: 6.v),
          Text(
            equalizerItemModelObj.hzCounter!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
