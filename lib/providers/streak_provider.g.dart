// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streak_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentStreakHash() => r'356f4cfb0cddf910d842f3e69db6f7830c3bf890';

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

/// See also [currentStreak].
@ProviderFor(currentStreak)
const currentStreakProvider = CurrentStreakFamily();

/// See also [currentStreak].
class CurrentStreakFamily extends Family<int> {
  /// See also [currentStreak].
  const CurrentStreakFamily();

  /// See also [currentStreak].
  CurrentStreakProvider call(int childId) {
    return CurrentStreakProvider(childId);
  }

  @override
  CurrentStreakProvider getProviderOverride(
    covariant CurrentStreakProvider provider,
  ) {
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
  String? get name => r'currentStreakProvider';
}

/// See also [currentStreak].
class CurrentStreakProvider extends AutoDisposeProvider<int> {
  /// See also [currentStreak].
  CurrentStreakProvider(int childId)
    : this._internal(
        (ref) => currentStreak(ref as CurrentStreakRef, childId),
        from: currentStreakProvider,
        name: r'currentStreakProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$currentStreakHash,
        dependencies: CurrentStreakFamily._dependencies,
        allTransitiveDependencies:
            CurrentStreakFamily._allTransitiveDependencies,
        childId: childId,
      );

  CurrentStreakProvider._internal(
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
  Override overrideWith(int Function(CurrentStreakRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: CurrentStreakProvider._internal(
        (ref) => create(ref as CurrentStreakRef),
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
  AutoDisposeProviderElement<int> createElement() {
    return _CurrentStreakProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentStreakProvider && other.childId == childId;
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
mixin CurrentStreakRef on AutoDisposeProviderRef<int> {
  /// The parameter `childId` of this provider.
  int get childId;
}

class _CurrentStreakProviderElement extends AutoDisposeProviderElement<int>
    with CurrentStreakRef {
  _CurrentStreakProviderElement(super.provider);

  @override
  int get childId => (origin as CurrentStreakProvider).childId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
