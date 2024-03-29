import 'package:flutter/material.dart';
import 'package:gallery_app_new/widgets/my_app_bar_widget.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(title: "Rich text view"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "Creates a text widget. If the [style] argument is null, the text will use the style from the closest enclosing DefaultTextStyle",
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 32, color: Colors.pink),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "First ",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
              children: [
                const WidgetSpan(
                  child: Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: Colors.red,
                  ),
                ),
                TextSpan(
                  text: " second ",
                  style: const TextStyle(
                      fontSize: 28,
                      color: Colors.black45,
                      fontWeight: FontWeight.normal),
                  children: [
                    WidgetSpan(
                        child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.orange,
                    )),
                    const TextSpan(text: " third")
                  ],
                ),
              ],
            ),
          ),
          RichText(
            text: const TextSpan(
              text: "One ",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
              children: [
                TextSpan(
                    text: "Two ",
                    style: TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.underline)),
                TextSpan(text: "Three "),
                TextSpan(text: "Four "),
                TextSpan(
                    text: "Five ",
                    style: TextStyle(fontSize: 22, color: Colors.red)),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 30, backgroundColor: Colors.pink[100]),
              children: [
                const TextSpan(text: "G", style: TextStyle(color: Colors.blue)),
                TextSpan(
                    text: "o",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        backgroundColor: Colors.pink[50],
                        fontFamily: "Rubik",
                        height: 1.5)),
                const TextSpan(
                    text: "o",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                        fontFamily: "Rubik",
                        height: 1.5)),
                const TextSpan(text: "g", style: TextStyle(color: Colors.blue)),
                TextSpan(
                    text: "l",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        backgroundColor: Colors.pink[50],
                        fontFamily: "Rubik",
                        height: 1.5)),
                const TextSpan(text: "e", style: TextStyle(color: Colors.red)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
