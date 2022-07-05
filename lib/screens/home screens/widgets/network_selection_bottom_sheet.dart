import 'package:flutter/material.dart';

import '../../../common_widgets/gradient_button_with_border.dart';

networkBottomSheet(
  BuildContext context,
  Size mq,
) {
  showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            26,
          ),
          topRight: Radius.circular(
            26,
          ),
        ),
      ),
      builder: (context) {
        return const NetworkSelectionBottomSheetWidget();
      });
}

class NetworkSelectionBottomSheetWidget extends StatelessWidget {
  const NetworkSelectionBottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Networks",
            style: TextStyle(
              fontSize: 18,
              color: Colors.purple,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          networkWidget(
            "Ethereum Main Network",
            Colors.green,
            true,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Other Networks",
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          networkWidget(
            "Ropstan Test Network",
            Colors.red,
            false,
          ),
          networkWidget(
            "Kovan Test Network",
            Colors.purple,
            false,
          ),
          networkWidget(
            "Rinkeby Test Network",
            Colors.orange,
            false,
          ),
          networkWidget(
            "Goreli Test Network",
            Colors.blue,
            false,
          ),
          GradientButtonWithBorder(
            title: "Close",
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget networkWidget(String title, Color color, bool value) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 6,
          backgroundColor: color,
        ),
      ),
      title: Text(title),
      trailing: Radio(
        value: value,
        groupValue: true,
        onChanged: (v) {},
      ),
    );
  }
}
