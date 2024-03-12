import 'package:app/features/shop/screens/coomunity/education/expanded_widget.dart';
import 'package:app/features/shop/screens/notifications/notification_expadable_widget.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const NotificationExpandedTextWidget(
                text:
                    'This is a notificationThis is a notificationThis is a notificationThis is a notificationThis is a notificationThis is a notificationThis is a notificationThis is a notification',
                textLength: 100),
          ],
        ),
      ),
    );
  }
}
