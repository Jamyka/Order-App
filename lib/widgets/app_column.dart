// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.green,
              ),
              const Icon(
                Icons.star,
                color: Colors.green,
              ),
              const Icon(
                Icons.star,
                color: Colors.green,
              ),
              const Icon(
                Icons.star,
                color: Colors.green,
              ),
              const Icon(
                Icons.star,
                color: Colors.green,
              ),
              Row(
                children: [
                  const Text(
                    "4.5",
                    style: TextStyle(color: Colors.black38),
                  ),
                  Container(
                    width: 20,
                  ),
                  const Text(
                    "1287 comments",
                    style: TextStyle(color: Colors.black38),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.circle,
                    color: Colors.orangeAccent,
                  ),
                  Text(
                    "Normal",
                    style: TextStyle(color: Colors.black38),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.blue,
                  ),
                  Text("1.7 Km", style: TextStyle(color: Colors.black38))
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.timer, color: Colors.red),
                  Text("23 min", style: TextStyle(color: Colors.black38))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
