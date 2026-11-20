import 'package:flutter/material.dart';
import 'package:lab_1/block.dart';
import 'package:lab_1/palette.dart';

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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Block(icon: Icons.people, value: '1.2K', label: 'Followers'),
                    Block(icon: Icons.person_add, value: '3', label: 'Following'),
                    Block(icon: Icons.photo_library, value: '48', label: 'Posts'),
                    Block(
                      icon: Icons.favorite,
                      value: '9.9K',
                      label: 'Likes',
                      color: brown,
                    ),
                  ],
                ),
              ),
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