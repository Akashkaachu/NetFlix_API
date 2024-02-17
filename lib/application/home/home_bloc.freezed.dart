// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() topTenRated,
    required TResult Function() releasedYear,
    required TResult Function() trending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? topTenRated,
    TResult? Function()? releasedYear,
    TResult? Function()? trending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? topTenRated,
    TResult Function()? releasedYear,
    TResult Function()? trending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopTenRated value) topTenRated,
    required TResult Function(ReleasedYear value) releasedYear,
    required TResult Function(Trending value) trending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopTenRated value)? topTenRated,
    TResult? Function(ReleasedYear value)? releasedYear,
    TResult? Function(Trending value)? trending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopTenRated value)? topTenRated,
    TResult Function(ReleasedYear value)? releasedYear,
    TResult Function(Trending value)? trending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TopTenRatedImplCopyWith<$Res> {
  factory _$$TopTenRatedImplCopyWith(
          _$TopTenRatedImpl value, $Res Function(_$TopTenRatedImpl) then) =
      __$$TopTenRatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopTenRatedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$TopTenRatedImpl>
    implements _$$TopTenRatedImplCopyWith<$Res> {
  __$$TopTenRatedImplCopyWithImpl(
      _$TopTenRatedImpl _value, $Res Function(_$TopTenRatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TopTenRatedImpl implements TopTenRated {
  const _$TopTenRatedImpl();

  @override
  String toString() {
    return 'HomeEvent.topTenRated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TopTenRatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() topTenRated,
    required TResult Function() releasedYear,
    required TResult Function() trending,
  }) {
    return topTenRated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? topTenRated,
    TResult? Function()? releasedYear,
    TResult? Function()? trending,
  }) {
    return topTenRated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? topTenRated,
    TResult Function()? releasedYear,
    TResult Function()? trending,
    required TResult orElse(),
  }) {
    if (topTenRated != null) {
      return topTenRated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopTenRated value) topTenRated,
    required TResult Function(ReleasedYear value) releasedYear,
    required TResult Function(Trending value) trending,
  }) {
    return topTenRated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopTenRated value)? topTenRated,
    TResult? Function(ReleasedYear value)? releasedYear,
    TResult? Function(Trending value)? trending,
  }) {
    return topTenRated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopTenRated value)? topTenRated,
    TResult Function(ReleasedYear value)? releasedYear,
    TResult Function(Trending value)? trending,
    required TResult orElse(),
  }) {
    if (topTenRated != null) {
      return topTenRated(this);
    }
    return orElse();
  }
}

abstract class TopTenRated implements HomeEvent {
  const factory TopTenRated() = _$TopTenRatedImpl;
}

/// @nodoc
abstract class _$$ReleasedYearImplCopyWith<$Res> {
  factory _$$ReleasedYearImplCopyWith(
          _$ReleasedYearImpl value, $Res Function(_$ReleasedYearImpl) then) =
      __$$ReleasedYearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReleasedYearImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ReleasedYearImpl>
    implements _$$ReleasedYearImplCopyWith<$Res> {
  __$$ReleasedYearImplCopyWithImpl(
      _$ReleasedYearImpl _value, $Res Function(_$ReleasedYearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReleasedYearImpl implements ReleasedYear {
  const _$ReleasedYearImpl();

  @override
  String toString() {
    return 'HomeEvent.releasedYear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReleasedYearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() topTenRated,
    required TResult Function() releasedYear,
    required TResult Function() trending,
  }) {
    return releasedYear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? topTenRated,
    TResult? Function()? releasedYear,
    TResult? Function()? trending,
  }) {
    return releasedYear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? topTenRated,
    TResult Function()? releasedYear,
    TResult Function()? trending,
    required TResult orElse(),
  }) {
    if (releasedYear != null) {
      return releasedYear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopTenRated value) topTenRated,
    required TResult Function(ReleasedYear value) releasedYear,
    required TResult Function(Trending value) trending,
  }) {
    return releasedYear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopTenRated value)? topTenRated,
    TResult? Function(ReleasedYear value)? releasedYear,
    TResult? Function(Trending value)? trending,
  }) {
    return releasedYear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopTenRated value)? topTenRated,
    TResult Function(ReleasedYear value)? releasedYear,
    TResult Function(Trending value)? trending,
    required TResult orElse(),
  }) {
    if (releasedYear != null) {
      return releasedYear(this);
    }
    return orElse();
  }
}

