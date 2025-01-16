import 'package:auto_route/auto_route.dart';
import 'package:book_manager/presentation/routes.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DeveloperPage extends StatelessWidget {
  const DeveloperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  context.pushRoute(const AddEntryRoute());
                },
                child: const Text("add entry")),
          ],
        ),
      ),
    );
  }
}
