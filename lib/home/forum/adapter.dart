import 'package:fish_redux/fish_redux.dart';
import 'package:unique_bbs/home/forum/item/component.dart';
import 'package:unique_bbs/home/forum/reducer.dart';
import 'package:unique_bbs/home/forum/state.dart';

class ForumAdapter extends SourceFlowAdapter<ForumState> {
  ForumAdapter()
      : super(
          pool: <String, Component<Object>>{
            'item': ItemComponent(),
          },
          reducer: buildReducer(),
        );
}
