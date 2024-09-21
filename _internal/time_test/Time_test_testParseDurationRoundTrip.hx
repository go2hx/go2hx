package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testParseDurationRoundTrip(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _max0 = ((9223372036854775807i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
        var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration((_max0.string() : stdgo.GoString)?.__copy__()), _max1:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_max0 != _max1) : Bool)) {
            _t.errorf(("round-trip failed: %d => %q => %d, %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_max0)), stdgo.Go.toInterface((_max0.string() : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_max1)), stdgo.Go.toInterface(_err));
        };
        var _min0 = ((-9223372036854775808i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
        var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration((_min0.string() : stdgo.GoString)?.__copy__()), _min1:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_min0 != _min1) : Bool)) {
            _t.errorf(("round-trip failed: %d => %q => %d, %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_min0)), stdgo.Go.toInterface((_min0.string() : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_min1)), stdgo.Go.toInterface(_err));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                var _d0 = ((stdgo._internal.math.rand.Rand_int31.int31() : stdgo._internal.time.Time_Duration.Duration) * (1000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
                var _s = ((_d0.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(_s?.__copy__()), _d1:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) || (_d0 != _d1) : Bool)) {
                    _t.errorf(("round-trip failed: %d => %q => %d, %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d0)), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_d1)), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
