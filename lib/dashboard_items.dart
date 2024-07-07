import 'package:flutter/material.dart';

class DashboardItems extends StatelessWidget {
  final String title, image;
  const DashboardItems({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(context: context, builder: (context) => AlertDialog(
          title: Text('You just clicked $title'),
          content: Image.asset('images/$image', height: 200),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Ok, thanks'),
            ),
          ],
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/$image',
              height: 60,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              title,
                style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
