import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_dashboard/dashboard_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
        leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: CircleAvatar(
            backgroundImage: AssetImage('images/dipon.jpg'),
          ),
        ),
        title: const Text(
            'Dipon Deb',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text(
                'Rs. 50,000',
              style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
                    ),
                  ),
                ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.add_circled,
                color: Colors.green.shade600,
                ),
                const SizedBox(width: 5),
                  Text(
                      'Rs. 2,500',
                    style: TextStyle(
                      color: Colors.green.shade600,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Today',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
              ],
            ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.add_circled),
                  label: const Text('Deposit'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber.shade900,
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.file_upload_outlined),
                label: const Text('Withdraw'),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                child: GridView.count(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    DashboardItems(title: 'Orders History', image: 'history.png'),
                    DashboardItems(title: 'Payment Method', image: 'debit-card.png'),
                    DashboardItems(title: 'Tracking', image: 'tracking.png'),
                    DashboardItems(title: 'Analytics', image: 'analysis.png'),
                    DashboardItems(title: 'Settings', image: 'settings.png'),
                    DashboardItems(title: 'Profile', image: 'profile.png'),
                    DashboardItems(title: 'Contact Us', image: 'contact.png'),
                    DashboardItems(title: 'About Us', image: 'about.png'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
