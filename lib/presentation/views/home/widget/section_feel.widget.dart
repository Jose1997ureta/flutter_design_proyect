import 'package:flutter/material.dart';

class SectionFeelWidget extends StatelessWidget {
  const SectionFeelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'How do you feel?',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Icon(Icons.more_horiz_outlined, color: Colors.white),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _ItemFeelWidget(
              text: "😀",
              title: "Fine",
            ),
            _ItemFeelWidget(
              text: "🙁",
              title: "Bad",
            ),
            _ItemFeelWidget(
              text: "😄",
              title: "Well",
            ),
            _ItemFeelWidget(
              text: "😎",
              title: "Excellent",
            ),
          ],
        ),
      ],
    );
  }
}

class _ItemFeelWidget extends StatelessWidget {
  final String text;
  final String title;

  const _ItemFeelWidget({required this.text, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
          child: Text(text,
              style: const TextStyle(color: Colors.white, fontSize: 28)),
        ),
        SizedBox(height: 8),
        Text(title, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
