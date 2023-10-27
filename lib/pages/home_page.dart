import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        height: 50,
        margin: EdgeInsets.all(24),
        child: Row(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'assets//images/icon_voucher.png',
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'assets//images/icon_fav.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
