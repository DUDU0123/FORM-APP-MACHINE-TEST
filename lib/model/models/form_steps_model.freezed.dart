// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_steps_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormStepsModel {
  String get title => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  FormStatus get status => throw _privateConstructorUsedError;
  Widget get formWidget => throw _privateConstructorUsedError;

  /// Create a copy of FormStepsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormStepsModelCopyWith<FormStepsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormStepsModelCopyWith<$Res> {
  factory $FormStepsModelCopyWith(
          FormStepsModel value, $Res Function(FormStepsModel) then) =
      _$FormStepsModelCopyWithImpl<$Res, FormStepsModel>;
  @useResult
  $Res call({String title, String label, FormStatus status, Widget formWidget});
}

/// @nodoc
class _$FormStepsModelCopyWithImpl<$Res, $Val extends FormStepsModel>
    implements $FormStepsModelCopyWith<$Res> {
  _$FormStepsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormStepsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? label = null,
    Object? status = null,
    Object? formWidget = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      formWidget: null == formWidget
          ? _value.formWidget
          : formWidget // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormStepsModelImplCopyWith<$Res>
    implements $FormStepsModelCopyWith<$Res> {
  factory _$$FormStepsModelImplCopyWith(_$FormStepsModelImpl value,
          $Res Function(_$FormStepsModelImpl) then) =
      __$$FormStepsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String label, FormStatus status, Widget formWidget});
}

/// @nodoc
class __$$FormStepsModelImplCopyWithImpl<$Res>
    extends _$FormStepsModelCopyWithImpl<$Res, _$FormStepsModelImpl>
    implements _$$FormStepsModelImplCopyWith<$Res> {
  __$$FormStepsModelImplCopyWithImpl(
      _$FormStepsModelImpl _value, $Res Function(_$FormStepsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormStepsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? label = null,
    Object? status = null,
    Object? formWidget = null,
  }) {
    return _then(_$FormStepsModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      formWidget: null == formWidget
          ? _value.formWidget
          : formWidget // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$FormStepsModelImpl implements _FormStepsModel {
  const _$FormStepsModelImpl(
      {required this.title,
      required this.label,
      required this.status,
      required this.formWidget});

  @override
  final String title;
  @override
  final String label;
  @override
  final FormStatus status;
  @override
  final Widget formWidget;

  @override
  String toString() {
    return 'FormStepsModel(title: $title, label: $label, status: $status, formWidget: $formWidget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormStepsModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.formWidget, formWidget) ||
                other.formWidget == formWidget));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, label, status, formWidget);

  /// Create a copy of FormStepsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormStepsModelImplCopyWith<_$FormStepsModelImpl> get copyWith =>
      __$$FormStepsModelImplCopyWithImpl<_$FormStepsModelImpl>(
          this, _$identity);
}

abstract class _FormStepsModel implements FormStepsModel {
  const factory _FormStepsModel(
      {required final String title,
      required final String label,
      required final FormStatus status,
      required final Widget formWidget}) = _$FormStepsModelImpl;

  @override
  String get title;
  @override
  String get label;
  @override
  FormStatus get status;
  @override
  Widget get formWidget;

  /// Create a copy of FormStepsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormStepsModelImplCopyWith<_$FormStepsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
