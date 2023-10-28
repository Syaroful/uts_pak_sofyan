import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(24, 48, 24, 16),
          child: Text(
            'Transaction History',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          child: TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: 'Pending',
              ),
              Tab(
                text: 'Completed',
              )
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Expanded(
          child: TabBarView(
            children: [
              Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/empty.png',
                        height: 200,
                      ),
                      Text(
                        'all transactions is completed',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text('Any Pending Transactions will appear here',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                    ],
                  ),
                ),
              ),
              Center(child: Text('Belum Tawu Wir'))
            ],
            controller: _tabController,
          ),
        )
      ],
    );
  }
}
