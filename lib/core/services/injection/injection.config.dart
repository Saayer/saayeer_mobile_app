// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:openapi/openapi.dart' as _i711;
import 'package:saayer/common/address_widgets/data/data_sources/remote/address_widgets_RDS.dart'
    as _i369;
import 'package:saayer/common/address_widgets/data/data_sources/remote/address_widgets_RDS_impl.dart'
    as _i254;
import 'package:saayer/common/address_widgets/data/repositories/address_widgets_repo_impl.dart'
    as _i572;
import 'package:saayer/common/address_widgets/domain/repositories/address_widgets_repo.dart'
    as _i1030;
import 'package:saayer/common/address_widgets/presentation/bloc/address_widgets_bloc.dart'
    as _i191;
import 'package:saayer/core/API/api_client.dart' as _i9;
import 'package:saayer/core/API/api_consumer.dart' as _i151;
import 'package:saayer/core/API/interceptors/api_interceptors.dart' as _i1059;
import 'package:saayer/core/API/interceptors/openapi_interceptors.dart'
    as _i970;
import 'package:saayer/core/API/refresh_token.dart' as _i927;
import 'package:saayer/core/app_config/app_flavor.dart' as _i552;
import 'package:saayer/core/network/network_info.dart' as _i919;
import 'package:saayer/core/openAPI/openAPI_config.dart' as _i801;
import 'package:saayer/core/services/current_user/logged_in_checker_service.dart'
    as _i317;
import 'package:saayer/core/services/current_user/logged_in_service.dart'
    as _i275;
import 'package:saayer/core/services/injection/injectable_modules.dart'
    as _i847;
import 'package:saayer/core/services/local_storage/shared_pref_service.dart'
    as _i502;
import 'package:saayer/core/services/navigation/navigation_service.dart'
    as _i355;
import 'package:saayer/features/address/add_edit_address/data/data_sources/remote/add_address_info_RDS.dart'
    as _i1066;
import 'package:saayer/features/address/add_edit_address/data/data_sources/remote/add_address_info_RDS_impl.dart'
    as _i16;
import 'package:saayer/features/address/add_edit_address/data/repositories/add_edit_address_info_repo_impl.dart'
    as _i31;
import 'package:saayer/features/address/add_edit_address/domain/repositories/add_edit_address_info_repo.dart'
    as _i79;
import 'package:saayer/features/address/add_edit_address/domain/use_cases/get_areas_usecase.dart'
    as _i65;
import 'package:saayer/features/address/add_edit_address/domain/use_cases/get_cities_usecase.dart'
    as _i590;
import 'package:saayer/features/address/add_edit_address/domain/use_cases/get_countries_usecase.dart'
    as _i753;
import 'package:saayer/features/address/add_edit_address/domain/use_cases/get_governorate_usecase.dart'
    as _i263;
import 'package:saayer/features/address/add_edit_address/domain/use_cases/submit_address_info_usecase.dart'
    as _i465;
import 'package:saayer/features/address/add_edit_address/domain/use_cases/update_address_usecase.dart'
    as _i469;
import 'package:saayer/features/address/add_edit_address/presentation/bloc/add_edit_address_bloc.dart'
    as _i854;
import 'package:saayer/features/address/address_details/presentation/bloc/address_details_bloc.dart'
    as _i925;
import 'package:saayer/features/address/addresses_book/data/data_sources/remote/addresses_book_RDS.dart'
    as _i451;
import 'package:saayer/features/address/addresses_book/data/data_sources/remote/addresses_book_RDS_impl.dart'
    as _i699;
import 'package:saayer/features/address/addresses_book/data/repositories/addresses_book_repo_impl.dart'
    as _i1022;
import 'package:saayer/features/address/addresses_book/domain/repositories/addresses_book_repo.dart'
    as _i42;
import 'package:saayer/features/address/addresses_book/domain/use_cases/delete_address_usecase.dart'
    as _i1014;
import 'package:saayer/features/address/addresses_book/domain/use_cases/edit_address_usecase.dart'
    as _i1058;
import 'package:saayer/features/address/addresses_book/domain/use_cases/get_addresses_usecase.dart'
    as _i436;
