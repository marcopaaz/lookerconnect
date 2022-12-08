import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'credentials_record.g.dart';

abstract class CredentialsRecord
    implements Built<CredentialsRecord, CredentialsRecordBuilder> {
  static Serializer<CredentialsRecord> get serializer =>
      _$credentialsRecordSerializer;

  @BuiltValueField(wireName: 'host_url')
  String? get hostUrl;

  @BuiltValueField(wireName: 'cliend_id')
  String? get cliendId;

  @BuiltValueField(wireName: 'client_secret')
  String? get clientSecret;

  @BuiltValueField(wireName: 'verify_ssl')
  bool? get verifySsl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CredentialsRecordBuilder builder) => builder
    ..hostUrl = ''
    ..cliendId = ''
    ..clientSecret = ''
    ..verifySsl = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('credentials');

  static Stream<CredentialsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CredentialsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CredentialsRecord._();
  factory CredentialsRecord([void Function(CredentialsRecordBuilder) updates]) =
      _$CredentialsRecord;

  static CredentialsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCredentialsRecordData({
  String? hostUrl,
  String? cliendId,
  String? clientSecret,
  bool? verifySsl,
}) {
  final firestoreData = serializers.toFirestore(
    CredentialsRecord.serializer,
    CredentialsRecord(
      (c) => c
        ..hostUrl = hostUrl
        ..cliendId = cliendId
        ..clientSecret = clientSecret
        ..verifySsl = verifySsl,
    ),
  );

  return firestoreData;
}
