package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testStoreLoadRelAcq32(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
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
            {};
            var x:_internal.sync.atomic_test.Atomic_test_T_testStoreLoadRelAcq32___localname___Data_56337.T_testStoreLoadRelAcq32___localname___Data_56337 = ({} : _internal.sync.atomic_test.Atomic_test_T_testStoreLoadRelAcq32___localname___Data_56337.T_testStoreLoadRelAcq32___localname___Data_56337);
            {
                var _p = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
                stdgo.Go.cfor((_p < (2 : stdgo.GoInt32) : Bool), _p++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_p:stdgo.GoInt32):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                {
                                    var _i = ((1 : stdgo.GoInt32) : stdgo.GoInt32);
                                    stdgo.Go.cfor((_i < n : Bool), _i++, {
                                        if ((((_i + _p : stdgo.GoInt32)) % (2 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
                                            x._data1 = _i;
                                            x._data2 = (_i : stdgo.GoFloat32);
                                            stdgo._internal.sync.atomic_.Atomic__storeInt32.storeInt32(stdgo.Go.pointer(x._signal), _i);
                                        } else {
                                            {
                                                var _w = (1 : stdgo.GoInt);
                                                stdgo.Go.cfor(stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32(stdgo.Go.pointer(x._signal)) != (_i), _w++, {
                                                    if ((_w % (1000 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                                                        stdgo._internal.runtime.Runtime_gosched.gosched();
                                                    };
                                                });
                                            };
                                            var _d1 = (x._data1 : stdgo.GoInt32);
                                            var _d2 = (x._data2 : stdgo.GoFloat32);
                                            if (((_d1 != _i) || (_d2 != (_i : stdgo.GoFloat32)) : Bool)) {
                                                _t.errorf(("incorrect data: %d/%g (%d)" : stdgo.GoString), stdgo.Go.toInterface(_d1), stdgo.Go.toInterface(_d2), stdgo.Go.toInterface(_i));
                                                break;
                                            };
                                        };
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
