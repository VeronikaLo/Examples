import 'package:examples/widgets/custom_button.dart';
import 'package:examples/widgets/page_view.dart';
import 'package:examples/widgets/profile.dart';
import 'package:examples/widgets/rect_image.dart';
import 'package:flutter/material.dart';
import 'app_theme.dart';

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
      theme: AppTheme.darkTheme,
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          physics: const  BouncingScrollPhysics(),
          child: Column(
            children:  [
              const ProfilePicture(),
              const SizedBox(height: 35,),
              const PageViewExample(),
              const SizedBox(height: 35,),
              const RectImage(),
              const SizedBox(height: 35,),
              CustomButton(
                onPressed: (){},
                text: 'CUS.BUTTON', 
                buttonColor: Theme.of(context).colorScheme.secondary,
                )
                
            ]),
        ),
        ),

    );
  }
}


