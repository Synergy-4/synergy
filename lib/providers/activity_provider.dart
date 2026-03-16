import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/activity_models.dart';
import '../core/utility.dart';

part 'activity_provider.g.dart';

@riverpod
class ActivityState extends _$ActivityState {
  @override
  FutureOr<ActivityPayload?> build() => null;

  Future<void> fetchNextActivity(String childId) async {
    state = const AsyncLoading();

    try {
      final result = await ApiClient.instance.get(
        '/activities/next/$childId',
        withAuth: true,
      );

      switch (result) {
        case ApiSuccess(:final data):
          state = AsyncData(ActivityPayload.fromJson(data));
        case ApiFailure(:final message, :final statusCode):
          state = AsyncError(
            Exception('$message (status: $statusCode)'),
            StackTrace.current,
          );
      }
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
