import 'package:flutter/material.dart';
import 'package:random_color_scheme/random_color_scheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Random Color Scheme',
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("THEME MARKET")),
      // body: Container(
      //   child: Theme(
      //       data: ThemeData(colorScheme: randomColorScheme(seed: 100)),
      //       child: ThemeItem1()),
      // ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        children: [
          for (int i = 0; i < 500; i++)
            Theme(
                data: ThemeData(
                    colorScheme: randomColorScheme(seed: i, isDark: true)),
                child: ThemeItem1(i)),
        ],
      ),
    );
  }
}

class ThemeItem1 extends StatelessWidget {
  final int seed;
  const ThemeItem1(
    this.seed, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Theme.of(context).colorScheme.primary,

      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://mindvision.sgp1.digitaloceanspaces.com/68747470733a2f2f7765622e77686174736170702e636f6d2f696d672f62672d636861742d74696c652d6461726b5f61346265353132653731393562366237333364393131306234303866303735642e706e67%20(1).png"),
              fit: BoxFit.cover),
        ),
        height: MediaQuery.of(context).size.height / 4,
        width: 200,
        child: Center(
          child: Card(
            elevation: 2,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: 600,
                  width: 300,
                  color: Theme.of(context).colorScheme.background,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "USER NAME",
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.onBackground),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "this is about me",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface),
                        ),
                      ),
                      for (int i = 0; i < 3; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Theme.of(context).colorScheme.surface,
                            height: 40,
                            width: 250,
                            child: Center(
                              child: Text(
                                "dfsd",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface),
                              ),
                            ),
                          ),
                        ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.favorite_border_outlined,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(.70),
                            ),
                            Icon(
                              Icons.display_settings_outlined,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(.70),
                            ),
                            Icon(
                              Icons.access_alarm_outlined,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(.70),
                            ),
                            Icon(
                              Icons.ac_unit_outlined,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(.70),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "COMPANY NAME",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: () {}, child: Text('apply')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
