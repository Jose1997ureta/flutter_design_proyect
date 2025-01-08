import 'package:flutter/material.dart';

import 'widget/widgets_home.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hello, Jose!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("07 Jan, 2024",
                                style: TextStyle(color: Colors.blue[200])),
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12)),
                            child: const Icon(Icons.notifications,
                                color: Colors.white)),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      // height: 40,
                      child: TextField(
                        // expands: true,
                        // maxLines: null,
                        // minLines: null,

                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 12),
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon:
                                Icon(Icons.search, color: Colors.blue[200]),
                            filled: true,
                            fillColor: Colors.blue[600],
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SectionFeelWidget(),
                  ],
                )),
            SizedBox(
              height: 25,
            ),
            ExerciseContentHomeWidget(),
          ],
        ),
      ),
    );
  }
}
