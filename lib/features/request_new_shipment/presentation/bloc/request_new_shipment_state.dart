part of 'request_new_shipment_bloc.dart';

class RequestNewShipmentState extends Equatable {
  final StateHelper stateHelper;
  final AutovalidateMode autoValidateMode;
  final int currentPage;
  final AddressInfoEntity? addressInfoEntity;
  final ShipmentAddDto? shipmentDtoBody;
  final List<CustomerGetDto>? customersAddresses;
  final CustomerQuery? senderCustomerQuery;
  final CustomerQuery? receiverCustomerQuery;
  final bool? hasNextPage;
  final List<StoreGetDto>? storesList;
  final int? senderStoreId;
  final int? senderCustomerId;
  final int? receiverStoreId;
  final int? receiverCustomerId;

  const RequestNewShipmentState({
    this.stateHelper = const StateHelper(requestState: RequestState.LOADING),
    this.autoValidateMode = AutovalidateMode.disabled,
    this.currentPage = 0,
    this.addressInfoEntity,
    this.shipmentDtoBody,
    this.customersAddresses,
    this.senderCustomerQuery,
    this.receiverCustomerQuery,
    this.hasNextPage,
    this.storesList,
    this.senderStoreId,
    this.senderCustomerId,
    this.receiverStoreId,
    this.receiverCustomerId,
  });

  RequestNewShipmentState copyWith({
    StateHelper? stateHelper,
    AutovalidateMode? autoValidateMode,
    int? currentPage,
    AddressInfoEntity? addressInfoEntity,
    ShipmentAddDto? shipmentDtoBody,
    List<CustomerGetDto>? customersAddresses,
    CustomerQuery? senderCustomerQuery,
    CustomerQuery? receiverCustomerQuery,
    bool? hasNextPage,
    List<StoreGetDto>? storesList,
    int? senderStoreId,
    int? senderCustomerId,
    int? receiverStoreId,
    int? receiverCustomerId,
  }) {
    return RequestNewShipmentState(
      stateHelper: stateHelper ?? this.stateHelper,
      autoValidateMode: autoValidateMode ?? this.autoValidateMode,
      currentPage: currentPage ?? this.currentPage,
      addressInfoEntity: addressInfoEntity ?? this.addressInfoEntity,
      shipmentDtoBody: shipmentDtoBody ?? this.shipmentDtoBody,
      customersAddresses: customersAddresses ?? this.customersAddresses,
      senderCustomerQuery: senderCustomerQuery ?? this.senderCustomerQuery,
      receiverCustomerQuery: receiverCustomerQuery ?? this.receiverCustomerQuery,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      storesList: storesList ?? this.storesList,
      senderStoreId: senderStoreId ?? this.senderStoreId,
      senderCustomerId: senderCustomerId ?? this.senderCustomerId,
      receiverStoreId: receiverStoreId ?? this.receiverStoreId,
      receiverCustomerId: receiverCustomerId ?? this.receiverCustomerId,
    );
  }

  @override
  List<Object?> get props => [
        stateHelper,
        autoValidateMode,
        currentPage,
        addressInfoEntity,
        shipmentDtoBody,
        customersAddresses,
        senderCustomerQuery,
        receiverCustomerQuery,
        hasNextPage,
        storesList,
        senderStoreId,
        senderCustomerId,
        receiverStoreId,
        receiverCustomerId,
      ];
}
