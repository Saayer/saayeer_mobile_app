import 'package:flutter/material.dart';
import 'package:saayer/core/services/injection/injection.dart';
import 'package:saayer/core/services/navigation/navigation_service.dart';
import 'package:saayer/core/utils/theme/saayer_theme.dart';

///showBottomSheetWidget
showBottomSheetWidget(BuildContext buildContext, Widget widget, double widgetHeight, void Function() whenComplete) {
  double width = MediaQuery.of(buildContext).size.width;
  showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      backgroundColor: Colors.transparent,
      context: buildContext,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            Container(
              color: Colors.transparent,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: SaayerTheme().getColorsPalette.backgroundColor,
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                      border: Border.all(color: SaayerTheme().getColorsPalette.backgroundColor)),
                  child: Container(
                      width: width / 1,
                      height: widgetHeight,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: SaayerTheme().getColorsPalette.backgroundColor,
                          border: Border.all(color: SaayerTheme().getColorsPalette.backgroundColor)),
                      child: Column(
                        children: [
                          Container(
                            width: width / 3,
                            height: 5,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: SaayerTheme().getColorsPalette.lightBlackTextColor.withOpacity(0.5),
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                                border: Border.all(color: Colors.transparent)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(child: widget)
                        ],
                      )),
                ),
              ),
            ),
          ],
        );
      }).whenComplete(() {
    whenComplete();
  });
}

///modalBottomSheetMenu
modalBottomSheetMenu(context, width, height, widget,
    {double heightPercentage = 1.5, bool hasDash = false, void Function()? onBack}) {
  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (builder) {
        return Container(
          height: height / heightPercentage,
          color: Colors.transparent,
          child: Container(
            color: Colors.transparent,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: (!hasDash ? 19 : 20)),
                  child: Container(
                      decoration: BoxDecoration(
                          color: SaayerTheme().getColorsPalette.backgroundColor,
                          borderRadius:
                              const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                      child: Padding(
                        padding: EdgeInsets.only(top: height / 25),
                        child: Center(
                          child: widget,
                        ),
                      )),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(getIt<NavigationService>().mainNavigatorKey.currentContext!).pop();
                      },
                      child: !hasDash
                          ? CircleAvatar(
                              backgroundColor: SaayerTheme().getColorsPalette.blackTextColor,
                              radius: 20,
                              child: Icon(
                                Icons.close,
                                color: SaayerTheme().getColorsPalette.whiteColor,
                                size: 25,
                              ))
                          : Container(
                              height: 8,
                              width: width / 4,
                              decoration: BoxDecoration(
                                  color: SaayerTheme().getColorsPalette.backgroundColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  )),
                            ),
                    ))
              ],
            ),
          ),
        );
      }).whenComplete(() {
    if (onBack != null) {
      onBack();
    }
  });
}
