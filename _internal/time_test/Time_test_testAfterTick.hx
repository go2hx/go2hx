package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testAfterTick(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var delta = (100000000i64 : stdgo._internal.time.Time_Duration.Duration);
        if (stdgo._internal.testing.Testing_short.short()) {
            delta = (10000000i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        var _t0 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                stdgo._internal.time.Time_after.after(delta).__get__();
            });
        };
        var _t1 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _d = (_t1.sub(_t0?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
        var _target = (delta * (10i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
        if ((_d < ((_target * (9i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) / (10i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            _t.fatalf(("%d ticks of %s too fast: took %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface((10 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(delta)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_target)));
        };
        if ((!stdgo._internal.testing.Testing_short.short() && (_d > ((_target * (30i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) / (10i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) : Bool) : Bool)) {
            _t.fatalf(("%d ticks of %s too slow: took %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface((10 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(delta)), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_target)));
        };
    }
