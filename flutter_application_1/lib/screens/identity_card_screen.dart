import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

class IdentityCardScreen extends StatelessWidget {
  const IdentityCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDE7F6),
      body: Center(
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 340,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [Color(0xFF6C63FF), Color(0xFF8E7FFF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage('/images/Ajinkya.jpg'),
                ),
                const SizedBox(height: 16),
                Text(
                  'Ajinkya Thakur',
                  style: GoogleFonts.sacramento(
                    fontSize: 36,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'ID: 2401199',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
                const SizedBox(height: 20),
                Text(
                  'Address: Ganadhish Sankul B wing,\nFlat no 605, Hingne Khurd, Pune',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 24),
                Divider(color: Colors.white54, thickness: 1.2),
                const SizedBox(height: 10),
                QrImageView(
                  data: 'https://github.com/ajinkyathakur06',
                  version: QrVersions.auto,
                  size: 100.0,
                  backgroundColor: Colors.white,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/stateless');
                  },
                  child: const Text('Open Stateless Widget Example'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/stateful');
                  },
                  child: const Text('Open Stateful Widget Example'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/form');
                  },
                  child: const Text('Open Form Widget Example'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
