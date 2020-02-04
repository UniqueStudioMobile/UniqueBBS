import 'package:unique_bbs/data/json/base/json_convert_content.dart';

class AttachEntity with JsonConvert<AttachEntity> {
  String originalName;
  int filesize;
  String createDate;
  String fileName;
  String id;
  int downloads;
}
