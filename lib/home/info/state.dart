import 'package:fish_redux/fish_redux.dart';
import 'package:unique_bbs/data/bean/message_entity.dart';

class InfoState implements Cloneable<InfoState> {
  MessageEntity messageEntity;

  @override
  InfoState clone() {
    return InfoState()..messageEntity;
  }
}

InfoState initState(Map<String, dynamic> args) {
  return InfoState();
}
