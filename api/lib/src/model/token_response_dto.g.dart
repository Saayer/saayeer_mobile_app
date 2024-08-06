// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenResponseDto extends TokenResponseDto {
  @override
  final String? role;
  @override
  final String? token;
  @override
  final DateTime? expiration;

  factory _$TokenResponseDto(
          [void Function(TokenResponseDtoBuilder)? updates]) =>
      (new TokenResponseDtoBuilder()..update(updates))._build();

  _$TokenResponseDto._({this.role, this.token, this.expiration}) : super._();

  @override
  TokenResponseDto rebuild(void Function(TokenResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenResponseDtoBuilder toBuilder() =>
      new TokenResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenResponseDto &&
        role == other.role &&
        token == other.token &&
        expiration == other.expiration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, expiration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenResponseDto')
          ..add('role', role)
          ..add('token', token)
          ..add('expiration', expiration))
        .toString();
  }
}

class TokenResponseDtoBuilder
    implements Builder<TokenResponseDto, TokenResponseDtoBuilder> {
  _$TokenResponseDto? _$v;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  DateTime? _expiration;
  DateTime? get expiration => _$this._expiration;
  set expiration(DateTime? expiration) => _$this._expiration = expiration;

  TokenResponseDtoBuilder() {
    TokenResponseDto._defaults(this);
  }

  TokenResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _token = $v.token;
      _expiration = $v.expiration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenResponseDto;
  }

  @override
  void update(void Function(TokenResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenResponseDto build() => _build();

  _$TokenResponseDto _build() {
    final _$result = _$v ??
        new _$TokenResponseDto._(
            role: role, token: token, expiration: expiration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint