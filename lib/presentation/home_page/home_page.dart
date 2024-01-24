import '../home_page/widgets/newreleaseslist_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/newreleaseslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vibecity/core/app_export.dart';
import 'package:vibecity/widgets/app_bar/appbar_title.dart';
import 'package:vibecity/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vibecity/widgets/app_bar/custom_app_bar.dart';
import 'package:vibecity/widgets/custom_elevated_button.dart';
import 'package:vibecity/presentation/playlist_bottomsheet/playlist_bottomsheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 26.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(children: [
                          Container(
                              width: 243.h,
                              margin: EdgeInsets.only(left: 49.h, right: 50.h),
                              child: Text("msg_listen_to_music_without".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineMedium!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 26.v),
                          CustomElevatedButton(
                              height: 40.v,
                              width: 236.h,
                              text: "lbl_trial_version".tr,
                              buttonStyle:
                                  CustomButtonStyles.fillOnPrimaryContainerTL20,
                              buttonTextStyle:
                                  CustomTextStyles.bodyLargeBlack900),
                          SizedBox(height: 41.v),
                          Text("msg_free_for_3_months".tr,
                              style: CustomTextStyles
                                  .bodyMediumOnPrimaryContainer),
                          SizedBox(height: 44.v),
                          _buildNewReleasesView(context),
                          SizedBox(height: 20.v),
                          _buildNewReleasesList(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "lbl_dashboard".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildNewReleasesView(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("lbl_new_releases".tr, style: theme.textTheme.headlineSmall),
      GestureDetector(
          onTap: () {
            onTapTxtViewAll(context);
          },
          child: Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
              child: Text("lbl_view_all".tr,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer)))
    ]);
  }

  /// Section Widget
  Widget _buildNewReleasesList(BuildContext context) {
    return SizedBox(
        height: 230.v,
        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
            selector: (state) => state.homeModelObj,
            builder: (context, homeModelObj) {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 24.h);
                  },
                  itemCount: homeModelObj?.newreleaseslistItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    NewreleaseslistItemModel model =
                        homeModelObj?.newreleaseslistItemList[index] ??
                            NewreleaseslistItemModel();
                    return NewreleaseslistItemWidget(model);
                  });
            }));
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [PlaylistBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapTxtViewAll(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => PlaylistBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
