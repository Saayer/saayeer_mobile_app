import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:saayer/common/text_fields/input_text_field_decoration.dart';
import 'package:saayer/core/services/localization/localization.dart';
import 'package:saayer/core/utils/theme/saayer_theme.dart';
import 'package:saayer/core/utils/theme/typography.dart';

class PhoneTextField extends StatelessWidget {
  final TextEditingController phoneNumController;
  final void Function(PhoneNumber)? onInputChanged;
  final bool? withValidator;
  final PhoneNumber? initialValue;

  const PhoneTextField(
      {super.key, required this.phoneNumController, this.onInputChanged, this.withValidator, this.initialValue});

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      locale: Localization.getLocale().languageCode,
      countries: const ['SA'],
      onInputChanged: (PhoneNumber number) {
        // log("dialCode: ${number.dialCode} - isoCode: ${number.isoCode} - phoneNumber: ${number.phoneNumber}",
        //     name: "onInputChanged --->");
        if (onInputChanged != null) {
          onInputChanged!(number);
        }
      },
      validator: (withValidator ?? true)
          ? (String? value) {
              if (value?.isEmpty ?? true) {
                return 'empty_field_error'.tr().replaceFirst("{}", "phone_num".tr());
              }
              if (value!.length < 10) {
                return 'invalid_field_error'.tr().replaceFirst("{}", "phone_num".tr());
              }
              return null;
            }
          : null,
      onInputValidated: (bool value) {
        log("$value", name: "onInputValidated --->");
      },
      maxLength: 12,
      selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
          useBottomSheetSafeArea: true,
          leadingPadding: 8,
          setSelectorButtonAsPrefixIcon: true),
      ignoreBlank: false,
      hintText: "phone_num".tr(),
      errorMessage: (withValidator ?? true) ? 'invalid_field_error'.tr().replaceFirst("{}", "phone_num".tr()) : null,
      autoValidateMode: AutovalidateMode.onUserInteraction,
      selectorTextStyle: AppTextStyles.liteLabel(),
      textStyle: AppTextStyles.liteLabel(),
      initialValue: initialValue ?? PhoneNumber(isoCode: 'SA'),
      textFieldController: phoneNumController,
      formatInput: true,
      keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
      inputDecoration: InputTextFieldDecoration()(hintText: "xxx xxx xxxx"),
      inputBorder: OutlineInputBorder(
        borderSide: BorderSide(color: SaayerTheme().getColorsPalette.greyColor, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      onSaved: (PhoneNumber number) {
        log('On Saved: $number');
      },
    );
  }
}
