import '../models/renaissancelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibecity/core/app_export.dart';

// ignore: must_be_immutable
class RenaissancelistItemWidget extends StatelessWidget {
  RenaissancelistItemWidget(
    this.renaissancelistItemModelObj, {
    Key? key,
    this.onTapUrgentSiege,
  }) : super(
          key: key,
        );

  RenaissancelistItemModel renaissancelistItemModelObj;

  VoidCallback? onTapUrgentSiege;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 159.h,
      child: GestureDetector(
        onTap: () {
          onTapUrgentSiege!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: renaissancelistItemModelObj?.urgentSiege,
              height: 181.v,
              width: 159.h,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
            SizedBox(height: 8.v),
            Text(
              renaissancelistItemModelObj.urgentSiege1!,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 2.v),
            Text(
              renaissancelistItemModelObj.damnedAnthem!,
              style: CustomTextStyles.bodyMediumOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
