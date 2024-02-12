import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saayer/common/loading/loading_dialog.dart';
import 'package:saayer/core/utils/enums.dart';
import 'package:saayer/core/utils/theme/saayer_theme.dart';
import 'package:saayer/core/utils/theme/typography.dart';
import 'package:saayer/features/user_card/presentation/screens/user_card_screen.dart';
import 'package:saayer/features/view_page/sub_features/home/presentation/bloc/home_bloc.dart';
import 'package:saayer/features/view_page/sub_features/home/presentation/widgets/home_cards_widget.dart';
import 'package:saayer/features/view_page/sub_features/shipments/presentation/screens/shipments_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeBloc homeBloc = BlocProvider.of<HomeBloc>(context);

    return BlocConsumer<HomeBloc, HomeState>(
      buildWhen: (previousState, nextState) =>
          (previousState.stateHelper.requestState !=
              nextState.stateHelper.requestState),
      listener: (context, state) {
        final bool isLoading =
            (homeBloc.state.stateHelper.requestState == RequestState.LOADING);
        LoadingDialog.setIsLoading(context, isLoading);
        if (!isLoading) {
          if (state.stateHelper.requestState == RequestState.SUCCESS) {}
          if (state.stateHelper.requestState == RequestState.ERROR) {}
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: SaayerTheme().getColorsPalette.backgroundColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const UserCardScreen(),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: const HomeCardsWidget(),
              ),
              SizedBox(
                height: 15.h,
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.w),
                  child: const ShipmentsScreen(isFromHome: true,),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
