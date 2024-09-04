import 'package:flutter/material.dart';
import 'package:quotes_app/modal/list_of_quotes.dart';
import 'package:quotes_app/modal/modal_list_class.dart';
import 'package:quotes_app/utils/golbal.dart';

import 'component/grid_view_method.dart';
import 'component/input_box_method.dart';
import 'component/list_view_method.dart';
import 'component/reset_settings.dart';

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
            icon: (!isGrid)
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 20,
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => resetSettings(
                  isIcon: true,
                  isEmail: true,
                  isDivider: true,
                  context: context,
                  title: 'Reset Settings ?',
                  text: contentText,
                ),
              );
            },
            child: const Text(
              'Reset',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => resetSettings(
                  isDivider: false,
                  context: context,
                  isEmail: false,
                  isIcon: false,
                  text: contentText2,
                  title: 'Dialog with hero icon',
                ),
              );
            },
            child: const Text(
              'Icons',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => Material(
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.close),
                              ),
                              const Text(
                                'Full-screen dialog title',
                                style: TextStyle(fontSize: 20),
                              ),
                              const Spacer(),
                              TextButton(
                                onPressed: () {},
                                child: const Text('Save'),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          inputBoxMethod(),
                          const SizedBox(
                            height: 10,
                          ),
                          inputBoxMethod(),
                          const SizedBox(
                            height: 20,
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'From',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(child: inputBoxMethod()),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(child: inputBoxMethod()),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'To',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(child: inputBoxMethod()),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(child: inputBoxMethod()),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (value) {},
                              ),
                              Text('All day'),
                            ],
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Timezone',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ),
                          inputBoxMethod(),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            child: const Text(
              'Full-Screen',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
