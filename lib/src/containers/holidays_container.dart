import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/index.dart';

class HolidaysContainer extends StatelessWidget {
  const HolidaysContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Holiday>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Holiday>>(
        converter: (Store<AppState> store) {
          return store.state.holidays;
        },
        builder: builder);
  }
}
