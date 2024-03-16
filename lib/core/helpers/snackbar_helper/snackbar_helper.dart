import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saayer/core/services/injection/injection.dart';
import 'package:saayer/core/services/navigation/navigation_service.dart';
import 'package:saayer/core/utils/theme/saayer_theme.dart';
import 'package:saayer/core/utils/theme/typography.dart';

class SnackbarHelper {
  static void show({required String msg}) {
    final BuildContext context =
        getIt<NavigationService>().mainNavigatorKey.currentContext!;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        padding:
            EdgeInsets.only(bottom: 50.h, left: 16.w, right: 16.w, top: 50.h),
        content: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: SaayerTheme().getColorsPalette.backgroundColor,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              BoxShadow(
                color:
                    SaayerTheme().getColorsPalette.greyColor.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, 5), // changes position of shadow
              ),
            ],
          ),
          child: Text(
            msg.tr(),
            softWrap: true,
            textAlign: TextAlign.center,
            style: AppTextStyles.smallParagraph(),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent));
  }
}
