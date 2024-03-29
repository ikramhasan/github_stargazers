// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GithubRepoDetailDto _$GithubRepoDetailDtoFromJson(Map<String, dynamic> json) {
  return _GithubRepoDetailDto.fromJson(json);
}

/// @nodoc
mixin _$GithubRepoDetailDto {
  String get fullName => throw _privateConstructorUsedError;
  String get html => throw _privateConstructorUsedError;
  bool get starred => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepoDetailDtoCopyWith<GithubRepoDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoDetailDtoCopyWith<$Res> {
  factory $GithubRepoDetailDtoCopyWith(
          GithubRepoDetailDto value, $Res Function(GithubRepoDetailDto) then) =
      _$GithubRepoDetailDtoCopyWithImpl<$Res, GithubRepoDetailDto>;
  @useResult
  $Res call({String fullName, String html, bool starred});
}

/// @nodoc
class _$GithubRepoDetailDtoCopyWithImpl<$Res, $Val extends GithubRepoDetailDto>
    implements $GithubRepoDetailDtoCopyWith<$Res> {
  _$GithubRepoDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? html = null,
    Object? starred = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      starred: null == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GithubRepoDetailDtoImplCopyWith<$Res>
    implements $GithubRepoDetailDtoCopyWith<$Res> {
  factory _$$GithubRepoDetailDtoImplCopyWith(_$GithubRepoDetailDtoImpl value,
          $Res Function(_$GithubRepoDetailDtoImpl) then) =
      __$$GithubRepoDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullName, String html, bool starred});
}

/// @nodoc
class __$$GithubRepoDetailDtoImplCopyWithImpl<$Res>
    extends _$GithubRepoDetailDtoCopyWithImpl<$Res, _$GithubRepoDetailDtoImpl>
    implements _$$GithubRepoDetailDtoImplCopyWith<$Res> {
  __$$GithubRepoDetailDtoImplCopyWithImpl(_$GithubRepoDetailDtoImpl _value,
      $Res Function(_$GithubRepoDetailDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? html = null,
    Object? starred = null,
  }) {
    return _then(_$GithubRepoDetailDtoImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      starred: null == starred
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GithubRepoDetailDtoImpl extends _GithubRepoDetailDto {
  const _$GithubRepoDetailDtoImpl(
      {required this.fullName, required this.html, required this.starred})
      : super._();

  factory _$GithubRepoDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GithubRepoDetailDtoImplFromJson(json);

  @override
  final String fullName;
  @override
  final String html;
  @override
  final bool starred;

  @override
  String toString() {
    return 'GithubRepoDetailDto(fullName: $fullName, html: $html, starred: $starred)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepoDetailDtoImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.starred, starred) || other.starred == starred));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, html, starred);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubRepoDetailDtoImplCopyWith<_$GithubRepoDetailDtoImpl> get copyWith =>
      __$$GithubRepoDetailDtoImplCopyWithImpl<_$GithubRepoDetailDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubRepoDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _GithubRepoDetailDto extends GithubRepoDetailDto {
  const factory _GithubRepoDetailDto(
      {required final String fullName,
      required final String html,
      required final bool starred}) = _$GithubRepoDetailDtoImpl;
  const _GithubRepoDetailDto._() : super._();

  factory _GithubRepoDetailDto.fromJson(Map<String, dynamic> json) =
      _$GithubRepoDetailDtoImpl.fromJson;

  @override
  String get fullName;
  @override
  String get html;
  @override
  bool get starred;
  @override
  @JsonKey(ignore: true)
  _$$GithubRepoDetailDtoImplCopyWith<_$GithubRepoDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
