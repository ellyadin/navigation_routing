import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HalamanPengganti extends StatelessWidget {
  const HalamanPengganti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/halaman-lainnya');
          },
          child: Text('Open Another Screen'),
        ),
      ),
    );
  }
}
