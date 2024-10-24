import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:saayer/common/buttons/saayer_default_text_button.dart';
import 'package:saayer/common/responsive/general_responsive_scaled_box_widget.dart';
import 'package:saayer/core/services/injection/injection.dart';
import 'package:saayer/core/services/navigation/navigation_service.dart';
import 'package:saayer/core/utils/theme/saayer_theme.dart';
import 'package:saayer/core/utils/theme/typography.dart';
import 'package:saayer/features/request_new_shipment/presentation/screens/request_new_shipment_screen.dart';
import 'package:saayer/features/view_page/presentation/screens/view_page_screen.dart';

class PaymentSuccessWidget extends StatelessWidget {
  const PaymentSuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralResponsiveScaledBoxWidget(
      child: PopScope(
        canPop: false,
        child: Scaffold(
          backgroundColor: SaayerTheme().getColorsPalette.backgroundColor,
          bottomSheet: _buildButtonsWidget(),
          body: _buildPaymentSuccessBody(),
        ),
      ),
    );
  }

  _buildButtonsWidget() {
    return Container(
      height: 140,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SaayerDefaultTextButton(
            text: "new_shipment",
            isEnabled: true,
            enabledColor: SaayerTheme().getColorsPalette.whiteColor,
            borderColor: SaayerTheme().getColorsPalette.primaryColor,
            textStyle: AppTextStyles.mainFocusedLabel(SaayerTheme().getColorsPalette.primaryColor),
            borderRadius: 16,
            onPressed: () {
              ///
              getIt<NavigationService>().navigateAndReplacement(const RequestNewShipmentScreen());
            },
          ),
          const SizedBox(
            height: 10,
          ),
          SaayerDefaultTextButton(
            text: "home",
            isEnabled: true,
            borderRadius: 16,
            onPressed: () {
              ///
              getIt<NavigationService>().navigateAndFinish(const ViewPageScreen());
            },
          ),
        ],
      ),
    );
  }

  _buildPaymentSuccessBody() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'payment_successfully'.tr(),
              style: AppTextStyles.mainFocusedLabel(),
            ),
            Lottie.asset('assets/lottie/paid_shipment.json'),
          ],
        ),
      ),
    );
  }
}
