import 'package:unique_bbs/data/bean/attach_entity.dart';

attachEntityFromJson(AttachEntity data, Map<String, dynamic> json) {
  data.originalName = json['originalName']?.toString();
  data.filesize = json['filesize']?.toInt();
  data.createDate = json['createDate']?.toString();
  data.fileName = json['fileName']?.toString();
  data.id = json['id']?.toString();
  data.downloads = json['downloads']?.toInt();
  return data;
}

Map<String, dynamic> attachEntityToJson(AttachEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['originalName'] = entity.originalName;
  data['filesize'] = entity.filesize;
  data['createDate'] = entity.createDate;
  data['fileName'] = entity.fileName;
  data['id'] = entity.id;
  data['downloads'] = entity.downloads;
  return data;
}
