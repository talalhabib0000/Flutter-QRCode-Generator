import 'package:flutter/material.dart';
import 'package:qr_code_generator/generate_qrcode.dart';
import 'package:qr_code_generator/scan_qrcode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QRCode Generator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ScanQRCode()));
                });
              },
              child: Text("Scan QRCode")),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => GenerateQRCode()));
                });
              },
              child: const Text("Generate QRCode"))
        ],
      ),
    );
  }
}
