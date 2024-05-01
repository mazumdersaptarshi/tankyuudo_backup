// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget loadingErrorWidget({Widget? textWidget}) {
  return Center(
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        textWidget ??
            const Expanded(
              child: Text(
                "Error",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
        const Expanded(
          child: SizedBox(
            width: 100,
            height: 100,
            //child: Lottie.asset('assets/images/loading_animation.json'),
          ),
        ),
      ],
    ),
  );
}

Widget loadingWidget({Widget? textWidget}) {
  return Center(
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        textWidget ??
            const Text(
              "Loading",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
        Lottie.asset(
          'assets/images/loading_animation.json',
          width: 100,
          height: 100,
        ),
      ],
    ),
  );
}
