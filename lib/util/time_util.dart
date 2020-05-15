import 'package:timeago/timeago.dart';

class TimeUtil {
  static setLocalMessages() {
    setLocaleMessages('ko', KoMessages());
    setLocaleMessages('de', DeMessages());
    setLocaleMessages('fr', FrMessages());
    setLocaleMessages('ja', JaMessages());
    setLocaleMessages('id', IdMessages());
    setLocaleMessages('zh', ZhMessages());
    setLocaleMessages('it', ItMessages());
    setLocaleMessages('fa', FaMessages());
    setLocaleMessages('ru', RuMessages());
    setLocaleMessages('tr', TrMessages());
    setLocaleMessages('pl', PlMessages());
  }

  static String timeAgo({int milliseconds}) {
    final date = DateTime.fromMillisecondsSinceEpoch(milliseconds);
    return format(date,
        locale: 'ko', // for test.
        allowFromNow: true);
  }
}

class KoMessages implements LookupMessages {
  String prefixAgo() => '';
  String prefixFromNow() => '';
  String suffixAgo() => '��';
  String suffixFromNow() => '��';
  String lessThanOneMinute(int seconds) => '���';
  String aboutAMinute(int minutes) => '���';
  String minutes(int minutes) => '$minutes��';
  String aboutAnHour(int minutes) => '1�ð�';
  String hours(int hours) => '$hours�ð�';
  String aDay(int hours) => '1��';
  String days(int days) => '$days��';
  String aboutAMonth(int days) => '�Ѵ�';
  String months(int months) => '$months����';
  String aboutAYear(int year) => '1��';
  String years(int years) => '$years��';
  String wordSeparator() => ' ';
}