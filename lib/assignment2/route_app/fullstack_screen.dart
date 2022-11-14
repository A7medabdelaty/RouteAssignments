import 'package:flutter/material.dart';

class FullStack extends StatelessWidget {
  const FullStack({Key? key}) : super(key: key);
  static const String routeName = 'full stack';

  final String fullStackContent =
      '  •HTML\n  •HTML 5\n  •CSS\n  •CSS3\n  •SASS\n  •Bootstrap 4\n  •JavaScript\n  •Regular expressions\n  •ECMAScript 6\n  •JQuery\n  •angular 7\n  •fabric.js\n  •AJAX\n  •JSON\n  •Hosting and domains\n  •Freelancing tips and tricks\n  •PHP\n  •MYSQL\n  •MYSQL advanced queries and triggers\n  •OOP\n  •Design Patterns\n  •MVC\n  •laravel\n  •build Api , Api authentication\n  •connect wordpress with laravel\n  •build wordpress web service\n  •agile\n  •Scrum\n  •Software development process';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RouteAppOne'),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Bg.jpg'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset('assets/images/fullStack.jpeg'),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    fullStackContent,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
