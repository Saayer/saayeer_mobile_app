import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saayer/core/utils/theme/saayer_theme.dart';
import 'package:saayer/core/utils/theme/typography.dart';

class SaayerDefaultTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color? enabledColor, disabledColor, textColor;
  final String text;
  final double btnWidth, btnHeight;
  final double? borderRadius;
  final Color? borderColor;
  final bool isEnabled;

  const SaayerDefaultTextButton(
      {super.key,
      this.onPressed,
      this.enabledColor,
      this.disabledColor,
      required this.text,
      this.borderColor,
      this.textColor = Colors.white,
      this.btnWidth = 0,
      this.btnHeight = 0,
      this.borderRadius,
      required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    final Color buttonColor = isEnabled
        ? (enabledColor ?? SaayerTheme().getColorsPalette.primaryColor)
        : (disabledColor ?? SaayerTheme().getColorsPalette.greyColor);
    ButtonStyle buttonStyle = TextButton.styleFrom(
      foregroundColor: buttonColor,
      fixedSize: Size(btnWidth, btnHeight),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
          side: BorderSide(color: borderColor ?? buttonColor)),
      backgroundColor: buttonColor,
    );

    return TextButton(
        style: buttonStyle,
        onPressed: onPressed,
        child: Text(
          text.tr(),
          softWrap: true,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.mainFocusedLabel(
              SaayerTheme().getColorsPalette.whiteColor),
        ));
  }
}
