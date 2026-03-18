// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_child_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ActiveChild)
final activeChildProvider = ActiveChildProvider._();

final class ActiveChildProvider extends $NotifierProvider<ActiveChild, int?> {
  ActiveChildProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activeChildProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activeChildHash();

  @$internal
  @override
  ActiveChild create() => ActiveChild();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int?>(value),
    );
  }
}

String _$activeChildHash() => r'903d950321481b7bef9efcb040d09bd048cdd083';

abstract class _$ActiveChild extends $Notifier<int?> {
  int? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<int?, int?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int?, int?>,
              int?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