import 'package:saayer/features/address/addresses_book/presentation/bloc/addresses_book_bloc.dart'
    as _i613;
import 'package:saayer/features/log_in/data/data_sources/remote/log_in_RDS.dart'
    as _i400;
import 'package:saayer/features/log_in/data/data_sources/remote/log_in_RDS_impl.dart'
    as _i211;
import 'package:saayer/features/log_in/data/repositories/log_in_repo_impl.dart'
    as _i681;
import 'package:saayer/features/log_in/domain/repositories/log_in_repo.dart'
    as _i735;
import 'package:saayer/features/log_in/domain/use_cases/log_in_usecase.dart'
    as _i356;
import 'package:saayer/features/log_in/presentation/bloc/log_in_bloc.dart'
    as _i22;
import 'package:saayer/features/more_sub_features/contact_us/presentation/bloc/contact_us_bloc.dart'
    as _i206;
import 'package:saayer/features/more_sub_features/help/presentation/bloc/help_bloc.dart'
    as _i609;
import 'package:saayer/features/more_sub_features/personal_info/data/repositories/personal_info_repo_impl.dart'
    as _i508;
import 'package:saayer/features/more_sub_features/personal_info/domain/repositories/personal_info_repo.dart'
    as _i792;
import 'package:saayer/features/more_sub_features/personal_info/domain/use_cases/edit_personal_info_usecase.dart'
    as _i477;
import 'package:saayer/features/more_sub_features/personal_info/domain/use_cases/get_personal_info_usecase.dart'
    as _i639;
import 'package:saayer/features/more_sub_features/personal_info/presentation/bloc/personal_info_bloc.dart'
    as _i23;
import 'package:saayer/features/more_sub_features/reports/presentation/bloc/reports_bloc.dart'
    as _i374;
import 'package:saayer/features/more_sub_features/settings/presentation/bloc/settings_bloc.dart'
    as _i212;
import 'package:saayer/features/more_sub_features/shipping_rates/presentation/bloc/shipping_rates_bloc.dart'
    as _i360;
import 'package:saayer/features/more_sub_features/static_pages/presentation/bloc/static_pages_bloc.dart'
    as _i352;
import 'package:saayer/features/more_sub_features/stores/add_edit_store/data/repositories/add_edit_store_repo_impl.dart'
    as _i469;
import 'package:saayer/features/more_sub_features/stores/add_edit_store/domain/repositories/add_edit_store_repo.dart'
    as _i640;
import 'package:saayer/features/more_sub_features/stores/add_edit_store/domain/use_cases/edit_store_usecase.dart'
    as _i987;
import 'package:saayer/features/more_sub_features/stores/add_edit_store/domain/use_cases/submit_store_info_usecase.dart'
    as _i5;
import 'package:saayer/features/more_sub_features/stores/add_edit_store/presentation/bloc/add_edit_store_bloc.dart'
    as _i462;
import 'package:saayer/features/more_sub_features/stores/stores_list/data/repositories/stores_list_repo_impl.dart'
    as _i451;
import 'package:saayer/features/more_sub_features/stores/stores_list/domain/repositories/stores_list_repo.dart'
    as _i782;
import 'package:saayer/features/more_sub_features/stores/stores_list/domain/usecases/delete_store_usecase.dart'
    as _i490;
import 'package:saayer/features/more_sub_features/stores/stores_list/domain/usecases/get_stores_usecase.dart'
    as _i833;
import 'package:saayer/features/more_sub_features/stores/stores_list/presentation/bloc/stores_list_bloc.dart'
    as _i959;
import 'package:saayer/features/more_sub_features/why_saayer/presentation/bloc/why_saayer_bloc.dart'
    as _i900;
import 'package:saayer/features/notifications/presentation/bloc/notifications_bloc.dart'
    as _i110;
import 'package:saayer/features/profile_sub_features/bills/presentation/bloc/bills_bloc.dart'
    as _i386;
import 'package:saayer/features/profile_sub_features/info/presentation/bloc/info_bloc.dart'
    as _i79;
import 'package:saayer/features/request_new_shipment/sub_features/shipment_providers/data/data_sources/shipment_providers_rds_impl.dart'
    as _i638;
import 'package:saayer/features/request_new_shipment/sub_features/shipment_providers/data/data_sources/shipment_prroviders_rds.dart'
    as _i35;
