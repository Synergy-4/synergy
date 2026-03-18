// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ActivityState)
final activityStateProvider = ActivityStateProvider._();

final class ActivityStateProvider
    extends $AsyncNotifierProvider<ActivityState, ActivityPayload?> {
  ActivityStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activityStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activityStateHash();

  @$internal
  @override
  ActivityState create() => ActivityState();
}

String _$activityStateHash() => r'41e18533531d49f17ae99c2702039824f8dd5d1e';

abstract class _$ActivityState extends $AsyncNotifier<ActivityPayload?> {
  FutureOr<ActivityPayload?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<ActivityPayload?>, ActivityPayload?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ActivityPayload?>, ActivityPayload?>,
              AsyncValue<ActivityPayload?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
