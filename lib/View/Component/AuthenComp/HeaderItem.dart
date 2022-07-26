import 'package:flutter/material.dart';

import '../../../Constant.dart';


class HeaderItem extends StatefulWidget {
  String? header;

  HeaderItem({required this.header});

  @override
  State<HeaderItem> createState() => _HeaderItemState();
}

class _HeaderItemState extends State<HeaderItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 75),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.header!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: white,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            if (isHover)
              Container(
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 2,
                width: 60,
              )
          ],
        ),
      ),
    );
  }
}