import 'package:saayer/features/request_new_shipment/sub_features/shipment_providers/data/repositories/shipment_providers_repo_impl.dart'
    as _i995;
import 'package:saayer/features/request_new_shipment/sub_features/shipment_providers/domain/repositories/shipment_providers_repo.dart'
    as _i377;
import 'package:saayer/features/request_new_shipment/sub_features/shipment_providers/domain/use_cases/get_shipment_providers_usecase.dart'
    as _i897;
import 'package:saayer/features/request_new_shipment/sub_features/shipment_providers/presentation/blocs/shipment_providers_bloc.dart'
    as _i135;
import 'package:saayer/features/request_new_shipment/sub_features/shipment_specs/presentation/bloc/shipment_specs_bloc.dart'
    as _i740;
import 'package:saayer/features/shipments_sub_features/shipment_details/presentation/bloc/shipment_details_bloc.dart'
    as _i671;
import 'package:saayer/features/user_card/data/data_sources/remote/user_card_RDS.dart'
    as _i609;
import 'package:saayer/features/user_card/data/data_sources/remote/user_card_RDS_impl.dart'
    as _i64;
import 'package:saayer/features/user_card/data/repositories/user_card_repo_impl.dart'
    as _i671;
import 'package:saayer/features/user_card/domain/repositories/user_card_repo.dart'
    as _i68;
import 'package:saayer/features/user_card/domain/use_cases/user_card_usecase.dart'
    as _i736;
import 'package:saayer/features/user_card/presentation/bloc/user_card_bloc.dart'
    as _i260;
import 'package:saayer/features/user_info_view_page/presentation/bloc/user_info_view_page_bloc.dart'
    as _i1037;
import 'package:saayer/features/user_info_view_page/sub_features/business_info/data/data_sources/remote/business_info_RDS.dart'
    as _i785;
import 'package:saayer/features/user_info_view_page/sub_features/business_info/data/data_sources/remote/business_info_RDS_impl.dart'
    as _i882;
import 'package:saayer/features/user_info_view_page/sub_features/business_info/data/repositories/business_info_repo_impl.dart'
    as _i655;
import 'package:saayer/features/user_info_view_page/sub_features/business_info/domain/repositories/business_info_repo.dart'
    as _i192;
import 'package:saayer/features/user_info_view_page/sub_features/business_info/domain/use_cases/submit_business_info_usecase.dart'
    as _i396;
import 'package:saayer/features/user_info_view_page/sub_features/business_info/presentation/bloc/business_info_bloc.dart'
    as _i684;
import 'package:saayer/features/verify_otp/data/data_sources/verify_otp_RDS.dart'
    as _i389;
import 'package:saayer/features/verify_otp/data/data_sources/verify_otp_RDS_impl.dart'
    as _i23;
import 'package:saayer/features/verify_otp/data/repositories/verify_otp_repo_impl.dart'
    as _i408;
import 'package:saayer/features/verify_otp/domain/repositories/verify_otp_repo.dart'
    as _i689;
import 'package:saayer/features/verify_otp/domain/use_cases/confirm_log_in_usecase.dart'
    as _i233;
import 'package:saayer/features/verify_otp/presentation/bloc/verify_otp_bloc.dart'
    as _i613;
import 'package:saayer/features/view_page/presentation/bloc/view_page_bloc.dart'
    as _i870;
import 'package:saayer/features/view_page/sub_features/home/data/data_sources/remote/home_RDS.dart'
    as _i99;
import 'package:saayer/features/view_page/sub_features/home/data/data_sources/remote/home_RDS_impl.dart'
    as _i322;
import 'package:saayer/features/view_page/sub_features/home/data/repositories/home_repo_impl.dart'
    as _i168;
import 'package:saayer/features/view_page/sub_features/home/domain/repositories/home_repo.dart'
    as _i586;
import 'package:saayer/features/view_page/sub_features/home/domain/use_cases/get_user_profile_usecase.dart'
    as _i689;
import 'package:saayer/features/view_page/sub_features/home/presentation/bloc/home_bloc.dart'
    as _i248;
import 'package:saayer/features/view_page/sub_features/more/presentation/bloc/more_bloc.dart'
    as _i778;
