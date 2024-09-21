package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testNetpollBreak(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.Macro.controlFlow({
            if (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) == ((1 : stdgo.GoInt))) {
                _t.skip(stdgo.Go.toInterface(("skipping: GOMAXPROCS=1" : stdgo.GoString)));
            };
            stdgo._internal.runtime.Runtime_netpollGenericInit.netpollGenericInit();
            var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _c = (new stdgo.Chan<Bool>((2 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    _c.__send__(true);
                    stdgo._internal.runtime.Runtime_netpoll.netpoll(((10i64 : stdgo.GoInt64) * (1000000000i64 : stdgo._internal.time.Time_Duration.Duration).nanoseconds() : stdgo.GoInt64));
                    _c.__send__(true);
                };
                a();
            });
            _c.__get__();
            @:label("loop") while (true) {
                stdgo._internal.runtime.Runtime_usleep.usleep((100u32 : stdgo.GoUInt32));
                stdgo._internal.runtime.Runtime_netpollBreak.netpollBreak();
                stdgo._internal.runtime.Runtime_netpollBreak.netpollBreak();
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_c != null && _c.__isGet__()) {
                            __select__ = false;
                            {
                                _c.__get__();
                                {
                                    @:jump("loop") break;
                                };
                            };
                        } else {
                            __select__ = false;
                            {};
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
            {
                var _dur = (stdgo._internal.time.Time_since.since(_start?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
                if ((_dur > (5000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                    _t.errorf(("netpollBreak did not interrupt netpoll: slept for: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dur)));
                };
            };
        });
    }
