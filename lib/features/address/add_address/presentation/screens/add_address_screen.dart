import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saayer/core/services/injection/injection.dart';
import 'package:saayer/core/services/localization/localization.dart';
import 'package:saayer/features/address/add_address/presentation/bloc/add_address_bloc.dart';
import 'package:saayer/features/address/add_address/presentation/pages/add_address_page.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return BlocProvider<AddAddressBloc>(
        create: (context) {
          final AddAddressBloc bloc = getIt<AddAddressBloc>();
          bloc.add(InitAddAddress(isEnglish: Localization.isEnglish()));
          return bloc;
        },
        child: const AddAddressPage());
  }
}