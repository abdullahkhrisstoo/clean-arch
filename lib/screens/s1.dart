import 'package:flutter/material.dart';

class S1 extends StatelessWidget {
  const S1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('hello 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'sub title , World! 1',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              'sub title , World! 2',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'body text 1',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'body text 2',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
