import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:saayer/common/app_bar/base_app_bar.dart';
import 'package:saayer/common/buttons/saayer_default_text_button.dart';
import 'package:saayer/common/loading/loading_dialog.dart';
import 'package:saayer/core/utils/enums.dart';
import 'package:saayer/core/utils/theme/saayer_theme.dart';
import 'package:saayer/common/toast/toast_widget.dart';
import 'package:saayer/features/more_sub_features/personal_info/core/errors/personal_info_error_handler.dart';
import 'package:saayer/features/more_sub_features/personal_info/core/utils/enums/enums.dart';
import 'package:saayer/features/more_sub_features/personal_info/presentation/bloc/personal_info_bloc.dart';
import 'package:saayer/features/more_sub_features/personal_info/presentation/widgets/personal_info_text_field_helper.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PersonalInfoBloc personalInfoBloc = BlocProvider.of<PersonalInfoBloc>(context);

    return BlocConsumer<PersonalInfoBloc, PersonalInfoState>(
      buildWhen: (previousState, nextState) =>
          (previousState.stateHelper.requestState != nextState.stateHelper.requestState),
      listener: (context, state) async {
        final bool isLoading = (state.stateHelper.requestState == RequestState.LOADING);
        LoadingDialog.setIsLoading(context, isLoading);
        if (!isLoading) {
          if (state.stateHelper.requestState == RequestState.SUCCESS) {
            Navigator.pop(context);
          }
          if (state.stateHelper.requestState == RequestState.ERROR) {
            //showToast(msg: state.stateHelper.errorMessage ?? "");
            PersonalInfoErrorHandler(state: state)();
          }
        }
      },
      builder: (context, state) => PopScope(
        canPop: true,
        child: Scaffold(
          backgroundColor: SaayerTheme().getColorsPalette.backgroundColor,
          appBar: const BaseAppBar(
            title: 'personal_info',
            showBackLeading: true,
          ),
          bottomSheet: _buildSubmitButtonWidget(personalInfoBloc),
          body: _buildPersonalInfoFieldsWidget(personalInfoBloc, context, state),
        ),
      ),
    );
  }

  _buildSubmitButtonWidget(PersonalInfoBloc personalInfoBloc) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: SaayerDefaultTextButton(
        text: "next",
        isEnabled: enableAddress(personalInfoBloc),
        borderRadius: 16,
        onPressed: () {
          final bool isFormValid = (personalInfoBloc.formKey.currentState!.validate());
          personalInfoBloc.add(ToggleAutoValidate());
          isFormValid
              ? personalInfoBloc.add(const EditClientData())
              : SaayerToast().showErrorToast(msg: "empty_fields_error".tr());
        },
      ),
    );
  }

  _buildPersonalInfoFieldsWidget(PersonalInfoBloc personalInfoBloc, BuildContext context, PersonalInfoState state) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        color: SaayerTheme().getColorsPalette.backgroundColor,
        child: Center(
          child: Form(
            autovalidateMode: state.autoValidateMode,
            key: personalInfoBloc.formKey,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),

                /// FullName & Phone & Email & BusinessName
                ResponsiveRowColumn(
                  layout: ResponsiveValue(context,
                          conditionalValues: [
                            const Condition.largerThan(breakpoint: 900, value: ResponsiveRowColumnType.ROW)
                          ],
                          defaultValue: ResponsiveRowColumnType.COLUMN)
                      .value,
                  columnVerticalDirection: VerticalDirection.down,
                  columnSpacing: 10,
                  rowSpacing: 15,
                  children: [
                    /// FullName & Phone
                    _buildFirstColumnRowField(personalInfoBloc, context),

                    /// Email & BusinessName
                    _buildSecondColumnRowField(personalInfoBloc, context),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.bottom + 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildFirstColumnRowField(PersonalInfoBloc personalInfoBloc, BuildContext context) {
    return ResponsiveRowColumnItem(
        rowFit: FlexFit.tight,
        child: ResponsiveRowColumn(
          layout: ResponsiveValue(context,
                  conditionalValues: [const Condition.largerThan(breakpoint: 600, value: ResponsiveRowColumnType.ROW)],
                  defaultValue: ResponsiveRowColumnType.COLUMN)
              .value,
          columnVerticalDirection: VerticalDirection.down,
          columnSpacing: 10,
          rowSpacing: 15,
          children: [
            ResponsiveRowColumnItem(
              rowFit: FlexFit.tight,
              child: PersonalInfoTextFieldHelper(
                      personalInfoBloc: personalInfoBloc, personalInfoFieldsType: PersonalInfoFieldsTypes.NAME)
                  .getTextField(),
            ),
            ResponsiveRowColumnItem(
              rowFit: FlexFit.tight,
              child: PersonalInfoTextFieldHelper(
                      personalInfoBloc: personalInfoBloc, personalInfoFieldsType: PersonalInfoFieldsTypes.PHONE)
                  .getTextField(),
            ),
          ],
        ));
  }

  _buildSecondColumnRowField(PersonalInfoBloc personalInfoBloc, BuildContext context) {
    return ResponsiveRowColumnItem(
        rowFit: FlexFit.tight,
        child: ResponsiveRowColumn(
          layout: ResponsiveValue(context,
                  conditionalValues: [const Condition.largerThan(breakpoint: 600, value: ResponsiveRowColumnType.ROW)],
                  defaultValue: ResponsiveRowColumnType.COLUMN)
              .value,
          columnVerticalDirection: VerticalDirection.down,
          columnSpacing: 10,
          rowSpacing: 15,
          children: [
            ResponsiveRowColumnItem(
              rowFit: FlexFit.tight,
              child: PersonalInfoTextFieldHelper(
                      personalInfoBloc: personalInfoBloc, personalInfoFieldsType: PersonalInfoFieldsTypes.EMAIL)
                  .getTextField(),
            ),
            ResponsiveRowColumnItem(
              rowFit: FlexFit.tight,
              child: PersonalInfoTextFieldHelper(
                      personalInfoBloc: personalInfoBloc, personalInfoFieldsType: PersonalInfoFieldsTypes.BUSINESSNAME)
                  .getTextField(),
            ),
          ],
        ));
  }

  enableAddress(PersonalInfoBloc personalInfoBloc) {
    if (personalInfoBloc.nameController.text.isNotEmpty &&
        (personalInfoBloc.mobile.phoneNumber != null)) {
      return true;
    }
    return false;
  }
}
