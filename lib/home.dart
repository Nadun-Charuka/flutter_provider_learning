import 'package:flutter/material.dart';
import 'package:flutter_provider_learning/numbers_list_provider.dart';
import 'package:flutter_provider_learning/second.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<NumbersListProvider>(
        builder: (context, numbersProviderModel, child) => Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                numbersProviderModel.add();
              },
              child: Icon(Icons.add),
            ),
            appBar: AppBar(),
            body: SizedBox(
              child: Column(
                children: [
                  Text(
                    numbersProviderModel.numbers.last.toString(),
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: numbersProviderModel.numbers.length,
                      itemBuilder: (context, index) {
                        return Text(
                          numbersProviderModel.numbers[index].toString(),
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        );
                      },
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Second()));
                      },
                      child: Text("Second"))
                ],
              ),
            )),
      ),
    );
  }
}
