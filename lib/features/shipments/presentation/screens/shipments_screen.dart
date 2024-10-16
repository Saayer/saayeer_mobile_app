import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saayer/core/services/injection/injection.dart';
import 'package:saayer/features/shipments/core/utils/enums/enums.dart';
import 'package:saayer/features/view_page/presentation/bloc/view_page_bloc.dart';
import 'package:saayer/features/shipments/presentation/bloc/shipments_bloc.dart';
import 'package:saayer/features/shipments/presentation/pages/shipments_page.dart';

class ShipmentsScreen extends StatelessWidget {
  final bool isFromHome;

  const ShipmentsScreen({super.key, this.isFromHome = false});

  @override
  Widget build(BuildContext context) {
    final ViewPageBloc viewPageBloc = BlocProvider.of<ViewPageBloc>(context);
    return BlocProvider(
      create: (context) => getIt<ShipmentsBloc>()
        ..add(InitShipments(
          isFromHome: isFromHome,
          isGuest: viewPageBloc.state.isGuest!,
          initExportShipmentStatusFilter: viewPageBloc.initExportShipmentsStatusFilter,
          exportShipmentDateFrom: viewPageBloc.exportShipmentDateFrom,
          exportShipmentDateTo: viewPageBloc.exportShipmentDateTo,
        ))
        ..add(const SelectShipmentType(shipmentsType: ShipmentsListTypes.EXPORT))
        ..add(const GetExportShipments())
        ..add(const GetStores())
        ..add(const GetServiceProviders()),
      child: const ShipmentsPage(),
    );
  }
}
