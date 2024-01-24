import '../models/artists_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibecity/core/app_export.dart';

// ignore: must_be_immutable
class ArtistsItemWidget extends StatelessWidget {
  ArtistsItemWidget(
    this.artistsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArtistsItemModel artistsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: artistsItemModelObj?.lorn,
          height: 76.v,
          width: 78.h,
          radius: BorderRadius.circular(
            39.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 17.v,
            bottom: 17.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                artistsItemModelObj.renaissance!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 2.v),
              Text(
                artistsItemModelObj.podvalCaplella!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Spacer(),
        Opacity(
          opacity: 0.503,
          child: CustomImageView(
            imagePath: ImageConstant.imgMoreIcon,
            height: 3.v,
            width: 20.h,
            margin: EdgeInsets.only(
              top: 33.v,
              bottom: 38.v,
            ),
          ),
        ),
      ],
    );
  }
}
