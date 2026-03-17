// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessions_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sessionsHash() => r'fc1f0ff9477a750b2dabb5567cc4f8f74b5bac8d';

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

/// See also [sessions].
@ProviderFor(sessions)
const sessionsProvider = SessionsFamily();

/// See also [sessions].
class SessionsFamily extends Family<AsyncValue<List<SessionResult>>> {
  /// See also [sessions].
  const SessionsFamily();

  /// See also [sessions].
  SessionsProvider call(int childId) {
    return SessionsProvider(childId);
  }

  @override
  SessionsProvider getProviderOverride(covariant SessionsProvider provider) {
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
  String? get name => r'sessionsProvider';
}

/// See also [sessions].
class SessionsProvider extends AutoDisposeFutureProvider<List<SessionResult>> {
  /// See also [sessions].
  SessionsProvider(int childId)
    : this._internal(
        (ref) => sessions(ref as SessionsRef, childId),
        from: sessionsProvider,
        name: r'sessionsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$sessionsHash,
        dependencies: SessionsFamily._dependencies,
        allTransitiveDependencies: SessionsFamily._allTransitiveDependencies,
        childId: childId,
      );

  SessionsProvider._internal(
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
    FutureOr<List<SessionResult>> Function(SessionsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SessionsProvider._internal(
        (ref) => create(ref as SessionsRef),
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
  AutoDisposeFutureProviderElement<List<SessionResult>> createElement() {
    return _SessionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SessionsProvider && other.childId == childId;
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
mixin SessionsRef on AutoDisposeFutureProviderRef<List<SessionResult>> {
  /// The parameter `childId` of this provider.
  int get childId;
}

class _SessionsProviderElement
    extends AutoDisposeFutureProviderElement<List<SessionResult>>
    with SessionsRef {
  _SessionsProviderElement(super.provider);

  @override
  int get childId => (origin as SessionsProvider).childId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
