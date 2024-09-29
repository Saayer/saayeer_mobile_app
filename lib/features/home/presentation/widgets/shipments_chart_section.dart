import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saayer/common/loading/loading_widget.dart';
import 'package:saayer/core/helpers/utils_helper/strings_utils.dart';
import 'package:saayer/features/home/core/utils/enums/enums.dart';
import 'package:saayer/features/home/presentation/bloc/home_bloc.dart';
import 'package:saayer/features/home/presentation/widgets/error_stack_widget.dart';
import 'package:saayer/features/home/presentation/widgets/generic_data_bar_chart_widget.dart';
import 'package:shimmer/shimmer.dart';

class ShipmentsChartSection extends StatelessWidget {
  final HomeBloc homeBloc;

  const ShipmentsChartSection({super.key, required this.homeBloc});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    bool hasError = false;
    return BlocConsumer<HomeBloc, HomeState>(
      buildWhen: (previousState, nextState) =>
          (previousState.shipmentsChartStateHelper.requestState != nextState.shipmentsChartStateHelper.requestState),
      listener: (context, state) {
        isLoading = (state.shipmentsChartStateHelper.requestState == HomeRequestState.LOADING_SHIPMENTS_COUNT_PER_DAY);
        if (!isLoading) {
          if (state.shipmentsChartStateHelper.requestState == HomeRequestState.LOADED_SHIPMENTS_COUNT_PER_DAY) {}
          if (state.shipmentsChartStateHelper.requestState == HomeRequestState.SUCCESS_SHIPMENTS_COUNT_PER_DAY) {}
          if (state.shipmentsChartStateHelper.requestState == HomeRequestState.ERROR_SHIPMENTS_COUNT_PER_DAY) {
            hasError = true;
          }
        }
      },
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: (isLoading || hasError || homeBloc.countPerDateResponse == null) ? 0.5 : 1,
              child: GenericDataBarChartWidget(
                title: ["shipments_chart_title".tr()].concatenatingListOfStrings,
                yAxisTitle: "shipments".tr(),
                total: '${homeBloc.shipmentsPerDaysList.total} ${'shipment'.tr()}',
                dataList: homeBloc.shipmentsPerDaysList.counts!.toList(),
                xAxisDataTitles: shipmentsXAxisData,
                showHorizontalLine: true,
              ),
            ),
            (isLoading || homeBloc.countPerDateResponse == null)
                ? const SaayerLoader()
                : hasError
                    ? const ErrorStackWidget()
                    : Container()
          ],
        );
      },
    );
  }

  List<String> get shipmentsXAxisData {
    final List<String> requiredList = [];

    for (int i = 1; i < (homeBloc.shipmentsPerDaysList.counts!.length + 1); i++) {
      if (i == 1 || i == 5 || i == 10 || i == 15 || i == 20 || i == 25 || i == 30) {
        requiredList.add('$i');
      } else {
        requiredList.add('');
      }
    }

    return requiredList;
  }
}

class ContainerShimmerWidget extends StatelessWidget {
  final double widgetHeight;
  final int itemCount;

  const ContainerShimmerWidget({super.key, this.widgetHeight = 100, this.itemCount = 6});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 250,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          enabled: true,
          child: Container(
            color: Colors.grey.shade300,
          )),
    );
  }
}