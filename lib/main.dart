import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'application/app.dart';
import 'core/di/di.dart' as di;

void main()async{
  di.init();
  runApp(const ProviderScope(child: MyApp()));
}