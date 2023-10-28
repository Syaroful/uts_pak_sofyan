import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryItem(label: 'Pulsa', icon: 'assets/images/pulsa.png'),
            CategoryItem(
                label: 'Electricity', icon: 'assets/images/electricity.png'),
            CategoryItem(label: 'Games', icon: 'assets/images/games.png'),
            CategoryItem(label: 'BPJS', icon: 'assets/images/bpjs.png'),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryItem(label: 'Internet', icon: 'assets/images/internet.png'),
            CategoryItem(label: 'PDSM', icon: 'assets/images/pdam.png'),
            CategoryItem(label: 'E-Money', icon: 'assets/images/e-money.png'),
            CategoryItem(label: 'More', icon: 'assets/images/more.png'),
          ],
        ),
      ]),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.label,
    required this.icon,
  });
  final String label;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: Column(children: [
        Image.asset(
          icon,
          height: 48,
        ),
        SizedBox(height: 12),
        Text(
          label,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ]),
    );
  }
}
