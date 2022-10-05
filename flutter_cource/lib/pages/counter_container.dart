import 'package:flutter/cupertino.dart';

import 'counter_deno_page.dart';

class CounterContainer extends InheritedWidget {
  final CounterDemoPageState model;
  final Function() increment;
  CounterContainer(
      {Key? key,
      required this.model,
      required this.increment,
      required Widget child})
      : super(key: key, child: child);

  static CounterContainer of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<CounterContainer>()
          as CounterContainer;

  @override
  bool updateShouldNotify(CounterContainer oldWidget) {
    return model != oldWidget.model;
  }
}
