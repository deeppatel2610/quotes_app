import 'package:flutter/material.dart';

import '../../utils/golbal.dart';

class ListViewMethod extends StatelessWidget {
  const ListViewMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: quotesView.length,
        itemBuilder: (context, index) => Card(
          elevation: 7,
          color: Colors.green.shade50,
          child: ListTile(
            title: Text(quotesView[index].quote),
            subtitle: Text(quotesView[index].author),
          ),
        ),
      ),
    );
  }
}
