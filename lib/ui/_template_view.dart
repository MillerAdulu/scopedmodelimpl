import 'package:flutter/material.dart';
import 'package:scopedmodelprac/scoped_models/home_model.dart';
import 'package:scopedmodelprac/ui/base_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      builder: (context, child, model) => Scaffold(
        body: Center(
          child: Text(this.runtimeType.toString()),
        ),
      ),
    );
  }
}