import 'package:saayer/features/view_page/sub_features/profile/presentation/bloc/profile_bloc.dart'
    as _i199;
import 'package:saayer/features/view_page/sub_features/request_shipment/presentation/bloc/request_shipment_bloc.dart'
    as _i304;
import 'package:saayer/features/view_page/sub_features/request_shipment/sub_features/address_shipment/presentation/bloc/address_shipment_bloc.dart'
    as _i526;
import 'package:saayer/features/view_page/sub_features/request_shipment/sub_features/shipment_information/presentation/bloc/information_shipment_bloc.dart'
    as _i1055;
import 'package:saayer/features/view_page/sub_features/request_shipment/sub_features/shipments_cariers_selection/presentation/bloc/carriers_shipment_bloc.dart'
    as _i509;
import 'package:saayer/features/view_page/sub_features/shipments/presentation/bloc/shipments_bloc.dart'
    as _i217;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.factory<_i317.LoggedInCheckerService>(
        () => _i317.LoggedInCheckerService());
    gh.factory<_i212.SettingsBloc>(() => _i212.SettingsBloc());
    gh.factory<_i900.WhySaayerBloc>(() => _i900.WhySaayerBloc());
    gh.factory<_i206.ContactUsBloc>(() => _i206.ContactUsBloc());
    gh.factory<_i360.ShippingRatesBloc>(() => _i360.ShippingRatesBloc());
    gh.factory<_i609.HelpBloc>(() => _i609.HelpBloc());
    gh.factory<_i1037.UserInfoViewPageBloc>(
        () => _i1037.UserInfoViewPageBloc());
    gh.factory<_i671.ShipmentDetailsBloc>(() => _i671.ShipmentDetailsBloc());
    gh.factory<_i79.InfoBloc>(() => _i79.InfoBloc());
    gh.factory<_i386.BillsBloc>(() => _i386.BillsBloc());
    gh.factory<_i740.ShipmentSpecsBloc>(() => _i740.ShipmentSpecsBloc());
    gh.factory<_i217.ShipmentsBloc>(() => _i217.ShipmentsBloc());
    gh.factory<_i509.CarriersShipmentBloc>(() => _i509.CarriersShipmentBloc());
    gh.factory<_i526.AddressShipmentBloc>(() => _i526.AddressShipmentBloc());
    gh.factory<_i1055.InformationShipmentBloc>(
        () => _i1055.InformationShipmentBloc());
    gh.factory<_i304.RequestShipmentBloc>(() => _i304.RequestShipmentBloc());
    gh.factory<_i778.MoreBloc>(() => _i778.MoreBloc());
    gh.factory<_i199.ProfileBloc>(() => _i199.ProfileBloc());
    gh.factory<_i870.ViewPageBloc>(() => _i870.ViewPageBloc());
    gh.factory<_i925.AddressDetailsBloc>(() => _i925.AddressDetailsBloc());
    gh.factory<_i110.NotificationsBloc>(() => _i110.NotificationsBloc());
    gh.factory<_i374.ReportsBloc>(() => _i374.ReportsBloc());
    gh.factory<_i352.StaticPagesBloc>(() => _i352.StaticPagesBloc());
    gh.singleton<_i552.AppFlavor>(() => _i552.AppFlavor());
    gh.singleton<_i502.SharedPrefService>(() => _i502.SharedPrefService());
    gh.singleton<_i275.LoggedInService>(() => _i275.LoggedInService());
    gh.singleton<_i355.NavigationService>(() => _i355.NavigationService());
    gh.singleton<_i361.Dio>(() => injectableModule.dio);
    gh.singleton<_i711.Openapi>(() => injectableModule.openapi);
    gh.lazySingleton<_i801.OpenAPIConfig>(
        () => _i801.OpenAPIConfig(openapi: gh<_i711.Openapi>()));
    gh.lazySingleton<_i919.NetworkInfo>(() => _i919.NetworkInfoImpl());
    gh.lazySingleton<_i151.ApiConsumer>(
        () => _i9.DioConsumer(client: gh<_i361.Dio>()));
    gh.lazySingleton<_i970.OpenapiInterceptors>(
        () => _i970.OpenapiInterceptors(client: gh<_i361.Dio>()));
    gh.lazySingleton<_i1059.AppInterceptors>(
        () => _i1059.AppInterceptors(client: gh<_i361.Dio>()));
    gh.factory<_i640.AddEditStoreRepo>(() =>
        _i469.StoreInfoRepoImpl(openAPIConfig: gh<_i801.OpenAPIConfig>()));
    gh.factory<_i389.VerifyOtpRDS>(
        () => _i23.VerifyOtpRDSImpl(apiConsumer: gh<_i151.ApiConsumer>()));
    gh.factory<_i586.HomeRepo>(
        () => _i168.HomeRepoImpl(openAPIConfig: gh<_i801.OpenAPIConfig>()));
    gh.factory<_i927.RefreshToken>(
        () => _i927.RefreshToken(apiConsumer: gh<_i151.ApiConsumer>()));
    gh.factory<_i79.AddEditAddressInfoRepo>(() =>
        _i31.AddEditAddressInfoRepoImpl(
            openAPIConfig: gh<_i801.OpenAPIConfig>()));
    gh.factory<_i689.VerifyOtpRepo>(() => _i408.VerifyOtpRepoImpl(
          verifyOtpRDSImpl: gh<_i389.VerifyOtpRDS>(),
          openAPIConfig: gh<_i801.OpenAPIConfig>(),
        ));
    gh.factory<_i400.LogInRDS>(
        () => _i211.LogInRDSImpl(apiConsumer: gh<_i151.ApiConsumer>()));
    gh.factory<_i1066.AddAddressInfoRDS>(
        () => _i16.AddAddressInfoRDSImpl(apiConsumer: gh<_i151.ApiConsumer>()));
    gh.factory<_i785.BusinessInfoRDS>(
        () => _i882.BusinessInfoRDSImpl(apiConsumer: gh<_i151.ApiConsumer>()));
    gh.factory<_i65.GetAreasUseCase>(() => _i65.GetAreasUseCase(
        addAddressInfoRepoImpl: gh<_i79.AddEditAddressInfoRepo>()));
    gh.factory<_i465.SubmitAddressInfoUseCase>(() =>
        _i465.SubmitAddressInfoUseCase(
            addAddressInfoRepoImpl: gh<_i79.AddEditAddressInfoRepo>()));
    gh.factory<_i469.UpdateAddressUseCase>(() => _i469.UpdateAddressUseCase(
        addAddressInfoRepoImpl: gh<_i79.AddEditAddressInfoRepo>()));
    gh.factory<_i263.GetGovernoratesUseCase>(() => _i263.GetGovernoratesUseCase(
        addAddressInfoRepoImpl: gh<_i79.AddEditAddressInfoRepo>()));
    gh.factory<_i753.GetCountriesUseCase>(() => _i753.GetCountriesUseCase(
        addAddressInfoRepoImpl: gh<_i79.AddEditAddressInfoRepo>()));
    gh.factory<_i590.GetCitiesUseCase>(() => _i590.GetCitiesUseCase(
        addAddressInfoRepoImpl: gh<_i79.AddEditAddressInfoRepo>()));
    gh.factory<_i792.PersonalInfoRepo>(() =>
        _i508.PersonalInfoRepoImpl(openAPIConfig: gh<_i801.OpenAPIConfig>()));
    gh.factory<_i451.AddressesBookRDS>(
        () => _i699.AddressesBookRDSImpl(apiConsumer: gh<_i151.ApiConsumer>()));
    gh.factory<_i191.AddressWidgetsBloc>(() => _i191.AddressWidgetsBloc(
          getCitiesUseCase: gh<_i590.GetCitiesUseCase>(),
          getCountriesUseCase: gh<_i753.GetCountriesUseCase>(),
          getGovernoratesUseCase: gh<_i263.GetGovernoratesUseCase>(),
          getAreasUseCase: gh<_i65.GetAreasUseCase>(),
        ));
    gh.factory<_i854.AddEditAddressBloc>(() => _i854.AddEditAddressBloc(
          submitAddressInfoUseCase: gh<_i465.SubmitAddressInfoUseCase>(),
          getCountriesUseCase: gh<_i753.GetCountriesUseCase>(),
          getGovernoratesUseCase: gh<_i263.GetGovernoratesUseCase>(),
          getCitiesUseCase: gh<_i590.GetCitiesUseCase>(),
          updateAddressUseCase: gh<_i469.UpdateAddressUseCase>(),
          getAreasUseCase: gh<_i65.GetAreasUseCase>(),
        ));
    gh.factory<_i735.LogInRepo>(() => _i681.LogInRepoImpl(
          logInRDSImpl: gh<_i400.LogInRDS>(),
          openAPIConfig: gh<_i801.OpenAPIConfig>(),
        ));
    gh.factory<_i356.LogInUseCase>(
        () => _i356.LogInUseCase(logInRepoImpl: gh<_i735.LogInRepo>()));
    gh.factory<_i35.ShipmentProvidersRDS>(() =>
        _i638.ShipmentProvidersRDSImpl(apiConsumer: gh<_i151.ApiConsumer>()));
    gh.factory<_i987.EditStoreUseCase>(() =>
        _i987.EditStoreUseCase(addEditStoreRepo: gh<_i640.AddEditStoreRepo>()));
    gh.factory<_i782.StoresListRepo>(() =>
        _i451.StoresListRepoImpl(openAPIConfig: gh<_i801.OpenAPIConfig>()));
    gh.factory<_i369.AddressWidgetsRDS>(() =>
        _i254.AddressWidgetsRDSImpl(apiConsumer: gh<_i151.ApiConsumer>()));
    gh.factory<_i609.UserCardRDS>(
        () => _i64.UserCardRDSImpl(apiConsumer: gh<_i151.ApiConsumer>()));
    gh.factory<_i192.BusinessInfoRepo>(() => _i655.BusinessInfoRepoImpl(
        businessInfoRDSImpl: gh<_i785.BusinessInfoRDS>()));
    gh.factory<_i689.GetUserProfileUseCase>(
        () => _i689.GetUserProfileUseCase(homeRepoImpl: gh<_i586.HomeRepo>()));
    gh.factory<_i99.HomeRDS>(
        () => _i322.HomeRDSImpl(apiConsumer: gh<_i151.ApiConsumer>()));
    gh.factory<_i233.ConfirmLogInUseCase>(() => _i233.ConfirmLogInUseCase(
        verifyOtpRepoImpl: gh<_i689.VerifyOtpRepo>()));
    gh.factory<_i5.SubmitStoreInfoUseCase>(() => _i5.SubmitStoreInfoUseCase(
        storeInfoRepoImpl: gh<_i640.AddEditStoreRepo>()));
    gh.factory<_i477.EditPersonalInfoUseCase>(() =>
        _i477.EditPersonalInfoUseCase(
            personalInfoRepoImpl: gh<_i792.PersonalInfoRepo>()));
    gh.factory<_i639.GetPersonalInfoUseCase>(() => _i639.GetPersonalInfoUseCase(
        personalInfoRepoImpl: gh<_i792.PersonalInfoRepo>()));
    gh.factory<_i42.AddressesBookRepo>(() => _i1022.AddressesBookRepoImpl(
          addressesBookRDSImpl: gh<_i451.AddressesBookRDS>(),
          openAPIConfig: gh<_i801.OpenAPIConfig>(),
        ));
    gh.factory<_i248.HomeBloc>(() => _i248.HomeBloc(
        getUserProfileUseCase: gh<_i689.GetUserProfileUseCase>()));
    gh.factory<_i68.UserCardRepo>(
        () => _i671.UserCardRepoImpl(userCardRDSImpl: gh<_i609.UserCardRDS>()));
    gh.factory<_i736.UserCardUseCase>(
        () => _i736.UserCardUseCase(userCardRepoImpl: gh<_i68.UserCardRepo>()));
    gh.factory<_i1058.EditAddressesUseCase>(() => _i1058.EditAddressesUseCase(
        addressesBookRepoImpl: gh<_i42.AddressesBookRepo>()));
    gh.factory<_i1014.DeleteAddressesUseCase>(() =>
        _i1014.DeleteAddressesUseCase(
            addressesBookRepoImpl: gh<_i42.AddressesBookRepo>()));
    gh.factory<_i436.GetAddressesUseCase>(() => _i436.GetAddressesUseCase(
        addressesBookRepoImpl: gh<_i42.AddressesBookRepo>()));
    gh.factory<_i833.GetStoresUseCase>(() =>
        _i833.GetStoresUseCase(storesListRepo: gh<_i782.StoresListRepo>()));
    gh.factory<_i490.DeleteStoresUseCase>(() =>
        _i490.DeleteStoresUseCase(storesListRepo: gh<_i782.StoresListRepo>()));
    gh.factory<_i260.UserCardBloc>(
        () => _i260.UserCardBloc(userCardUseCase: gh<_i736.UserCardUseCase>()));
    gh.factory<_i22.LogInBloc>(
        () => _i22.LogInBloc(logInUseCase: gh<_i356.LogInUseCase>()));
    gh.factory<_i613.VerifyOtpBloc>(() => _i613.VerifyOtpBloc(
          logInUseCase: gh<_i356.LogInUseCase>(),
          confirmLogInUseCase: gh<_i233.ConfirmLogInUseCase>(),
        ));
    gh.factory<_i1030.AddressWidgetsRepo>(() => _i572.AddressWidgetsRepoImpl(
        addressWidgetsRDSImpl: gh<_i369.AddressWidgetsRDS>()));
    gh.factory<_i23.PersonalInfoBloc>(() => _i23.PersonalInfoBloc(
          submitPersonalInfoUseCase: gh<_i477.EditPersonalInfoUseCase>(),
          getPersonalInfoUseCase: gh<_i639.GetPersonalInfoUseCase>(),
        ));
    gh.factory<_i396.SubmitBusinessInfoUseCase>(() =>
        _i396.SubmitBusinessInfoUseCase(
            businessInfoRepoImpl: gh<_i192.BusinessInfoRepo>()));
    gh.factory<_i377.ShipmentProvidersRepo>(() =>
        _i995.ShipmentProvidersRepoImpl(
            shipmentProvidersRDS: gh<_i35.ShipmentProvidersRDS>()));
    gh.factory<_i959.StoresListBloc>(() => _i959.StoresListBloc(
          getStoresUseCase: gh<_i833.GetStoresUseCase>(),
          deleteStoresUseCase: gh<_i490.DeleteStoresUseCase>(),
        ));
    gh.factory<_i684.BusinessInfoBloc>(() => _i684.BusinessInfoBloc(
        submitBusinessInfoUseCase: gh<_i396.SubmitBusinessInfoUseCase>()));
    gh.factory<_i613.AddressesBookBloc>(() => _i613.AddressesBookBloc(
          getAddressesUseCase: gh<_i436.GetAddressesUseCase>(),
          getCountriesUseCase: gh<_i753.GetCountriesUseCase>(),
          getGovernoratesUseCase: gh<_i263.GetGovernoratesUseCase>(),
          getCitiesUseCase: gh<_i590.GetCitiesUseCase>(),
          editAddressesUseCase: gh<_i1058.EditAddressesUseCase>(),
          deleteAddressesUseCase: gh<_i1014.DeleteAddressesUseCase>(),
        ));
    gh.factory<_i462.AddEditStoreBloc>(() => _i462.AddEditStoreBloc(
          submitStoreInfoUseCase: gh<_i5.SubmitStoreInfoUseCase>(),
          getCountriesUseCase: gh<_i753.GetCountriesUseCase>(),
          getGovernoratesUseCase: gh<_i263.GetGovernoratesUseCase>(),
          getCitiesUseCase: gh<_i590.GetCitiesUseCase>(),
          getAreasUseCase: gh<_i65.GetAreasUseCase>(),
          editStoreUseCase: gh<_i987.EditStoreUseCase>(),
        ));
    gh.factory<_i897.GetShipmentProvidersUseCase>(() =>
        _i897.GetShipmentProvidersUseCase(
            shipmentProvidersRepo: gh<_i377.ShipmentProvidersRepo>()));
    gh.factory<_i135.ShipmentProvidersBloc>(() => _i135.ShipmentProvidersBloc(
        getShipmentProvidersUseCase: gh<_i897.GetShipmentProvidersUseCase>()));
    return this;
  }
}

class _$InjectableModule extends _i847.InjectableModule {}
