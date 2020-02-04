import 'package:unique_bbs/data/bean/report_entity.dart';

reportEntityFromJson(ReportEntity data, Map<String, dynamic> json) {
  data.id = json['id']?.toString();
  data.message = json['message']?.toString();
  data.createDate = json['createDate']?.toString();
  data.isWeek = json['isWeek'];
  return data;
}

Map<String, dynamic> reportEntityToJson(ReportEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['message'] = entity.message;
  data['createDate'] = entity.createDate;
  data['isWeek'] = entity.isWeek;
  return data;
}
