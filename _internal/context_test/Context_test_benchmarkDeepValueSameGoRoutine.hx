package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function benchmarkDeepValueSameGoRoutine(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__0 => _depth in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(10 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (50 : stdgo.GoInt), (100 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _ctx = (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_Context.Context);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _depth : Bool), _i++, {
                    _ctx = stdgo._internal.context.Context_withValue.withValue(_ctx, stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("depth=%d" : stdgo.GoString), stdgo.Go.toInterface(_depth))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _ctx.value(stdgo.Go.toInterface((-1 : stdgo.GoInt)));
                    });
                };
            });
        };
    }
