import 'package:flutter/material.dart';

import '../widgets_home.dart';

class ExerciseContentHomeWidget extends StatelessWidget {
  const ExerciseContentHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32), topRight: Radius.circular(32)),
      child: Container(
        width: double.infinity,
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 15, 16, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Excercises",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  IconButton(
                    icon: Icon(Icons.more_horiz_outlined),
                    onPressed: () {},
                  )
                ],
              ),
              // SizedBox(
              //   height: 16,
              // ),
              ExerciseListWidget()
            ],
          ),
        ),
      ),
    ));
  }
}
