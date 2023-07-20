
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_with_fetch_api/application/state/mydata_state.dart';
import 'package:riverpod_with_fetch_api/domain/model/mydata_model.dart';

import '../di/di.dart' as di;

final myDataProvider = StateNotifierProvider<MyDataState,MyData?>((ref) => MyDataState(di.di())..getData());