import 'package:flutter/material.dart';
import 'package:uniqlo_homework/Model/uniqlo.dart';


void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shirt STORE',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 21, 21),
          foregroundColor: Colors.white
        ),
      ),
      home: const MyHomePage(title: 'Shirt STORE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return buildRecipeCard(Shirt.samples[index]);
            },
            itemCount: Shirt.samples.length,
          ),
        ),
      );
  }
}

Widget buildRecipeCard(Shirt recipe) {
  return Card(
    child: Column(
      children: <Widget>[
        Image(image: AssetImage(recipe.imgurl)),
        Text(recipe.imglabel),
      ],
    ),
  );
}
