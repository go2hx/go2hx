package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testStoreLoadSeqCst32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo._internal.runtime.Runtime_numCPU.numCPU() == ((1 : stdgo.GoInt))) {
                _t.skipf(("Skipping test on %v processor machine" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_numCPU.numCPU()));
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((4 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            var n = ((1000 : stdgo.GoInt32) : stdgo.GoInt32);
            if (stdgo._internal.testing.Testing_short.short()) {
                n = (100 : stdgo.GoInt32);
            };
            var _c = (new stdgo.Chan<Bool>((2 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            var x = (new stdgo.GoArray<stdgo.GoInt32>(2, 2, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>)?.__copy__();
            var _ack = (new stdgo.GoArray<stdgo.GoArray<stdgo.GoInt32>>(2, 2, ...[(new stdgo.GoArray<stdgo.GoInt32>(3, 3, ...[(-1 : stdgo.GoInt32), (-1 : stdgo.GoInt32), (-1 : stdgo.GoInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>)?.__copy__(), (new stdgo.GoArray<stdgo.GoInt32>(3, 3, ...[(-1 : stdgo.GoInt32), (-1 : stdgo.GoInt32), (-1 : stdgo.GoInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>)?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoInt32>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoInt32)])])) : stdgo.GoArray<stdgo.GoArray<stdgo.GoInt32>>);
            {
                var _p = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_p < (2 : stdgo.GoInt) : Bool), _p++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_me:stdgo.GoInt):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                var _he = ((1 : stdgo.GoInt) - _me : stdgo.GoInt);
                                {
                                    var _i = ((1 : stdgo.GoInt32) : stdgo.GoInt32);
                                    stdgo.Go.cfor((_i < n : Bool), _i++, {
                                        stdgo._internal.sync.atomic_.Atomic__storeInt32.storeInt32(stdgo.Go.pointer(x[(_me : stdgo.GoInt)]), _i);
                                        var _my = (stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32(stdgo.Go.pointer(x[(_he : stdgo.GoInt)])) : stdgo.GoInt32);
                                        stdgo._internal.sync.atomic_.Atomic__storeInt32.storeInt32(stdgo.Go.pointer(_ack[(_me : stdgo.GoInt)][((_i % (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]), _my);
                                        {
                                            var _w = (1 : stdgo.GoInt);
                                            stdgo.Go.cfor(stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32(stdgo.Go.pointer(_ack[(_he : stdgo.GoInt)][((_i % (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)])) == ((-1 : stdgo.GoInt32)), _w++, {
                                                if ((_w % (1000 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                                                    stdgo._internal.runtime.Runtime_gosched.gosched();
                                                };
                                            });
                                        };
                                        var _his = (stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32(stdgo.Go.pointer(_ack[(_he : stdgo.GoInt)][((_i % (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)])) : stdgo.GoInt32);
                                        if (((((_my != _i) && (_my != (_i - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) || (((_his != _i) && (_his != (_i - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) : Bool)) {
                                            _t.errorf(("invalid values: %d/%d (%d)" : stdgo.GoString), stdgo.Go.toInterface(_my), stdgo.Go.toInterface(_his), stdgo.Go.toInterface(_i));
                                            break;
                                        };
                                        if (((_my != _i) && (_his != _i) : Bool)) {
                                            _t.errorf(("store/load are not sequentially consistent: %d/%d (%d)" : stdgo.GoString), stdgo.Go.toInterface(_my), stdgo.Go.toInterface(_his), stdgo.Go.toInterface(_i));
                                            break;
                                        };
                                        stdgo._internal.sync.atomic_.Atomic__storeInt32.storeInt32(stdgo.Go.pointer(_ack[(_me : stdgo.GoInt)][((((_i - (1 : stdgo.GoInt32) : stdgo.GoInt32)) % (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]), (-1 : stdgo.GoInt32));
                                    });
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
                        a(_p);
                    });
                });
            };
            _c.__get__();
            _c.__get__();
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
