package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function benchmarkParseDuration(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.time.Time_parseDuration.parseDuration(("9007199254.740993ms" : stdgo.GoString));
                stdgo._internal.time.Time_parseDuration.parseDuration(("9007199254740993ns" : stdgo.GoString));
            });
        };
    }
