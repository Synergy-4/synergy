// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streak_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(currentStreak)
final currentStreakProvider = CurrentStreakFamily._();

final class CurrentStreakProvider extends $FunctionalProvider<int, int, int>
    with $Provider<int> {
  CurrentStreakProvider._({
    required CurrentStreakFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'currentStreakProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$currentStreakHash();

  @override
  String toString() {
    return r'currentStreakProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    final argument = this.argument as int;
    return currentStreak(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentStreakProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$currentStreakHash() => r'90c2fb9db2b03317ccb766429a2b964b5dc0cc2a';

final class CurrentStreakFamily extends $Family
    with $FunctionalFamilyOverride<int, int> {
  CurrentStreakFamily._()
    : super(
        retry: null,
        name: r'currentStreakProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CurrentStreakProvider call(int childId) =>
      CurrentStreakProvider._(argument: childId, from: this);

  @override
  String toString() => r'currentStreakProvider';
}
