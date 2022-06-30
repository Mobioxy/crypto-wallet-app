import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

Widget transactionHistoryWidget({
  required Size mq,
  required String date,
  required IconData icon,
  required String title,
  required String status,
  required String value,
  required String amount,
  required Color statusColor,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 10,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            date,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Container(
              height: mq.height * 0.07,
              width: mq.width * 0.14,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              alignment: Alignment.center,
              child: Icon(
                icon,
                size: 24,
              ).toGradient(),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        value,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        status,
                        style: TextStyle(
                          color: statusColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        amount,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
