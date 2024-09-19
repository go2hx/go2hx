package _internal.runtime.debug_test;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
function testSetGCPercent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (20076 : stdgo.GoInt));
            var _old = (stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((123 : stdgo.GoInt)) : stdgo.GoInt);
            var _new = (stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_old) : stdgo.GoInt);
            if (_new != ((123 : stdgo.GoInt))) {
                _t.errorf(("SetGCPercent(123); SetGCPercent(x) = %d, want 123" : stdgo.GoString), stdgo.Go.toInterface(_new));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_old);
                        {
                            final __tmp__0 = (null : stdgo.AnyInterface);
                            final __tmp__1 = (null : stdgo.AnyInterface);
                            _internal.runtime.debug_test.Debug_test__setGCPercentBallast._setGCPercentBallast = __tmp__0;
                            _internal.runtime.debug_test.Debug_test__setGCPercentSink._setGCPercentSink = __tmp__1;
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
                };
                a();
            });
            stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((100 : stdgo.GoInt));
            stdgo._internal.runtime.Runtime_gc.gc();
            {};
            var _ms:stdgo._internal.runtime.Runtime_MemStats.MemStats = ({} : stdgo._internal.runtime.Runtime_MemStats.MemStats);
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_ms) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
            _internal.runtime.debug_test.Debug_test__setGCPercentBallast._setGCPercentBallast = stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>((((104857600i64 : stdgo.GoUInt64) - _ms.alloc : stdgo.GoUInt64) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            stdgo._internal.runtime.Runtime_gc.gc();
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_ms) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
            if ((_internal.runtime.debug_test.Debug_test__abs64._abs64(((104857600i64 : stdgo.GoInt64) - (_ms.alloc : stdgo.GoInt64) : stdgo.GoInt64)) > (10485760i64 : stdgo.GoInt64) : Bool)) {
                _t.fatalf(("failed to set up baseline live heap; got %d MB, want %d MB" : stdgo.GoString), stdgo.Go.toInterface((_ms.alloc >> (20i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), stdgo.Go.toInterface((100 : stdgo.GoInt)));
            };
            {};
            {
                var _want = ((209715200i64 : stdgo.GoInt64) : stdgo.GoInt64);
                if ((_internal.runtime.debug_test.Debug_test__abs64._abs64((_want - (_ms.nextGC : stdgo.GoInt64) : stdgo.GoInt64)) > (20971520i64 : stdgo.GoInt64) : Bool)) {
                    _t.errorf(("NextGC = %d MB, want %d±%d MB" : stdgo.GoString), stdgo.Go.toInterface((_ms.nextGC >> (20i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), stdgo.Go.toInterface((_want >> (20i64 : stdgo.GoUInt64) : stdgo.GoInt64)), stdgo.Go.toInterface((20 : stdgo.GoInt)));
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (125829120 : stdgo.GoInt) : Bool), _i = (_i + ((1024 : stdgo.GoInt)) : stdgo.GoInt), {
                    _internal.runtime.debug_test.Debug_test__setGCPercentSink._setGCPercentSink = stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                });
            };
            _internal.runtime.debug_test.Debug_test__setGCPercentSink._setGCPercentSink = (null : stdgo.AnyInterface);
            stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((50 : stdgo.GoInt));
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_ms) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
            {
                var _want = ((157286400i64 : stdgo.GoInt64) : stdgo.GoInt64);
                if ((_internal.runtime.debug_test.Debug_test__abs64._abs64((_want - (_ms.nextGC : stdgo.GoInt64) : stdgo.GoInt64)) > (20971520i64 : stdgo.GoInt64) : Bool)) {
                    _t.errorf(("NextGC = %d MB, want %d±%d MB" : stdgo.GoString), stdgo.Go.toInterface((_ms.nextGC >> (20i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), stdgo.Go.toInterface((_want >> (20i64 : stdgo.GoUInt64) : stdgo.GoInt64)), stdgo.Go.toInterface((20 : stdgo.GoInt)));
                };
            };
            stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((100 : stdgo.GoInt));
            stdgo._internal.runtime.Runtime_gc.gc();
            _internal.runtime.debug_test.Debug_test__setGCPercentSink._setGCPercentSink = stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(((20971520 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_ms) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
            var _ngc1 = (_ms.numGC : stdgo.GoUInt32);
            stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((10 : stdgo.GoInt));
            _internal.runtime.debug_test.Debug_test__setGCPercentSink._setGCPercentSink = stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            stdgo._internal.runtime.Runtime_readMemStats.readMemStats((stdgo.Go.setRef(_ms) : stdgo.Ref<stdgo._internal.runtime.Runtime_MemStats.MemStats>));
            var _ngc2 = (_ms.numGC : stdgo.GoUInt32);
            if (_ngc1 == (_ngc2)) {
                _t.errorf(("expected GC to run but it did not" : stdgo.GoString));
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
