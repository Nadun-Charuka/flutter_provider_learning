import 'package:flutter/material.dart';
import 'package:flutter_provider_learning/home.dart';
import 'package:flutter_provider_learning/numbers_list_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumbersListProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Demo',
        theme: ThemeData(
          useMaterial3: false,
        ),
        home: Home(),
      ),
    );
  }
}
