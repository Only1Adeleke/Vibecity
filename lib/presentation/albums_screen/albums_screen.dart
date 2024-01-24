import '../albums_screen/widgets/albums_item_widget.dart';
import 'bloc/albums_bloc.dart';
import 'models/albums_item_model.dart';
import 'models/albums_model.dart';
import 'package:flutter/material.dart';
import 'package:vibecity/core/app_export.dart';
import 'package:vibecity/widgets/app_bar/appbar_leading_image.dart';
import 'package:vibecity/widgets/app_bar/appbar_title.dart';
import 'package:vibecity/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vibecity/widgets/app_bar/custom_app_bar.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AlbumsBloc>(
        create: (context) =>
            AlbumsBloc(AlbumsState(albumsModelObj: AlbumsModel()))
              ..add(AlbumsInitialEvent()),
        child: AlbumsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 22.v, right: 24.h),
                child: BlocSelector<AlbumsBloc, AlbumsState, AlbumsModel?>(
                    selector: (state) => state.albumsModelObj,
                    builder: (context, albumsModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 16.v);
                          },
                          itemCount: albumsModelObj?.albumsItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            AlbumsItemModel model =
                                albumsModelObj?.albumsItemList[index] ??
                                    AlbumsItemModel();
                            return AlbumsItemWidget(model, onTapAlbum: () {
                              onTapAlbum(context);
                            });
                          });
                    }))));
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
        title: AppbarTitle(text: "lbl_albums".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapAlbum(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.loginScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
