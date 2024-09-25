import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CarouselView from Flutter 3.24'),
        ),
        body: SizedBox(
          height: 200,
          child: CarouselView(
              itemExtent: 150,
              itemSnapping: true,
              elevation: 2,
              scrollDirection: Axis.horizontal,
              reverse: false,
              onTap: (int value) {
                print('item tapped $value');
              },
              children: List.generate(20, (int index) {
                return Container(
                  color: Colors.red,
                  child: Center(child: Text(index.toString())),
                );
              })),
        ));
  }
}
