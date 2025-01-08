import 'package:flutter/material.dart';

class ExerciseListWidget extends StatelessWidget {
  const ExerciseListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 7,
        itemBuilder: (context, index) => _ItemExercisesWidget(),
        separatorBuilder: (context, index) => SizedBox(
          height: 12,
        ),
      ),
    );
  }
}

class _ItemExercisesWidget extends StatelessWidget {
  const _ItemExercisesWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.amber,
                  child: const Icon(Icons.favorite, color: Colors.white),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Speanking Skills",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "16 Exercises",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              )
            ],
          ),
          Icon(Icons.more_horiz_outlined),
        ],
      ),
    );
  }
}
