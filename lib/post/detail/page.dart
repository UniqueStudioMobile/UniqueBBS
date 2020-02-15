import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class PostDetailPage extends Page<PostDetailState, Map<String, dynamic>> {
  PostDetailPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<PostDetailState>(
                adapter: null,
                slots: <String, Dependent<PostDetailState>>{
                }),
            middleware: <Middleware<PostDetailState>>[
            ],);
}
