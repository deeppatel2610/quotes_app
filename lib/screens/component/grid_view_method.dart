import 'package:flutter/material.dart';

import '../../utils/golbal.dart';

class GridViewMethod extends StatelessWidget {
  const GridViewMethod ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // childAspectRatio :
        ),
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
