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
function _testPreemptionAfterSyscall(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _syscallDuration:stdgo._internal.time.Time_Duration.Duration):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                _t.skip(stdgo.Go.toInterface(("no preemption on wasm yet" : stdgo.GoString)));
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((2 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            var _iterations = (10 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                _iterations = (1 : stdgo.GoInt);
            };
            {};
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _iterations : Bool), _i++, {
                    var _c = (new stdgo.Chan<Bool>((8 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
                    var _stop = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
                    {
                        var _g = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_g < (8 : stdgo.GoInt) : Bool), _g++, {
                            stdgo.Go.routine(() -> {
                                var a = function(_stop:stdgo.Pointer<stdgo.GoUInt32>):Void {
                                    var __deferstack__:Array<Void -> Void> = [];
                                    try {
                                        _c.__send__(true);
                                        while (stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(_stop) == ((0u32 : stdgo.GoUInt32))) {
                                            _internal.runtime_test.Runtime_test__fakeSyscall._fakeSyscall(_syscallDuration);
                                        };
                                        _c.__send__(true);
                                        {
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                            return;
                                        };
                                    } catch(__exception__) {
                                        var exe:Dynamic = __exception__.native;
                                        if ((exe is haxe.ValueException)) exe = exe.value;
                                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                            if (__exception__.message == "__return__") throw "__return__";
                                            exe = stdgo.Go.toInterface(__exception__.message);
                                        };
                                        stdgo.Go.recover_exception = exe;
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                };
                                a(stdgo.Go.pointer(_stop));
                            });
                        });
                    };
                    {
                        var _g = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_g < (8 : stdgo.GoInt) : Bool), _g++, {
                            _c.__get__();
                        });
                    };
                    stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(stdgo.Go.pointer(_stop), (1u32 : stdgo.GoUInt32));
                    {
                        var _g = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_g < (8 : stdgo.GoInt) : Bool), _g++, {
                            _c.__get__();
                        });
                    };
                    var _duration = (stdgo._internal.time.Time_since.since(_start?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
                    if ((_duration > (5000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                        _t.errorf(("timeout exceeded: %v (%v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_duration)), stdgo.Go.toInterface(stdgo.Go.asInterface((5000000000i64 : stdgo._internal.time.Time_Duration.Duration))));
                    };
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
