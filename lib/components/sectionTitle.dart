import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.24,
              child: TextButton(
                child: Row(
                  children: const [
                    Text(
                      "Details",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 17),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.trending_flat,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
