import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final cacheLoaderFutureProvider = FutureProvider.autoDispose<void>((ref) async {
  await Future.wait([Future.delayed(Duration(seconds: 2))]);
});
