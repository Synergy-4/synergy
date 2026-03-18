// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(progress)
final progressProvider = ProgressFamily._();

final class ProgressProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<SkillChartData>>,
          List<SkillChartData>,
          FutureOr<List<SkillChartData>>
        >
    with
        $FutureModifier<List<SkillChartData>>,
        $FutureProvider<List<SkillChartData>> {
  ProgressProvider._({
    required ProgressFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'progressProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$progressHash();

  @override
  String toString() {
    return r'progressProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<SkillChartData>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<SkillChartData>> create(Ref ref) {
    final argument = this.argument as int;
    return progress(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ProgressProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$progressHash() => r'360106662685787437cfb4d1d1c9229a6b283742';

final class ProgressFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<SkillChartData>>, int> {
  ProgressFamily._()
    : super(
        retry: null,
        name: r'progressProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProgressProvider call(int childId) =>
      ProgressProvider._(argument: childId, from: this);

  @override
  String toString() => r'progressProvider';
}
