import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saayer/core/services/injection/injection.dart';
import 'package:saayer/features/user_info_view_page/sub_features/business_info/presentation/bloc/business_info_bloc.dart';
import 'package:saayer/features/user_info_view_page/sub_features/business_info/presentation/pages/business_info_page.dart';

class BusinessInfoScreen extends StatelessWidget {
  const BusinessInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return BlocProvider<BusinessInfoBloc>(
        create: (context) => getIt<BusinessInfoBloc>(),
        child: const BusinessInfoPage());
  }
}
