import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saayer/common/loading/loading_dialog.dart';
import 'package:saayer/core/utils/enums.dart';
import 'package:saayer/core/utils/theme/saayer_theme.dart';
import 'package:saayer/core/utils/theme/typography.dart';
import 'package:saayer/features/view_page/sub_features/shipments/presentation/bloc/shipments_bloc.dart';
import 'package:saayer/features/view_page/sub_features/shipments/presentation/widgets/shipments_types_tab_bar.dart';

class ShipmentsPage extends StatelessWidget {
  const ShipmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final ShipmentsBloc shipmentsBloc = BlocProvider.of<ShipmentsBloc>(context);
    return BlocConsumer<ShipmentsBloc, ShipmentsState>(
      buildWhen: (previousState, nextState) =>
          (previousState.stateHelper.requestState !=
              nextState.stateHelper.requestState),
      listener: (context, state) {
        final bool isLoading = (shipmentsBloc.state.stateHelper.requestState ==
                RequestState.LOADING) &&
            (state.shipmentEntityListMap?.isNotEmpty ?? false);
        LoadingDialog.setIsLoading(context, isLoading);
        if (!isLoading) {
          if (state.stateHelper.requestState == RequestState.SUCCESS) {}
          if (state.stateHelper.requestState == RequestState.ERROR) {}
        }
      },
      builder: (context, state) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: state.isFromHome
                ? Colors.transparent
                : SaayerTheme().getColorsPalette.backgroundColor,
            body: const ShipmentsTypesTabBar(),
          ),
        );
      },
    );
  }
}
