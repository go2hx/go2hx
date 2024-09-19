package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function benchmarkWithTimeout(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _concurrency = (40 : stdgo.GoInt);
            stdgo.Go.cfor((_concurrency <= (400000 : stdgo.GoInt) : Bool), _concurrency = (_concurrency * ((100 : stdgo.GoInt)) : stdgo.GoInt), {
                var _name = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("concurrency=%d" : stdgo.GoString), stdgo.Go.toInterface(_concurrency))?.__copy__() : stdgo.GoString);
                _b.run(_name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _internal.context_test.Context_test__benchmarkWithTimeout._benchmarkWithTimeout(_b, _concurrency);
                });
            });
        };
    }
