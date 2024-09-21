package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function benchmarkCancelTree(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _depths = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (10 : stdgo.GoInt), (100 : stdgo.GoInt), (1000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (__0 => _d in _depths) {
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("depth=%d" : stdgo.GoString), stdgo.Go.toInterface(_d))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.run(("Root=Background" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            _internal.context_test.Context_test__buildContextTree._buildContextTree(stdgo._internal.context.Context_background.background(), _d);
                        });
                    };
                });
                _b.run(("Root=OpenCanceler" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
                            _internal.context_test.Context_test__buildContextTree._buildContextTree(_ctx, _d);
                            _cancel();
                        });
                    };
                });
                _b.run(("Root=ClosedCanceler" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
                            _cancel();
                            _internal.context_test.Context_test__buildContextTree._buildContextTree(_ctx, _d);
                        });
                    };
                });
            });
        };
    }
