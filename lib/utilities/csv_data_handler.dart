// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class CSVDataHandler {
  static String mapsToReadableStringConverter(List<dynamic> listOfMaps,
      [int depth = 0]) {
    var humanReadableText = '';
    var indentation = '\t' * depth;
    for (var map in listOfMaps) {
      humanReadableText += "\n";
      map.forEach((key, value) {
        if (value is Timestamp) {
          // Convert Timestamp to DateTime and then to string
          DateTime date = value.toDate();
          humanReadableText += "$indentation$key: ${date.toLocal()}\n";
        } else if (value is List) {
          String nestedHumanReadableText =
              mapsToReadableStringConverter(value, depth + 1);
          humanReadableText += "$indentation$key: $nestedHumanReadableText\n";
        } else {
          humanReadableText += "$indentation$key: $value\n";
        }
      });
    }
    return humanReadableText;
  }

  static String timestampToReadableDate(Timestamp timestamp) {
    DateTime dateTime = timestamp.toDate();

    String formattedDate = DateFormat('yyyy-MM-dd – kk:mm:ss').format(dateTime);
    return formattedDate;
  }

  static String timestampToReadableDateInWords(Timestamp timestamp) {
    DateTime dateTime = timestamp.toDate();
    String formattedDate = DateFormat('d MMM, yyyy').format(dateTime);
    return formattedDate;
  }
}