abstract class ReleasedYear implements HomeEvent {
  const factory ReleasedYear() = _$ReleasedYearImpl;
}

/// @nodoc
abstract class _$$TrendingImplCopyWith<$Res> {
  factory _$$TrendingImplCopyWith(
          _$TrendingImpl value, $Res Function(_$TrendingImpl) then) =
      __$$TrendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrendingImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$TrendingImpl>
    implements _$$TrendingImplCopyWith<$Res> {
  __$$TrendingImplCopyWithImpl(
      _$TrendingImpl _value, $Res Function(_$TrendingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TrendingImpl implements Trending {
  const _$TrendingImpl();

  @override
  String toString() {
    return 'HomeEvent.trending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TrendingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() topTenRated,
    required TResult Function() releasedYear,
    required TResult Function() trending,
  }) {
    return trending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? topTenRated,
    TResult? Function()? releasedYear,
    TResult? Function()? trending,
  }) {
    return trending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? topTenRated,
    TResult Function()? releasedYear,
    TResult Function()? trending,
    required TResult orElse(),
  }) {
    if (trending != null) {
      return trending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopTenRated value) topTenRated,
    required TResult Function(ReleasedYear value) releasedYear,
    required TResult Function(Trending value) trending,
  }) {
    return trending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopTenRated value)? topTenRated,
    TResult? Function(ReleasedYear value)? releasedYear,
    TResult? Function(Trending value)? trending,
  }) {
    return trending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopTenRated value)? topTenRated,
    TResult Function(ReleasedYear value)? releasedYear,
    TResult Function(Trending value)? trending,
    required TResult orElse(),
  }) {
    if (trending != null) {
      return trending(this);
    }
    return orElse();
  }
}

abstract class Trending implements HomeEvent {
  const factory Trending() = _$TrendingImpl;
}

/// @nodoc
mixin _$HomeState {
  List<HomeData> get topTenRated => throw _privateConstructorUsedError;
  List<HomeData> get releasedYear => throw _privateConstructorUsedError;
  List<HomeData> get trending => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<HomeData> topTenRated,
      List<HomeData> releasedYear,
      List<HomeData> trending,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topTenRated = null,
    Object? releasedYear = null,
    Object? trending = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      topTenRated: null == topTenRated
          ? _value.topTenRated
          : topTenRated // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      releasedYear: null == releasedYear
          ? _value.releasedYear
          : releasedYear // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      trending: null == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HomeData> topTenRated,
      List<HomeData> releasedYear,
      List<HomeData> trending,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topTenRated = null,
    Object? releasedYear = null,
    Object? trending = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$InitialImpl(
      topTenRated: null == topTenRated
          ? _value._topTenRated
          : topTenRated // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      releasedYear: null == releasedYear
          ? _value._releasedYear
          : releasedYear // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      trending: null == trending
          ? _value._trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<HomeData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required final List<HomeData> topTenRated,
      required final List<HomeData> releasedYear,
      required final List<HomeData> trending,
      required this.isLoading,
      required this.hasError})
      : _topTenRated = topTenRated,
        _releasedYear = releasedYear,
        _trending = trending;

  final List<HomeData> _topTenRated;
  @override
  List<HomeData> get topTenRated {
    if (_topTenRated is EqualUnmodifiableListView) return _topTenRated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topTenRated);
  }

  final List<HomeData> _releasedYear;
  @override
  List<HomeData> get releasedYear {
    if (_releasedYear is EqualUnmodifiableListView) return _releasedYear;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_releasedYear);
  }

  final List<HomeData> _trending;
  @override
  List<HomeData> get trending {
    if (_trending is EqualUnmodifiableListView) return _trending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trending);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'HomeState(topTenRated: $topTenRated, releasedYear: $releasedYear, trending: $trending, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._topTenRated, _topTenRated) &&
            const DeepCollectionEquality()
                .equals(other._releasedYear, _releasedYear) &&
            const DeepCollectionEquality().equals(other._trending, _trending) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topTenRated),
      const DeepCollectionEquality().hash(_releasedYear),
      const DeepCollectionEquality().hash(_trending),
      isLoading,
      hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final List<HomeData> topTenRated,
      required final List<HomeData> releasedYear,
      required final List<HomeData> trending,
      required final bool isLoading,
      required final bool hasError}) = _$InitialImpl;

  @override
  List<HomeData> get topTenRated;
  @override
  List<HomeData> get releasedYear;
  @override
  List<HomeData> get trending;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
