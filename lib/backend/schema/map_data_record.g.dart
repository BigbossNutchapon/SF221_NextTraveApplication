// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_data_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MapDataRecord> _$mapDataRecordSerializer =
    new _$MapDataRecordSerializer();

class _$MapDataRecordSerializer implements StructuredSerializer<MapDataRecord> {
  @override
  final Iterable<Type> types = const [MapDataRecord, _$MapDataRecord];
  @override
  final String wireName = 'MapDataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MapDataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.mapAddress;
    if (value != null) {
      result
        ..add('mapAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MapDataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MapDataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mapAddress':
          result.mapAddress = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MapDataRecord extends MapDataRecord {
  @override
  final LatLng? mapAddress;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MapDataRecord([void Function(MapDataRecordBuilder)? updates]) =>
      (new MapDataRecordBuilder()..update(updates))._build();

  _$MapDataRecord._({this.mapAddress, this.ffRef}) : super._();

  @override
  MapDataRecord rebuild(void Function(MapDataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapDataRecordBuilder toBuilder() => new MapDataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapDataRecord &&
        mapAddress == other.mapAddress &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mapAddress.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapDataRecord')
          ..add('mapAddress', mapAddress)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MapDataRecordBuilder
    implements Builder<MapDataRecord, MapDataRecordBuilder> {
  _$MapDataRecord? _$v;

  LatLng? _mapAddress;
  LatLng? get mapAddress => _$this._mapAddress;
  set mapAddress(LatLng? mapAddress) => _$this._mapAddress = mapAddress;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MapDataRecordBuilder() {
    MapDataRecord._initializeBuilder(this);
  }

  MapDataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mapAddress = $v.mapAddress;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapDataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapDataRecord;
  }

  @override
  void update(void Function(MapDataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapDataRecord build() => _build();

  _$MapDataRecord _build() {
    final _$result =
        _$v ?? new _$MapDataRecord._(mapAddress: mapAddress, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
