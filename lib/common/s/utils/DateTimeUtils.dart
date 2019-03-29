import 'package:flutter/material.dart';

class DateTimeUtils {
  static String getTimeDuration(String comTime) {
    var nowTime = DateTime.now();
    var compareTime = DateTime.parse(comTime);
    if (nowTime.isAfter(compareTime)) {
      if (nowTime.year == compareTime.year) {
        if (nowTime.month == compareTime.month) {
          if (nowTime.day == compareTime.day) {
            if (nowTime.hour == compareTime.hour) {
              if (nowTime.minute == compareTime.minute) {
                return '片刻之间';
              }
              return (nowTime.minute - compareTime.minute).toString() + '分钟前';
            }
            return (nowTime.minute - compareTime.minute).toString() + '小时前';
          }
          return (nowTime.minute - compareTime.minute).toString() + '天前';
        }
        return (nowTime.minute - compareTime.minute).toString() + '月前';
      }
      return (nowTime.minute - compareTime.minute).toString() + '年前';
    }
    return 'time error';
  }

  static String getTimeDate(String comTime) {
    var compareTime = DateTime.parse(comTime);
    String weekDay = '';
    switch (compareTime.weekday) {
      case 2:
        weekDay = '周二';
        break;
      case 3:
        weekDay = '周三';
        break;
      case 4:
        weekDay = '周四';
        break;
      case 5:
        weekDay = '周五';
        break;
      case 6:
        weekDay = '周六';
        break;
      case 7:
        weekDay = '周七';
        break;
      default:
        weekDay = '周一';
        break;
    }
    return '${compareTime.month}-${compareTime.day} $weekDay';
  }
}
