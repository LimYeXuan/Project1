import 'package:flutter/material.dart';

const String larryImage = 'assets/image/larry.jpg';

// Palette
const Color cream = Color(0xFFF6F1E9);
const Color deepTeal = Color(0xFF1F6F6B);
const Color softTeal = Color(0xFFD6EBE8);
const Color brown = Color(0xFF6B4A3A);
const Color tan = Color(0xFFB08968);

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  void doSomething() {
    debugPrint('Larry has been notified.');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: cream,
        appBar: AppBar(
          leading: IconButton(
            onPressed: doSomething,
            icon: const Icon(Icons.menu),
          ),
          backgroundColor: deepTeal,
          foregroundColor: cream,
          title: const Text('Larry'),
        ),
        body: const Center(
          child: Column(
            children: [
              SizedBox(height: 24),
              ProfileAvatar(),
              SizedBox(height: 14),
              Text(
                'Larry',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: brown,
                ),
              ),
              SizedBox(height: 8),
              ProfileBadge(),
              SizedBox(height: 40),
              StatsRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(shape: BoxShape.circle, color: tan),
      child: ClipOval(
        child: Image.asset(
          larryImage,
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ProfileBadge extends StatelessWidget {
  const ProfileBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: brown,
        borderRadius: BorderRadius.circular(88.888),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.verified, size: 17, color: softTeal),
          SizedBox(width: 4),
          Text(
            'Just Larry',
            style: TextStyle(fontWeight: FontWeight.bold, color: cream),
          ),
        ],
      ),
    );
  }
}

class StatsRow extends StatelessWidget {
  const StatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          StatCard(icon: Icons.people, value: '1.2K', label: 'Followers'),
          StatCard(icon: Icons.person_add, value: '3', label: 'Following'),
          StatCard(icon: Icons.photo_library, value: '48', label: 'Posts'),
          StatCard(icon: Icons.favorite, value: '9.9K', label: 'Likes'),
        ],
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const StatCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: deepTeal,
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