// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CredentialsRecord> _$credentialsRecordSerializer =
    new _$CredentialsRecordSerializer();

class _$CredentialsRecordSerializer
    implements StructuredSerializer<CredentialsRecord> {
  @override
  final Iterable<Type> types = const [CredentialsRecord, _$CredentialsRecord];
  @override
  final String wireName = 'CredentialsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CredentialsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.hostUrl;
    if (value != null) {
      result
        ..add('host_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cliendId;
    if (value != null) {
      result
        ..add('cliend_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.clientSecret;
    if (value != null) {
      result
        ..add('client_secret')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.verifySsl;
    if (value != null) {
      result
        ..add('verify_ssl')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  CredentialsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CredentialsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'host_url':
          result.hostUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cliend_id':
          result.cliendId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'client_secret':
          result.clientSecret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'verify_ssl':
          result.verifySsl = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$CredentialsRecord extends CredentialsRecord {
  @override
  final String? hostUrl;
  @override
  final String? cliendId;
  @override
  final String? clientSecret;
  @override
  final bool? verifySsl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CredentialsRecord(
          [void Function(CredentialsRecordBuilder)? updates]) =>
      (new CredentialsRecordBuilder()..update(updates))._build();

  _$CredentialsRecord._(
      {this.hostUrl,
      this.cliendId,
      this.clientSecret,
      this.verifySsl,
      this.ffRef})
      : super._();

  @override
  CredentialsRecord rebuild(void Function(CredentialsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialsRecordBuilder toBuilder() =>
      new CredentialsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialsRecord &&
        hostUrl == other.hostUrl &&
        cliendId == other.cliendId &&
        clientSecret == other.clientSecret &&
        verifySsl == other.verifySsl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, hostUrl.hashCode), cliendId.hashCode),
                clientSecret.hashCode),
            verifySsl.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialsRecord')
          ..add('hostUrl', hostUrl)
          ..add('cliendId', cliendId)
          ..add('clientSecret', clientSecret)
          ..add('verifySsl', verifySsl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CredentialsRecordBuilder
    implements Builder<CredentialsRecord, CredentialsRecordBuilder> {
  _$CredentialsRecord? _$v;

  String? _hostUrl;
  String? get hostUrl => _$this._hostUrl;
  set hostUrl(String? hostUrl) => _$this._hostUrl = hostUrl;

  String? _cliendId;
  String? get cliendId => _$this._cliendId;
  set cliendId(String? cliendId) => _$this._cliendId = cliendId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  bool? _verifySsl;
  bool? get verifySsl => _$this._verifySsl;
  set verifySsl(bool? verifySsl) => _$this._verifySsl = verifySsl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CredentialsRecordBuilder() {
    CredentialsRecord._initializeBuilder(this);
  }

  CredentialsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hostUrl = $v.hostUrl;
      _cliendId = $v.cliendId;
      _clientSecret = $v.clientSecret;
      _verifySsl = $v.verifySsl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CredentialsRecord;
  }

  @override
  void update(void Function(CredentialsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialsRecord build() => _build();

  _$CredentialsRecord _build() {
    final _$result = _$v ??
        new _$CredentialsRecord._(
            hostUrl: hostUrl,
            cliendId: cliendId,
            clientSecret: clientSecret,
            verifySsl: verifySsl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
