import 'package:flutter/material.dart';
import 'package:quotes_app/modal/list_of_quotes.dart';
import 'package:quotes_app/modal/modal_list_class.dart';
import 'package:quotes_app/utils/golbal.dart';

import 'component/grid_view_method.dart';
import 'component/list_view_method.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    // quotesView = quotesList.map((e) => Quotes.fromMap((e))).toList();
    for (var e in quotesList) {
      quotesView.add(Quotes.fromMap(e));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isGrid = !isGrid;
              });
            },
            icon: (isGrid)
                ? const Icon(
                    Icons.grid_3x3,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
          )
        ],
        backgroundColor: Colors.brown,
        title: const Text(
          'home page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: (isGrid) ? const GridViewMethod() : const ListViewMethod(),
    );
  }
}
