
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FontTextWidget(),

                  SizedBox(height: 30),

                  SpacingTextWidget(),

                  SizedBox(height: 30),

                  DecorationTextWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FontTextWidget extends StatelessWidget {
  const FontTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Normal',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'Bold',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Semi Bold',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Italic',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}

class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Normal Text',
          style: TextStyle(
            fontSize: 20,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'Letter Spacing',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 5,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'Word Spacing Example',
          style: TextStyle(
            fontSize: 20,
            wordSpacing: 10,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'Line 1\nLine 2\nLine 3',
          style: TextStyle(
            fontSize: 20,
            height: 2,
          ),
        ),
      ],
    );
  }
}

class DecorationTextWidget extends StatelessWidget {
  const DecorationTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Underline',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.underline,
          ),
        ),

        SizedBox(height: 15),

        Text(
          'Line Through',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.lineThrough,
          ),
        ),

        SizedBox(height: 15),

        Text(
          'Background',
          style: TextStyle(
            fontSize: 20,
            backgroundColor: Colors.yellow,
          ),
        ),

        SizedBox(height: 15),

        Text(
          'Text Shadow',
          style: TextStyle(
            fontSize: 30,
            shadows: [
              Shadow(
                offset: Offset(3, 3),
                blurRadius: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
