import '../models/albums_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibecity/core/app_export.dart';

// ignore: must_be_immutable
class AlbumsItemWidget extends StatelessWidget {
  AlbumsItemWidget(
    this.albumsItemModelObj, {
    Key? key,
    this.onTapAlbum,
  }) : super(
          key: key,
        );

  AlbumsItemModel albumsItemModelObj;

  VoidCallback? onTapAlbum;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapAlbum!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: albumsItemModelObj?.flowerPower,
            height: 78.adaptSize,
            width: 78.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  albumsItemModelObj.flowerPower1!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 5.v),
                Text(
                  albumsItemModelObj.rayCharles!,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 3.v),
                Text(
                  albumsItemModelObj.zipcode!,
                  style: CustomTextStyles.bodyLargeBluegray400,
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
              margin: EdgeInsets.symmetric(vertical: 37.v),
            ),
          ),
        ],
      ),
    );
  }
}
