import 'package:flutter/material.dart';
import 'package:lab_1/palette.dart';

class Block extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color color;

  const Block({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    this.color = deepTeal,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 30, color: softTeal),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: cream,
              ),
            ),
            const SizedBox(height: 4),
            Text(label, style: const TextStyle(fontSize: 12, color: cream)),
          ],
        ),
      ),
    );
  }
}