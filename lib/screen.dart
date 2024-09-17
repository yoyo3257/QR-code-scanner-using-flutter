import 'package:flutter/material.dart';
import 'scan_code_page.dart';
import 'colors.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maroon,
        title: Text(
          'QR code Scanner',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: yellow,
          ),
        ),
      ),
      backgroundColor: green,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Scan your code here:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: yellow,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            IconButton(
                icon: Icon(
                  Icons.qr_code_scanner,
                  color: maroon,
                  size: 100,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return ScanCodePage();
                    },
                  ));
                }),
          ],
        ),
      ),
    );
  }
}
