import 'package:fish_redux/fish_redux.dart';

class ForumState implements Cloneable<ForumState> {
  @override
  ForumState clone() {
    return ForumState();
  }
}

ForumState initState(Map<String, dynamic> args) {
  return ForumState();
}
