import '../album_details_screen/widgets/songslist_item_widget.dart';
import 'bloc/album_details_bloc.dart';
import 'models/album_details_model.dart';
import 'models/songslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibecity/core/app_export.dart';
import 'package:vibecity/widgets/app_bar/appbar_leading_image.dart';
import 'package:vibecity/widgets/app_bar/appbar_title.dart';
import 'package:vibecity/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vibecity/widgets/app_bar/custom_app_bar.dart';
import 'package:vibecity/widgets/custom_icon_button.dart';

class AlbumDetailsScreen extends StatelessWidget {
  const AlbumDetailsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AlbumDetailsBloc>(
        create: (context) => AlbumDetailsBloc(
            AlbumDetailsState(albumDetailsModelObj: AlbumDetailsModel()))
          ..add(AlbumDetailsInitialEvent()),
        child: AlbumDetailsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
                child: Column(children: [
                  _buildSongDetail(context),
                  SizedBox(height: 31.v),
                  _buildActions(context),
                  SizedBox(height: 29.v),
                  _buildSongsList(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 53.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_wunder_king".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 15.v))
        ]);
  }

  /// Section Widget
  Widget _buildSongDetail(BuildContext context) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgThumbnail100x100,
          height: 100.adaptSize,
          width: 100.adaptSize),
      SizedBox(height: 30.v),
      Text("lbl_wunder_king".tr, style: theme.textTheme.headlineMedium),
      SizedBox(height: 7.v),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text("lbl".tr, style: theme.textTheme.bodyLarge)),
            Opacity(
                opacity: 0.648,
                child: Container(
                    height: 3.adaptSize,
                    width: 3.adaptSize,
                    margin: EdgeInsets.only(left: 8.h, top: 9.v, bottom: 7.v),
                    decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimaryContainer
                            .withOpacity(0.58),
                        borderRadius: BorderRadius.circular(1.h)))),
            Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text("lbl_2018".tr, style: theme.textTheme.bodyLarge))
          ])
    ]);
  }

  /// Section Widget
  Widget _buildActions(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(top: 16.v, bottom: 15.v),
          child: CustomIconButton(
              height: 38.adaptSize,
              width: 38.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryContainerTL19,
              child: CustomImageView(imagePath: ImageConstant.imgQuestion))),
      Padding(
          padding: EdgeInsets.only(left: 26.h),
          child: CustomIconButton(
              height: 69.adaptSize,
              width: 69.adaptSize,
              child: CustomImageView())),
      Padding(
          padding: EdgeInsets.only(left: 26.h, top: 16.v, bottom: 15.v),
          child: CustomIconButton(
              height: 38.adaptSize,
              width: 38.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryContainerTL19,
              child: CustomImageView(
                  imagePath: ImageConstant.imgBookmarkOnprimarycontainer)))
    ]);
  }

  /// Section Widget
  Widget _buildSongsList(BuildContext context) {
    return BlocSelector<AlbumDetailsBloc, AlbumDetailsState,
            AlbumDetailsModel?>(
        selector: (state) => state.albumDetailsModelObj,
        builder: (context, albumDetailsModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 19.v);
              },
              itemCount: albumDetailsModelObj?.songslistItemList.length ?? 0,
              itemBuilder: (context, index) {
                SongslistItemModel model =
                    albumDetailsModelObj?.songslistItemList[index] ??
                        SongslistItemModel();
                return SongslistItemWidget(model);
              });
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
