import 'package:flutter/material.dart';

import 'counter_container.dart';


class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterContainer state = CounterContainer.of(context);
    return Column(
      children: [
        Text(
          '${state.model.count}',
          style: Theme.of(context).textTheme.headline5,
        ),
        FloatingActionButton(
          onPressed: state.increment,
          child: Icon(Icons.add),
        )
      ],
    );
  }
}
