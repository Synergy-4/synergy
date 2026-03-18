// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChildState)
final childStateProvider = ChildStateProvider._();

final class ChildStateProvider
    extends $AsyncNotifierProvider<ChildState, ChildModel?> {
  ChildStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'childStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$childStateHash();

  @$internal
  @override
  ChildState create() => ChildState();
}

String _$childStateHash() => r'0fca782200b1134e172ffb26d13ccf76a90be390';

abstract class _$ChildState extends $AsyncNotifier<ChildModel?> {
  FutureOr<ChildModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ChildModel?>, ChildModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ChildModel?>, ChildModel?>,
              AsyncValue<ChildModel?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
