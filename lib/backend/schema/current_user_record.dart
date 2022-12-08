import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'current_user_record.g.dart';

abstract class CurrentUserRecord
    implements Built<CurrentUserRecord, CurrentUserRecordBuilder> {
  static Serializer<CurrentUserRecord> get serializer =>
      _$currentUserRecordSerializer;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'avatar_url')
  String? get avatarUrl;

  @BuiltValueField(wireName: 'avatar_url_sizing')
  String? get avatarUrlSizing;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CurrentUserRecordBuilder builder) => builder
    ..firstName = ''
    ..lastName = ''
    ..avatarUrl = ''
    ..avatarUrlSizing = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('current_user');

  static Stream<CurrentUserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CurrentUserRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CurrentUserRecord._();
  factory CurrentUserRecord([void Function(CurrentUserRecordBuilder) updates]) =
      _$CurrentUserRecord;

  static CurrentUserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCurrentUserRecordData({
  String? firstName,
  String? lastName,
  String? avatarUrl,
  String? avatarUrlSizing,
}) {
  final firestoreData = serializers.toFirestore(
    CurrentUserRecord.serializer,
    CurrentUserRecord(
      (c) => c
        ..firstName = firstName
        ..lastName = lastName
        ..avatarUrl = avatarUrl
        ..avatarUrlSizing = avatarUrlSizing,
    ),
  );

  return firestoreData;
}
