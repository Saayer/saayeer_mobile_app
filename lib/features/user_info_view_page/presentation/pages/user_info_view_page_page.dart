import 'dart:developer';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saayer/common/app_bar/base_app_bar.dart';
import 'package:saayer/common/loading/loading_dialog.dart';
import 'package:saayer/core/utils/enums.dart';
import 'package:saayer/core/utils/theme/saayer_theme.dart';
import 'package:saayer/features/user_info_view_page/presentation/bloc/user_info_view_page_bloc.dart';
import 'package:saayer/features/user_info_view_page/sub_features/business_info/presentation/screens/business_info_screen.dart';
import 'package:saayer/features/user_info_view_page/sub_features/personal_info/presentation/screens/personal_info_screen.dart';
import 'package:story_page_view/story_page_view.dart';

class UserInfoViewPagePage extends StatelessWidget {
  const UserInfoViewPagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final UserInfoViewPageBloc userInfoViewPageBloc =
        BlocProvider.of<UserInfoViewPageBloc>(context);

    return BlocConsumer<UserInfoViewPageBloc, UserInfoViewPageState>(
      buildWhen: (previousState, nextState) =>
          (previousState.stateHelper.requestState !=
              nextState.stateHelper.requestState),
      listener: (context, state) async {
        final bool isLoading =
            (userInfoViewPageBloc.state.stateHelper.requestState ==
                RequestState.LOADING);
        LoadingDialog.setIsLoading(context, isLoading);
        if (!isLoading) {
          if (state.stateHelper.requestState == RequestState.SUCCESS) {}
          if (state.stateHelper.requestState == RequestState.ERROR) {}
        }
      },
      builder: (context, state) {
        return PopScope(
          canPop: false,
          child: Scaffold(
            backgroundColor: SaayerTheme().getColorsPalette.backgroundColor,
            appBar: const BaseAppBar(
              showBackLeading: false,
            ),
            body: InkWell(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Container(
                  color: SaayerTheme().getColorsPalette.backgroundColor,
                  child: StoryPageView(
                    indicatorStyle: StoryPageIndicatorStyle(
                      height: 6.h,
                      gap: 12,
                      unvisitedColor: SaayerTheme().getColorsPalette.blackTextColor,
                      visitedColor: SaayerTheme().getColorsPalette.primaryColor,
                      timerBarBackgroundColor: SaayerTheme().getColorsPalette.primaryColor,
                      timerBarColor: SaayerTheme().getColorsPalette.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    controller: StoryPageController(
                      keepPage: false,
                      pagingCurve: Curves.elasticOut,
                      pagingDuration: const Duration(milliseconds: 2000),
                    ),
                    storyDuration: const Duration(seconds: 5),
                    // Customize whole layout
                    indicatorPosition: StoryPageIndicatorPosition.custom(
                      layoutBuilder: (c, pageView, indicator) => SafeArea(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10.h,
                                horizontal: 16.w,
                              ),
                              child: indicator,
                            ),
                            Expanded(
                              child: pageView,
                            ),
                          ],
                        ),
                      ),
                    ),
                    children: const [
                      PersonalInfoScreen(),
                      BusinessInfoScreen()
                    ],
                  )),
            ),
          ),
        );
      },
    );
  }
}
