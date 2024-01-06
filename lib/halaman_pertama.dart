import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navigation_routing/halaman_kedua.dart';

class HalamanPertama extends StatelessWidget {
  const HalamanPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation & Routing"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // Tanpa ROUTING
                  // Navigator.push(context, MaterialPageRoute(builder: (_) {
                  // return HalamanKedua();
                  // }));

                  // Pakai ROUTING
                  Navigator.pushNamed(context, '/halaman-kedua');
                },
                child: Text(
                  'Go to Second Screen',
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/halaman-kedua-dengan-data',
                      arguments: 'Hello from the other side!');
                },
                child: Text(
                  'Navigation with Data',
                )),
            ElevatedButton(
                onPressed: () async {
                  var scaffoldMessenger = ScaffoldMessenger.of(context);
                  var hasil =
                      await Navigator.pushNamed(context, '/mengembalikan-data');
                  var snackbar = SnackBar(
                    content: Text('$hasil'),
                  );
                  scaffoldMessenger.showSnackBar(snackbar);

                  print(hasil);
                },
                child: Text(
                  'Return Data From Another Screen',
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/halaman-pengganti');
                },
                child: Text(
                  'Replace Screen',
                )),
          ],
        ),
      ),
    );
  }
}
