import 'package:flutter/material.dart';

class Bubbles extends StatelessWidget {
  const Bubbles({super.key, required this.val});
  final int val;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        (val == 1)? Container(
            height: 13,
            width: 13,
            decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(100))),
          ) : Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color: Colors.orange.shade200,
              borderRadius: const BorderRadius.all(Radius.circular(100))),
        ),
        const SizedBox(
          width: 5,
        ),
        (val == 2)
            ? Container(
                height: 13,
                width: 13,
                decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
              )
            : Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    color: Colors.orange.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(100))),
              ),
        const SizedBox(
          width: 5,
        ),
        (val == 3)
            ? Container(
                height: 13,
                width: 13,
                decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
              )
            : Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    color: Colors.orange.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(100))),
              ),
      ],
    );
  }
}
