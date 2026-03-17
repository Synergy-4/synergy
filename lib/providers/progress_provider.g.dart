// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$progressHash() => r'9421ecabeabbdf3893cacfa6b8730abcdac712cc';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [progress].
@ProviderFor(progress)
const progressProvider = ProgressFamily();

/// See also [progress].
class ProgressFamily extends Family<AsyncValue<List<SkillChartData>>> {
  /// See also [progress].
  const ProgressFamily();

  /// See also [progress].
  ProgressProvider call(int childId) {
    return ProgressProvider(childId);
  }

  @override
  ProgressProvider getProviderOverride(covariant ProgressProvider provider) {
    return call(provider.childId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'progressProvider';
}

/// See also [progress].
class ProgressProvider extends AutoDisposeFutureProvider<List<SkillChartData>> {
  /// See also [progress].
  ProgressProvider(int childId)
    : this._internal(
        (ref) => progress(ref as ProgressRef, childId),
        from: progressProvider,
        name: r'progressProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$progressHash,
        dependencies: ProgressFamily._dependencies,
        allTransitiveDependencies: ProgressFamily._allTransitiveDependencies,
        childId: childId,
      );

  ProgressProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.childId,
  }) : super.internal();

  final int childId;

  @override
  Override overrideWith(
    FutureOr<List<SkillChartData>> Function(ProgressRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProgressProvider._internal(
        (ref) => create(ref as ProgressRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        childId: childId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<SkillChartData>> createElement() {
    return _ProgressProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProgressProvider && other.childId == childId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, childId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProgressRef on AutoDisposeFutureProviderRef<List<SkillChartData>> {
  /// The parameter `childId` of this provider.
  int get childId;
}

class _ProgressProviderElement
    extends AutoDisposeFutureProviderElement<List<SkillChartData>>
    with ProgressRef {
  _ProgressProviderElement(super.provider);

  @override
  int get childId => (origin as ProgressProvider).childId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
