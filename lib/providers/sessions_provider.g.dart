// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessions_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sessions)
final sessionsProvider = SessionsFamily._();

final class SessionsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<SessionResult>>,
          List<SessionResult>,
          FutureOr<List<SessionResult>>
        >
    with
        $FutureModifier<List<SessionResult>>,
        $FutureProvider<List<SessionResult>> {
  SessionsProvider._({
    required SessionsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'sessionsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$sessionsHash();

  @override
  String toString() {
    return r'sessionsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<SessionResult>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<SessionResult>> create(Ref ref) {
    final argument = this.argument as int;
    return sessions(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SessionsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$sessionsHash() => r'7006a5be0ee22acb6df45cc87b148fdd415efa0e';

final class SessionsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<SessionResult>>, int> {
  SessionsFamily._()
    : super(
        retry: null,
        name: r'sessionsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SessionsProvider call(int childId) =>
      SessionsProvider._(argument: childId, from: this);

  @override
  String toString() => r'sessionsProvider';
}
