import '../models/songslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibecity/core/app_export.dart';

// ignore: must_be_immutable
class SongslistItemWidget extends StatelessWidget {
  SongslistItemWidget(
    this.songslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SongslistItemModel songslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 26.adaptSize,
          width: 26.adaptSize,
          margin: EdgeInsets.only(
            top: 5.v,
            bottom: 9.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    songslistItemModelObj.count!,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  decoration: BoxDecoration(
                    color:
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(
                      13.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                songslistItemModelObj.burning!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 2.v),
              Text(
                songslistItemModelObj.podvalCaplella!,
                style: CustomTextStyles.bodyMediumBluegray400,
              ),
            ],
          ),
        ),
        Spacer(),
        Opacity(
          opacity: 0.503,
          child: CustomImageView(
            imagePath: ImageConstant.imgMoreIcon,
            height: 4.v,
            width: 20.h,
            margin: EdgeInsets.only(
              top: 14.v,
              bottom: 22.v,
            ),
          ),
        ),
      ],
    );
  }
}
