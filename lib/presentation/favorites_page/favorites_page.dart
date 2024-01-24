import '../favorites_page/widgets/favorites_item_widget.dart';
import 'bloc/favorites_bloc.dart';
import 'models/favorites_item_model.dart';
import 'models/favorites_model.dart';
import 'package:flutter/material.dart';
import 'package:vibecity/core/app_export.dart';
import 'package:vibecity/widgets/app_bar/appbar_leading_image.dart';
import 'package:vibecity/widgets/app_bar/appbar_title.dart';
import 'package:vibecity/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vibecity/widgets/app_bar/custom_app_bar.dart';
import 'package:vibecity/widgets/custom_icon_button.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FavoritesBloc>(
        create: (context) =>
            FavoritesBloc(FavoritesState(favoritesModelObj: FavoritesModel()))
              ..add(FavoritesInitialEvent()),
        child: FavoritesPage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.v),
                child: Column(children: [
                  _buildPlaylist(context),
                  SizedBox(height: 24.v),
                  _buildFavorites(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_favourites".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return SizedBox(
        height: 181.v,
        width: 342.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgPlaylistBackground2,
              height: 181.v,
              width: 342.h,
              radius: BorderRadius.circular(8.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.all(16.h),
                  decoration: AppDecoration.gradientBlackToBlack.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 88.v, bottom: 4.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_did_you_like_it".tr,
                                      style: theme.textTheme.headlineMedium),
                                  SizedBox(height: 3.v),
                                  Text("lbl_843_tracks".tr,
                                      style: theme.textTheme.bodyLarge)
                                ])),
                        Padding(
                            padding: EdgeInsets.only(top: 99.v),
                            child: CustomIconButton(
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgOverflowMenu)))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFavorites(BuildContext context) {
    return BlocSelector<FavoritesBloc, FavoritesState, FavoritesModel?>(
        selector: (state) => state.favoritesModelObj,
        builder: (context, favoritesModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 8.v);
              },
              itemCount: favoritesModelObj?.favoritesItemList.length ?? 0,
              itemBuilder: (context, index) {
                FavoritesItemModel model =
                    favoritesModelObj?.favoritesItemList[index] ??
                        FavoritesItemModel();
                return FavoritesItemWidget(model, onTapFavouritesOption: () {
                  onTapFavouritesOption(context);
                });
              });
        });
  }

  /// Navigates to the artistsScreen when the action is triggered.
  onTapFavouritesOption(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.artistsScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
