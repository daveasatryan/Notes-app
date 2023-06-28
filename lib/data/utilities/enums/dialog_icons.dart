

import 'package:flutter/material.dart';

enum DialogIcons {
  done,
  error,
  question;

  Icon get svgIcon {
    switch (this) {
      case DialogIcons.done:
        return const Icon(Icons.done);
      case DialogIcons.error:
        return const Icon(Icons.error);
      case DialogIcons.question:
       return const Icon(Icons.question_mark);

    }
  }
}