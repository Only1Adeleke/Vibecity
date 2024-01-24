import '../models/newreleaseslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibecity/core/app_export.dart';

// ignore: must_be_immutable
class NewreleaseslistItemWidget extends StatelessWidget {
  NewreleaseslistItemWidget(
    this.newreleaseslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NewreleaseslistItemModel newreleaseslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 159.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: newreleaseslistItemModelObj?.urgentSiege,
            height: 181.v,
            width: 159.h,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            newreleaseslistItemModelObj.urgentSiege1!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 2.v),
          Text(
            newreleaseslistItemModelObj.damnedAnthem!,
            style: CustomTextStyles.bodyMediumOnPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
