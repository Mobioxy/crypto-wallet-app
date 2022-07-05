import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

class CommonDropDownWidget extends StatelessWidget {
  final String title;
  final String hintText;
  final List<String> data;
  final String? selectedValue;
  final Function(String? value) onChanged;
  const CommonDropDownWidget({
    Key? key,
    required this.data,
    required this.hintText,
    required this.title,
    required this.onChanged,
    required this.selectedValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          height: mq.height * 0.054,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(48),
          ),
          child: DropdownButton(
            underline: Container(),
            value: selectedValue,
            isExpanded: true,
            hint: Text(hintText),
            icon: const Icon(Icons.keyboard_arrow_down).toGradient(),
            items: data
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e,
                      ),
                    ))
                .toList(),
            onChanged: onChanged,
          ),
        ).toGradientBorder(50),
      ],
    );
  }
}
