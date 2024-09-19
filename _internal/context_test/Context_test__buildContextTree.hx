package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function _buildContextTree(_root:stdgo._internal.context.Context_Context.Context, _depth:stdgo.GoInt):Void {
        {
            var _d = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_d < _depth : Bool), _d++, {
                {
                    var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_root);
                    _root = __tmp__._0;
                };
            });
        };
    }
