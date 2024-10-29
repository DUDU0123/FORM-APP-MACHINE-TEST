// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_steps_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CampaignStepsState {
  int get currentStepIndex => throw _privateConstructorUsedError;
  bool get isForOncePerCustomer => throw _privateConstructorUsedError;
  bool get isCustomAudience => throw _privateConstructorUsedError;
  List<FormStepsModel> get formDataList => throw _privateConstructorUsedError;
  Widget get currentWidget => throw _privateConstructorUsedError;

  /// Create a copy of CampaignStepsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignStepsStateCopyWith<CampaignStepsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignStepsStateCopyWith<$Res> {
  factory $CampaignStepsStateCopyWith(
          CampaignStepsState value, $Res Function(CampaignStepsState) then) =
      _$CampaignStepsStateCopyWithImpl<$Res, CampaignStepsState>;
  @useResult
  $Res call(
      {int currentStepIndex,
      bool isForOncePerCustomer,
      bool isCustomAudience,
      List<FormStepsModel> formDataList,
      Widget currentWidget});
}

/// @nodoc
class _$CampaignStepsStateCopyWithImpl<$Res, $Val extends CampaignStepsState>
    implements $CampaignStepsStateCopyWith<$Res> {
  _$CampaignStepsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignStepsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStepIndex = null,
    Object? isForOncePerCustomer = null,
    Object? isCustomAudience = null,
    Object? formDataList = null,
    Object? currentWidget = null,
  }) {
    return _then(_value.copyWith(
      currentStepIndex: null == currentStepIndex
          ? _value.currentStepIndex
          : currentStepIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isForOncePerCustomer: null == isForOncePerCustomer
          ? _value.isForOncePerCustomer
          : isForOncePerCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      isCustomAudience: null == isCustomAudience
          ? _value.isCustomAudience
          : isCustomAudience // ignore: cast_nullable_to_non_nullable
              as bool,
      formDataList: null == formDataList
          ? _value.formDataList
          : formDataList // ignore: cast_nullable_to_non_nullable
              as List<FormStepsModel>,
      currentWidget: null == currentWidget
          ? _value.currentWidget
          : currentWidget // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignStepsStateImplCopyWith<$Res>
    implements $CampaignStepsStateCopyWith<$Res> {
  factory _$$CampaignStepsStateImplCopyWith(_$CampaignStepsStateImpl value,
          $Res Function(_$CampaignStepsStateImpl) then) =
      __$$CampaignStepsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentStepIndex,
      bool isForOncePerCustomer,
      bool isCustomAudience,
      List<FormStepsModel> formDataList,
      Widget currentWidget});
}

/// @nodoc
class __$$CampaignStepsStateImplCopyWithImpl<$Res>
    extends _$CampaignStepsStateCopyWithImpl<$Res, _$CampaignStepsStateImpl>
    implements _$$CampaignStepsStateImplCopyWith<$Res> {
  __$$CampaignStepsStateImplCopyWithImpl(_$CampaignStepsStateImpl _value,
      $Res Function(_$CampaignStepsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignStepsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStepIndex = null,
    Object? isForOncePerCustomer = null,
    Object? isCustomAudience = null,
    Object? formDataList = null,
    Object? currentWidget = null,
  }) {
    return _then(_$CampaignStepsStateImpl(
      currentStepIndex: null == currentStepIndex
          ? _value.currentStepIndex
          : currentStepIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isForOncePerCustomer: null == isForOncePerCustomer
          ? _value.isForOncePerCustomer
          : isForOncePerCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      isCustomAudience: null == isCustomAudience
          ? _value.isCustomAudience
          : isCustomAudience // ignore: cast_nullable_to_non_nullable
              as bool,
      formDataList: null == formDataList
          ? _value._formDataList
          : formDataList // ignore: cast_nullable_to_non_nullable
              as List<FormStepsModel>,
      currentWidget: null == currentWidget
          ? _value.currentWidget
          : currentWidget // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$CampaignStepsStateImpl implements _CampaignStepsState {
  const _$CampaignStepsStateImpl(
      {required this.currentStepIndex,
      required this.isForOncePerCustomer,
      required this.isCustomAudience,
      required final List<FormStepsModel> formDataList,
      required this.currentWidget})
      : _formDataList = formDataList;

  @override
  final int currentStepIndex;
  @override
  final bool isForOncePerCustomer;
  @override
  final bool isCustomAudience;
  final List<FormStepsModel> _formDataList;
  @override
  List<FormStepsModel> get formDataList {
    if (_formDataList is EqualUnmodifiableListView) return _formDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formDataList);
  }

  @override
  final Widget currentWidget;

  @override
  String toString() {
    return 'CampaignStepsState(currentStepIndex: $currentStepIndex, isForOncePerCustomer: $isForOncePerCustomer, isCustomAudience: $isCustomAudience, formDataList: $formDataList, currentWidget: $currentWidget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignStepsStateImpl &&
            (identical(other.currentStepIndex, currentStepIndex) ||
                other.currentStepIndex == currentStepIndex) &&
            (identical(other.isForOncePerCustomer, isForOncePerCustomer) ||
                other.isForOncePerCustomer == isForOncePerCustomer) &&
            (identical(other.isCustomAudience, isCustomAudience) ||
                other.isCustomAudience == isCustomAudience) &&
            const DeepCollectionEquality()
                .equals(other._formDataList, _formDataList) &&
            (identical(other.currentWidget, currentWidget) ||
                other.currentWidget == currentWidget));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentStepIndex,
      isForOncePerCustomer,
      isCustomAudience,
      const DeepCollectionEquality().hash(_formDataList),
      currentWidget);

  /// Create a copy of CampaignStepsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignStepsStateImplCopyWith<_$CampaignStepsStateImpl> get copyWith =>
      __$$CampaignStepsStateImplCopyWithImpl<_$CampaignStepsStateImpl>(
          this, _$identity);
}

abstract class _CampaignStepsState implements CampaignStepsState {
  const factory _CampaignStepsState(
      {required final int currentStepIndex,
      required final bool isForOncePerCustomer,
      required final bool isCustomAudience,
      required final List<FormStepsModel> formDataList,
      required final Widget currentWidget}) = _$CampaignStepsStateImpl;

  @override
  int get currentStepIndex;
  @override
  bool get isForOncePerCustomer;
  @override
  bool get isCustomAudience;
  @override
  List<FormStepsModel> get formDataList;
  @override
  Widget get currentWidget;

  /// Create a copy of CampaignStepsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignStepsStateImplCopyWith<_$CampaignStepsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
