import 'package:flutter/cupertino.dart';

Container boxWidget(
    Color color, Widget child, String text, String percentText) {
  return Container(
    height: 132,
    width: 116,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xff213345)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color,
          ),
          child: child,
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xffFFFFFF)),
        ),
        Text(
          percentText,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xffFFFFFF)),
        )
      ],
    ),
  );
}
