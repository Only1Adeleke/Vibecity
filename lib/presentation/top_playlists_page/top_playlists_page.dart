import '../top_playlists_page/widgets/topplaylist_item_widget.dart';
import 'bloc/top_playlists_bloc.dart';
import 'models/top_playlists_model.dart';
import 'models/topplaylist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibecity/core/app_export.dart';
import 'package:vibecity/widgets/app_bar/appbar_leading_image.dart';
import 'package:vibecity/widgets/app_bar/appbar_title.dart';
import 'package:vibecity/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vibecity/widgets/app_bar/custom_app_bar.dart';

class TopPlaylistsPage extends StatelessWidget {
  const TopPlaylistsPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TopPlaylistsBloc>(
        create: (context) => TopPlaylistsBloc(
            TopPlaylistsState(topPlaylistsModelObj: TopPlaylistsModel()))
          ..add(TopPlaylistsInitialEvent()),
        child: TopPlaylistsPage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 20.v, right: 24.h),
                child: BlocSelector<TopPlaylistsBloc, TopPlaylistsState,
                        TopPlaylistsModel?>(
                    selector: (state) => state.topPlaylistsModelObj,
                    builder: (context, topPlaylistsModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 24.v);
                          },
                          itemCount: topPlaylistsModelObj
                                  ?.topplaylistItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            TopplaylistItemModel model = topPlaylistsModelObj
                                    ?.topplaylistItemList[index] ??
                                TopplaylistItemModel();
                            return TopplaylistItemWidget(model,
                                onTapImgRenaissance: () {
                              onTapImgRenaissance(context);
                            });
                          });
                    }))));
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
        title: AppbarTitle(text: "lbl_top_playlists".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 15.v))
        ]);
  }

  /// Navigates to the listScreen when the action is triggered.
  onTapImgRenaissance(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.listScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
