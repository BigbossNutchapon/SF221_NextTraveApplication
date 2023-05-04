// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatsRecord> _$chatsRecordSerializer = new _$ChatsRecordSerializer();

class _$ChatsRecordSerializer implements StructuredSerializer<ChatsRecord> {
  @override
  final Iterable<Type> types = const [ChatsRecord, _$ChatsRecord];
  @override
  final String wireName = 'ChatsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChatsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.userA;
    if (value != null) {
      result
        ..add('user_a')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.userB;
    if (value != null) {
      result
        ..add('user_b')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.lastMessage;
    if (value != null) {
      result
        ..add('last_message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastMessageTime;
    if (value != null) {
      result
        ..add('last_message_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.lastMessageSeenBy;
    if (value != null) {
      result
        ..add('last_message_seen_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.lastMessageSentBy;
    if (value != null) {
      result
        ..add('last_message_sent_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.header;
    if (value != null) {
      result
        ..add('Header')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.detail;
    if (value != null) {
      result
        ..add('Detail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quota;
    if (value != null) {
      result
        ..add('Quota')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dateTime;
    if (value != null) {
      result
        ..add('DateTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('Location')
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
  ChatsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'user_a':
          result.userA = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'user_b':
          result.userB = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'last_message':
          result.lastMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_message_time':
          result.lastMessageTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'last_message_seen_by':
          result.lastMessageSeenBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'last_message_sent_by':
          result.lastMessageSentBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Header':
          result.header = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Detail':
          result.detail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Quota':
          result.quota = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'DateTime':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Location':
          result.location = serializers.deserialize(value,
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

class _$ChatsRecord extends ChatsRecord {
  @override
  final BuiltList<DocumentReference<Object?>>? users;
  @override
  final DocumentReference<Object?>? userA;
  @override
  final DocumentReference<Object?>? userB;
  @override
  final String? lastMessage;
  @override
  final DateTime? lastMessageTime;
  @override
  final BuiltList<DocumentReference<Object?>>? lastMessageSeenBy;
  @override
  final DocumentReference<Object?>? lastMessageSentBy;
  @override
  final String? header;
  @override
  final String? detail;
  @override
  final int? quota;
  @override
  final DateTime? dateTime;
  @override
  final String? location;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChatsRecord([void Function(ChatsRecordBuilder)? updates]) =>
      (new ChatsRecordBuilder()..update(updates))._build();

  _$ChatsRecord._(
      {this.users,
      this.userA,
      this.userB,
      this.lastMessage,
      this.lastMessageTime,
      this.lastMessageSeenBy,
      this.lastMessageSentBy,
      this.header,
      this.detail,
      this.quota,
      this.dateTime,
      this.location,
      this.ffRef})
      : super._();

  @override
  ChatsRecord rebuild(void Function(ChatsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatsRecordBuilder toBuilder() => new ChatsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatsRecord &&
        users == other.users &&
        userA == other.userA &&
        userB == other.userB &&
        lastMessage == other.lastMessage &&
        lastMessageTime == other.lastMessageTime &&
        lastMessageSeenBy == other.lastMessageSeenBy &&
        lastMessageSentBy == other.lastMessageSentBy &&
        header == other.header &&
        detail == other.detail &&
        quota == other.quota &&
        dateTime == other.dateTime &&
        location == other.location &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, users.hashCode);
    _$hash = $jc(_$hash, userA.hashCode);
    _$hash = $jc(_$hash, userB.hashCode);
    _$hash = $jc(_$hash, lastMessage.hashCode);
    _$hash = $jc(_$hash, lastMessageTime.hashCode);
    _$hash = $jc(_$hash, lastMessageSeenBy.hashCode);
    _$hash = $jc(_$hash, lastMessageSentBy.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, quota.hashCode);
    _$hash = $jc(_$hash, dateTime.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatsRecord')
          ..add('users', users)
          ..add('userA', userA)
          ..add('userB', userB)
          ..add('lastMessage', lastMessage)
          ..add('lastMessageTime', lastMessageTime)
          ..add('lastMessageSeenBy', lastMessageSeenBy)
          ..add('lastMessageSentBy', lastMessageSentBy)
          ..add('header', header)
          ..add('detail', detail)
          ..add('quota', quota)
          ..add('dateTime', dateTime)
          ..add('location', location)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChatsRecordBuilder implements Builder<ChatsRecord, ChatsRecordBuilder> {
  _$ChatsRecord? _$v;

  ListBuilder<DocumentReference<Object?>>? _users;
  ListBuilder<DocumentReference<Object?>> get users =>
      _$this._users ??= new ListBuilder<DocumentReference<Object?>>();
  set users(ListBuilder<DocumentReference<Object?>>? users) =>
      _$this._users = users;

  DocumentReference<Object?>? _userA;
  DocumentReference<Object?>? get userA => _$this._userA;
  set userA(DocumentReference<Object?>? userA) => _$this._userA = userA;

  DocumentReference<Object?>? _userB;
  DocumentReference<Object?>? get userB => _$this._userB;
  set userB(DocumentReference<Object?>? userB) => _$this._userB = userB;

  String? _lastMessage;
  String? get lastMessage => _$this._lastMessage;
  set lastMessage(String? lastMessage) => _$this._lastMessage = lastMessage;

  DateTime? _lastMessageTime;
  DateTime? get lastMessageTime => _$this._lastMessageTime;
  set lastMessageTime(DateTime? lastMessageTime) =>
      _$this._lastMessageTime = lastMessageTime;

  ListBuilder<DocumentReference<Object?>>? _lastMessageSeenBy;
  ListBuilder<DocumentReference<Object?>> get lastMessageSeenBy =>
      _$this._lastMessageSeenBy ??=
          new ListBuilder<DocumentReference<Object?>>();
  set lastMessageSeenBy(
          ListBuilder<DocumentReference<Object?>>? lastMessageSeenBy) =>
      _$this._lastMessageSeenBy = lastMessageSeenBy;

  DocumentReference<Object?>? _lastMessageSentBy;
  DocumentReference<Object?>? get lastMessageSentBy =>
      _$this._lastMessageSentBy;
  set lastMessageSentBy(DocumentReference<Object?>? lastMessageSentBy) =>
      _$this._lastMessageSentBy = lastMessageSentBy;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  int? _quota;
  int? get quota => _$this._quota;
  set quota(int? quota) => _$this._quota = quota;

  DateTime? _dateTime;
  DateTime? get dateTime => _$this._dateTime;
  set dateTime(DateTime? dateTime) => _$this._dateTime = dateTime;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChatsRecordBuilder() {
    ChatsRecord._initializeBuilder(this);
  }

  ChatsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users?.toBuilder();
      _userA = $v.userA;
      _userB = $v.userB;
      _lastMessage = $v.lastMessage;
      _lastMessageTime = $v.lastMessageTime;
      _lastMessageSeenBy = $v.lastMessageSeenBy?.toBuilder();
      _lastMessageSentBy = $v.lastMessageSentBy;
      _header = $v.header;
      _detail = $v.detail;
      _quota = $v.quota;
      _dateTime = $v.dateTime;
      _location = $v.location;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatsRecord;
  }

  @override
  void update(void Function(ChatsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatsRecord build() => _build();

  _$ChatsRecord _build() {
    _$ChatsRecord _$result;
    try {
      _$result = _$v ??
          new _$ChatsRecord._(
              users: _users?.build(),
              userA: userA,
              userB: userB,
              lastMessage: lastMessage,
              lastMessageTime: lastMessageTime,
              lastMessageSeenBy: _lastMessageSeenBy?.build(),
              lastMessageSentBy: lastMessageSentBy,
              header: header,
              detail: detail,
              quota: quota,
              dateTime: dateTime,
              location: location,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();

        _$failedField = 'lastMessageSeenBy';
        _lastMessageSeenBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
