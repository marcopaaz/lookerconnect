// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrentUserRecord> _$currentUserRecordSerializer =
    new _$CurrentUserRecordSerializer();

class _$CurrentUserRecordSerializer
    implements StructuredSerializer<CurrentUserRecord> {
  @override
  final Iterable<Type> types = const [CurrentUserRecord, _$CurrentUserRecord];
  @override
  final String wireName = 'CurrentUserRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CurrentUserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('first_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('last_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatarUrl;
    if (value != null) {
      result
        ..add('avatar_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatarUrlSizing;
    if (value != null) {
      result
        ..add('avatar_url_sizing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CurrentUserRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentUserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatar_url':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatar_url_sizing':
          result.avatarUrlSizing = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$CurrentUserRecord extends CurrentUserRecord {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? avatarUrl;
  @override
  final String? avatarUrlSizing;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CurrentUserRecord(
          [void Function(CurrentUserRecordBuilder)? updates]) =>
      (new CurrentUserRecordBuilder()..update(updates))._build();

  _$CurrentUserRecord._(
      {this.firstName,
      this.lastName,
      this.avatarUrl,
      this.avatarUrlSizing,
      this.ffRef})
      : super._();

  @override
  CurrentUserRecord rebuild(void Function(CurrentUserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentUserRecordBuilder toBuilder() =>
      new CurrentUserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentUserRecord &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        avatarUrl == other.avatarUrl &&
        avatarUrlSizing == other.avatarUrlSizing &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, firstName.hashCode), lastName.hashCode),
                avatarUrl.hashCode),
            avatarUrlSizing.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CurrentUserRecord')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('avatarUrl', avatarUrl)
          ..add('avatarUrlSizing', avatarUrlSizing)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CurrentUserRecordBuilder
    implements Builder<CurrentUserRecord, CurrentUserRecordBuilder> {
  _$CurrentUserRecord? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _avatarUrl;
  String? get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String? avatarUrl) => _$this._avatarUrl = avatarUrl;

  String? _avatarUrlSizing;
  String? get avatarUrlSizing => _$this._avatarUrlSizing;
  set avatarUrlSizing(String? avatarUrlSizing) =>
      _$this._avatarUrlSizing = avatarUrlSizing;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CurrentUserRecordBuilder() {
    CurrentUserRecord._initializeBuilder(this);
  }

  CurrentUserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _avatarUrl = $v.avatarUrl;
      _avatarUrlSizing = $v.avatarUrlSizing;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentUserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrentUserRecord;
  }

  @override
  void update(void Function(CurrentUserRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CurrentUserRecord build() => _build();

  _$CurrentUserRecord _build() {
    final _$result = _$v ??
        new _$CurrentUserRecord._(
            firstName: firstName,
            lastName: lastName,
            avatarUrl: avatarUrl,
            avatarUrlSizing: avatarUrlSizing,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
