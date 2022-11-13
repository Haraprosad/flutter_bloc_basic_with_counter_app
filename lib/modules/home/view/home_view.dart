import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_basic_with_todo/modules/home/bloc/counter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print("Build method is called *************");

    return Scaffold(
      appBar: AppBar(
        title: Text("Todo"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) => Text(
                  'Counter value: ${state.counterValue}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: ElevatedButton.icon(
                            onPressed: () {
                              context
                                  .read<CounterBloc>()
                                  .add(CounterDecrementEvent());
                            },
                            icon: const Icon(Icons.remove),
                            label: const Text("Decrease"))),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ElevatedButton.icon(
                            onPressed: () {
                              context
                                  .read<CounterBloc>()
                                  .add(CounterIncrementEvent());
                            },
                            icon: const Icon(Icons.add),
                            label: const Text("Increase"))),
                  ],
                ),
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
