import 'package:flutter/material.dart';

class BasicNetworkTypeWidget extends StatefulWidget {
  const BasicNetworkTypeWidget({Key? key}) : super(key: key);

  @override
  State<BasicNetworkTypeWidget> createState() => _BasicNetworkTypeWidgetState();
}

class _BasicNetworkTypeWidgetState extends State<BasicNetworkTypeWidget> {
  List<Map<String, dynamic>> data = [
    {
      "type": "Slow",
      "token": "0.09 BNB",
      "amount": r"$ 9.19",
    },
    {
      "type": "Moderate",
      "token": "0.012 BNB",
      "amount": r"$ 12.59",
    },
    {
      "type": "Fast",
      "token": "0.015 BNB",
      "amount": r"$ 15.89",
    }
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return ListView.separated(
      separatorBuilder: (context, i) {
        return Container(height: mq.height * 0.01);
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            height: mq.height * 0.1,
            decoration: BoxDecoration(
                gradient: selectedIndex == index
                    ? const LinearGradient(
                        colors: [
                          Color.fromRGBO(190, 40, 246, 1),
                          Color.fromRGBO(105, 20, 245, 1),
                          Color.fromRGBO(18, 34, 244, 1)
                        ],
                      )
                    : LinearGradient(
                        colors: [
                          Colors.grey[300]!,
                          Colors.grey[200]!,
                        ],
                      ),
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(2),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey[800]
                    : Colors.white,
                borderRadius: BorderRadius.circular(11),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data[index]["type"],
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        data[index]["token"],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        data[index]["amount"],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
