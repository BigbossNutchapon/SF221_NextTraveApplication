import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'map_data_record.g.dart';

abstract class MapDataRecord
    implements Built<MapDataRecord, MapDataRecordBuilder> {
  static Serializer<MapDataRecord> get serializer => _$mapDataRecordSerializer;

  LatLng? get mapAddress;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MapDataRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mapData');

  static Stream<MapDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MapDataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MapDataRecord._();
  factory MapDataRecord([void Function(MapDataRecordBuilder) updates]) =
      _$MapDataRecord;

  static MapDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMapDataRecordData({
  LatLng? mapAddress,
}) {
  final firestoreData = serializers.toFirestore(
    MapDataRecord.serializer,
    MapDataRecord(
      (m) => m..mapAddress = mapAddress,
    ),
  );

  return firestoreData;
}
