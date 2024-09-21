package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testOverflowSleep(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        stdgo.Go.routine(() -> {
            var a = function():Void {
                stdgo._internal.time.Time_sleep.sleep((9223372036854775807i64 : stdgo._internal.time.Time_Duration.Duration));
                throw stdgo.Go.toInterface(("big sleep returned" : stdgo.GoString));
            };
            a();
        });
        {
            var __select__ = true;
            while (__select__) {
                if (stdgo._internal.time.Time_after.after((9223372036854775807i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((9223372036854775807i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time_after.after((9223372036854775807i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                        {
                            _t.fatalf(("big timeout fired" : stdgo.GoString));
                        };
                    };
                } else if (stdgo._internal.time.Time_after.after((25000000i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((25000000i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time_after.after((25000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                        {};
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        {};
        stdgo._internal.time.Time_sleep.sleep((-9223372036854775808i64 : stdgo._internal.time.Time_Duration.Duration));
        {
            var __select__ = true;
            while (__select__) {
                if (stdgo._internal.time.Time_after.after((-9223372036854775808i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((-9223372036854775808i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time_after.after((-9223372036854775808i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                        {};
                    };
                } else if (stdgo._internal.time.Time_after.after((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time_after.after((1000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                        {
                            _t.fatalf(("negative timeout didn\'t fire" : stdgo.GoString));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
