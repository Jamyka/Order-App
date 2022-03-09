import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String fristHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textHeight = 200;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      fristHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      fristHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? Text(fristHalf)
          : Column(
              children: [
                Text(hiddenText
                    ? (fristHalf + "....")
                    : (fristHalf + secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(children: [
                    const Text(
                      "Show more",
                      style:
                          TextStyle(color: Color.fromARGB(255, 58, 187, 204)),
                    ),
                    Icon(
                      hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: const Color.fromARGB(255, 58, 187, 204),
                    ),
                  ]),
                ),
              ],
            ),
    );
  }
}
