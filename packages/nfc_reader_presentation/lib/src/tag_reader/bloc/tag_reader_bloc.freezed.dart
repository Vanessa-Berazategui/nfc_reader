// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_reader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TagReaderState {
  bool get loading => throw _privateConstructorUsedError;
  Map<String, dynamic>? get tagData => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagReaderStateCopyWith<TagReaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagReaderStateCopyWith<$Res> {
  factory $TagReaderStateCopyWith(
          TagReaderState value, $Res Function(TagReaderState) then) =
      _$TagReaderStateCopyWithImpl<$Res, TagReaderState>;
  @useResult
  $Res call({bool loading, Map<String, dynamic>? tagData, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$TagReaderStateCopyWithImpl<$Res, $Val extends TagReaderState>
    implements $TagReaderStateCopyWith<$Res> {
  _$TagReaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? tagData = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      tagData: freezed == tagData
          ? _value.tagData
          : tagData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TagReaderStateImplCopyWith<$Res>
    implements $TagReaderStateCopyWith<$Res> {
  factory _$$TagReaderStateImplCopyWith(_$TagReaderStateImpl value,
          $Res Function(_$TagReaderStateImpl) then) =
      __$$TagReaderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, Map<String, dynamic>? tagData, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$TagReaderStateImplCopyWithImpl<$Res>
    extends _$TagReaderStateCopyWithImpl<$Res, _$TagReaderStateImpl>
    implements _$$TagReaderStateImplCopyWith<$Res> {
  __$$TagReaderStateImplCopyWithImpl(
      _$TagReaderStateImpl _value, $Res Function(_$TagReaderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? tagData = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$TagReaderStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      tagData: freezed == tagData
          ? _value._tagData
          : tagData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$TagReaderStateImpl implements _TagReaderState {
  const _$TagReaderStateImpl(
      {required this.loading,
      final Map<String, dynamic>? tagData,
      this.failure})
      : _tagData = tagData;

  @override
  final bool loading;
  final Map<String, dynamic>? _tagData;
  @override
  Map<String, dynamic>? get tagData {
    final value = _tagData;
    if (value == null) return null;
    if (_tagData is EqualUnmodifiableMapView) return _tagData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'TagReaderState(loading: $loading, tagData: $tagData, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagReaderStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._tagData, _tagData) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading,
      const DeepCollectionEquality().hash(_tagData), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagReaderStateImplCopyWith<_$TagReaderStateImpl> get copyWith =>
      __$$TagReaderStateImplCopyWithImpl<_$TagReaderStateImpl>(
          this, _$identity);
}

abstract class _TagReaderState implements TagReaderState {
  const factory _TagReaderState(
      {required final bool loading,
      final Map<String, dynamic>? tagData,
      final Failure? failure}) = _$TagReaderStateImpl;

  @override
  bool get loading;
  @override
  Map<String, dynamic>? get tagData;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$TagReaderStateImplCopyWith<_$TagReaderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
