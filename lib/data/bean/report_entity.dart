import 'package:unique_bbs/data/json/base/json_convert_content.dart';

class ReportEntity with JsonConvert<ReportEntity> {
  String id;
  String message;
  String createDate;
  bool isWeek;
}
