import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yogaapp/models/breakModel.dart';
import 'package:yogaapp/models/workOutModel.dart';

class breakpage extends StatelessWidget {
  const breakpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<breakModel>(
      create: (context) => breakModel(context),
      child: Scaffold(
          body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1611228644344-245c2017de43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHJlc3R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'))),
        child: Column(
          children: [],
        ),
      )),
    );
  }
}
