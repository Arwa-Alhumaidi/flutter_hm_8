import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget body;
    if (currentIndex == 0) {
      body = const AddTask();
    } else {
      body = const Setting();
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Add task'),
        ],
      ),
      body: body,
    );
  }
}

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffb35647),
        title: const Padding(
          padding: EdgeInsets.only(right: 220),
          child: Text(
            'Today',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 15, left: 20, bottom: 10),
                child: Text(
                  'Jun 8 . Today . Wednesday',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            indent: 0,
            endIndent: 0,
            height: 20,
          ),
          Container(
            child: Row(
              children: const [
                Icon(
                  Icons.circle_outlined,
                  color: Color.fromARGB(255, 240, 217, 187),
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Shop for groceries', style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            indent: 20,
            endIndent: 0,
            height: 20,
          ),
          Container(
            child: Row(
              children: const [
                Icon(
                  Icons.circle_outlined,
                  color: Color.fromARGB(255, 240, 217, 187),
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Pack bag'),
              ],
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(
                  left: 27,
                ),
                child: Text('Pack crayons'),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            indent: 20,
            endIndent: 0,
            height: 20,
          ),
          Container(
            child: Row(
              children: const [
                Icon(
                  Icons.circle_outlined,
                  color: Color.fromARGB(255, 240, 217, 187),
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Create project'),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            indent: 20,
            endIndent: 0,
            height: 20,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xffb35647),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 15, left: 15),
                  child: Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
                    child: Row(
                      children: [
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                              child: Icon(
                                Icons.star_border_rounded,
                                color: Colors.orange,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: Text(
                                'Todoist Pro',
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Until Jul 8 2022',
                                  style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 129, 128, 128)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 150, top: 40),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromARGB(255, 129, 128, 128),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Padding(padding: EdgeInsets.only(top: 30)),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: 300,
                    width: 400,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
                    child: Row(
                      children: [
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://as2.ftcdn.net/v2/jpg/01/01/22/93/1000_F_101229362_6K9exCAuiODxGfIy0FwDTl2aVphuWF0T.jpg',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 22),
                              child: Text(
                                'Account',
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 180, top: 25),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromARGB(255, 129, 128, 128),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
                  child: Row(
                    children: [
                      Column(
                        children: const [],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
