import 'package:flutter/material.dart';

import 'package:scopedmodelprac/enums/view_states.dart';
import 'package:scopedmodelprac/scoped_models/home_model.dart';
import 'package:scopedmodelprac/ui/base_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      builder: (context, child, model) => Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _getBodyUI(model.state),
              Text(model.title),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            model.saveData();
          },
        ),
      ),
    );
  }

  Widget _getBodyUI(ViewState state) {
    switch (state) {
      case ViewState.Busy:
        return CircularProgressIndicator();
        break;
      case ViewState.Retrieved:
      default:
        return Text('Done');
    }
  }
}
