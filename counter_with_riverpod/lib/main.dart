import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

final riverPod = StateProvider<int>((ref) {
  return 0;
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
          Scaffold(
            appBar: AppBar(
              title: Text('Counter App with RiverPod'),
            ),
            body:Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("You have pressed the button the following times: "),
                    Text(
                      ref.watch(riverPod).toString(),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        ref.read(riverPod.notifier).state++;
                      },
                      icon: const Icon(Icons.add), // Plus icon
                      label: const Text('Add'), // Text label
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        ref.read(riverPod.notifier).state--;
                      },
                      icon: const Icon(Icons.minimize_outlined), // Plus icon
                      label: const Text('Subtract'), // Text label
                    ),
                  ],
                )),
          )

    );
  }
}