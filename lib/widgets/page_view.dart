import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  const PageViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.2,
      child: PageView(
        controller: PageController(viewportFraction: 0.95),
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SinglePage(
              size: size,
              text:
                  'This is only an example how this part could look like ',
              title: 'Title 1',
            ),
          ),
          SinglePage(
            size: size,
            text:
                'This is only an example how this part could look like. This time a little bit longer...',
            title: 'Title 2',
          )
        ],
      ),
    );
  }
}



class SinglePage extends StatelessWidget {
  final Size size;
  final String title;
  final String text;

  const SinglePage(
      {Key? key, required this.size, required this.title, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      width: size.width * 0.85,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

