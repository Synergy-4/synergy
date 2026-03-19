import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:synergy/models/session_model.dart';
import 'package:synergy/models/session_record_request.dart';
import '../core/utility.dart';

part 'sessions_provider.g.dart';

@riverpod
Future<List<SessionResult>> sessions(Ref ref, int childId) async {
  final result = await ApiClient.instance.getList('/sessions/$childId/history');

  if (result is ApiSuccess) {
    final List<dynamic> data = result.data;
    return data.map((json) => SessionResult.fromJson(json)).toList();
  } else {
    return [];
  }
}

Future<bool> recordSession(SessionRecordRequest request) async {
  final result = await ApiClient.instance.postJson(
    '/sessions/',
    body: request.toJson(),
  );
  return result is ApiSuccess;
}
