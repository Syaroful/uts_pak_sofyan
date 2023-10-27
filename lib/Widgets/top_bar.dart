import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.fromLTRB(24, 48, 24, 0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/icon_linkaja.png',
                height: 40,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            child: Image.asset(
              'assets/images/icon_voucher.png',
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            child: Image.asset(
              'assets/images/icon_fav.png',
            ),
          ),
        ],
      ),
    );
  }
}
