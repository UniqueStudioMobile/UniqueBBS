import 'package:fish_redux/fish_redux.dart';
import 'package:unique_bbs/home/forum/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ForumComponent extends Component<ForumState> {
  ForumComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ForumState>(
              adapter: NoneConn<ForumState>() + ForumAdapter(),
              slots: <String, Dependent<ForumState>>{}),
        );
}
