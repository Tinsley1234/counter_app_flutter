import 'package:counter_app/Provider/counter_model.dart';
// import 'package:provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mypod = ChangeNotifierProvider<CounterModel>((ref) {
  return CounterModel(countValue: 0);
});