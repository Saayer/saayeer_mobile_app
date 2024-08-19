//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shipment_get_dto.g.dart';

/// ShipmentGetDto
///
/// Properties:
/// * [shipmentId] 
/// * [length] 
/// * [height] 
/// * [width] 
/// * [weight] 
/// * [contentDesc] 
/// * [contentValue] 
/// * [cost] 
/// * [shipingDate] 
/// * [logisticServiceName] 
/// * [status] 
/// * [senderCustomerId] 
/// * [receiverCustomerId] 
/// * [senderStoreId] 
/// * [receiverStoreId] 
@BuiltValue()
abstract class ShipmentGetDto implements Built<ShipmentGetDto, ShipmentGetDtoBuilder> {
  @BuiltValueField(wireName: r'shipmentId')
  int? get shipmentId;

  @BuiltValueField(wireName: r'length')
  double? get length;

  @BuiltValueField(wireName: r'height')
  double? get height;

  @BuiltValueField(wireName: r'width')
  double? get width;

  @BuiltValueField(wireName: r'weight')
  double? get weight;

  @BuiltValueField(wireName: r'contentDesc')
  String? get contentDesc;

  @BuiltValueField(wireName: r'contentValue')
  double? get contentValue;

  @BuiltValueField(wireName: r'cost')
  double? get cost;

  @BuiltValueField(wireName: r'shipingDate')
  DateTime? get shipingDate;

  @BuiltValueField(wireName: r'logisticServiceName')
  String? get logisticServiceName;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'senderCustomerId')
  int? get senderCustomerId;

  @BuiltValueField(wireName: r'receiverCustomerId')
  int? get receiverCustomerId;

  @BuiltValueField(wireName: r'senderStoreId')
  int? get senderStoreId;

  @BuiltValueField(wireName: r'receiverStoreId')
  int? get receiverStoreId;

  ShipmentGetDto._();

  factory ShipmentGetDto([void updates(ShipmentGetDtoBuilder b)]) = _$ShipmentGetDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShipmentGetDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShipmentGetDto> get serializer => _$ShipmentGetDtoSerializer();
}

class _$ShipmentGetDtoSerializer implements PrimitiveSerializer<ShipmentGetDto> {
  @override
  final Iterable<Type> types = const [ShipmentGetDto, _$ShipmentGetDto];

  @override
  final String wireName = r'ShipmentGetDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShipmentGetDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.shipmentId != null) {
      yield r'shipmentId';
      yield serializers.serialize(
        object.shipmentId,
        specifiedType: const FullType(int),
      );
    }
    if (object.length != null) {
      yield r'length';
      yield serializers.serialize(
        object.length,
        specifiedType: const FullType(double),
      );
    }
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType(double),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(double),
      );
    }
    if (object.weight != null) {
      yield r'weight';
      yield serializers.serialize(
        object.weight,
        specifiedType: const FullType(double),
      );
    }
    if (object.contentDesc != null) {
      yield r'contentDesc';
      yield serializers.serialize(
        object.contentDesc,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.contentValue != null) {
      yield r'contentValue';
      yield serializers.serialize(
        object.contentValue,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.cost != null) {
      yield r'cost';
      yield serializers.serialize(
        object.cost,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.shipingDate != null) {
      yield r'shipingDate';
      yield serializers.serialize(
        object.shipingDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.logisticServiceName != null) {
      yield r'logisticServiceName';
      yield serializers.serialize(
        object.logisticServiceName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.senderCustomerId != null) {
      yield r'senderCustomerId';
      yield serializers.serialize(
        object.senderCustomerId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.receiverCustomerId != null) {
      yield r'receiverCustomerId';
      yield serializers.serialize(
        object.receiverCustomerId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.senderStoreId != null) {
      yield r'senderStoreId';
      yield serializers.serialize(
        object.senderStoreId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.receiverStoreId != null) {
      yield r'receiverStoreId';
      yield serializers.serialize(
        object.receiverStoreId,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ShipmentGetDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ShipmentGetDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'shipmentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.shipmentId = valueDes;
          break;
        case r'length':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.length = valueDes;
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.height = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.width = valueDes;
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.weight = valueDes;
          break;
        case r'contentDesc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contentDesc = valueDes;
          break;
        case r'contentValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.contentValue = valueDes;
          break;
        case r'cost':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.cost = valueDes;
          break;
        case r'shipingDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.shipingDate = valueDes;
          break;
        case r'logisticServiceName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logisticServiceName = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'senderCustomerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.senderCustomerId = valueDes;
          break;
        case r'receiverCustomerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.receiverCustomerId = valueDes;
          break;
        case r'senderStoreId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.senderStoreId = valueDes;
          break;
        case r'receiverStoreId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.receiverStoreId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShipmentGetDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShipmentGetDtoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

