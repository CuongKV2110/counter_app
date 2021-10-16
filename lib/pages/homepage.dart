import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc/bloc/counter_bloc.dart';
import 'package:test_bloc/events/counter_events.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Example"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  counterBloc.add(CounterEvent.remove);
                },
                icon: Icon(Icons.remove)),
            BlocBuilder<CounterBloc, int>(
              builder: (context, state) {
                return Text("$state");
              },
            ),
            IconButton(
                onPressed: () {
                  counterBloc.add(CounterEvent.add);
                },
                icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
