import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    // theme: ThemeData(useMaterial3: true),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Custom Tab Bar'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(25.0)),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: const [
                      Tab(
                        text: 'Chat',
                      ),
                      Tab(
                        text: 'Status',
                      ),
                      Tab(
                        text: 'Calls',
                      ),
                      Tab(
                        text: 'Settings',
                      ),
                    ],
                  ),
                ),
                const Expanded(
                    child: TabBarView(children: [
                  Center(
                    child: Text('Chat Page'),
                  ),
                  Center(
                    child: Text('Status Page'),
                  ),
                  Center(
                    child: Text('Calls Page'),
                  ),
                  Center(
                    child: Text('Settings Page'),
                  ),
                ]))
              ],
            ),
          )),
    );
  }
}
