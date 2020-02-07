import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class PostMainPage extends Page<PostMainState, Map<String, dynamic>> {
  PostMainPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<PostMainState>(
                adapter: null,
                slots: <String, Dependent<PostMainState>>{
                }),
            middleware: <Middleware<PostMainState>>[
            ],);

}
