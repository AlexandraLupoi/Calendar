import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/app_state.dart';

class HolidaysContainer extends StatelessWidget {
  const HolidaysContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<dynamic>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<dynamic>>(
      converter: (Store<AppState> store) {
        return store.state.holidays;
      },
      builder: builder
    );
  }
}
