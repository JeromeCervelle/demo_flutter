import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Ma première application'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
        title: Text(widget.title),
      ),
      body: Center(
          child: Card(
            elevation: 8,
            margin: const EdgeInsets.all(16),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/DashDart.png"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      "Bienvenue $name",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  TextField(
                    onSubmitted: (newValue) {
                      setState(() {
                        name = newValue;
                      });
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Nom du Flutteriste"),
                        hintText: "Entrez votre nom"
                    ),
                  )
                ],
              ),
            ),
          )
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
