// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'children_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChildrenList)
final childrenListProvider = ChildrenListProvider._();

final class ChildrenListProvider
    extends $AsyncNotifierProvider<ChildrenList, List<ChildModel>> {
  ChildrenListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'childrenListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$childrenListHash();

  @$internal
  @override
  ChildrenList create() => ChildrenList();
}

String _$childrenListHash() => r'db5222598a8a0ff64515420156a231b912aa713c';

abstract class _$ChildrenList extends $AsyncNotifier<List<ChildModel>> {
  FutureOr<List<ChildModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<ChildModel>>, List<ChildModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ChildModel>>, List<ChildModel>>,
              AsyncValue<List<ChildModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
