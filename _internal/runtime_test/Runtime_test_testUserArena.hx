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
function testUserArena(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((2 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            _t.run(("Alloc" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _ss = (stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar((5 : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar>);
                    _internal.runtime_test.Runtime_test__runSubTestUserArenaNew._runSubTestUserArenaNew(_t, _ss, true);
                    var _sp = (stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer((stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>)) : _internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>);
                    _internal.runtime_test.Runtime_test__runSubTestUserArenaNew._runSubTestUserArenaNew(_t, _sp, true);
                    var _spm = (stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_T_smallPointerMix.T_smallPointerMix(_sp, (5 : stdgo.GoUInt8), null, (new stdgo.GoArray<stdgo.GoUInt8>(11, 11, ...[
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()) : _internal.runtime_test.Runtime_test_T_smallPointerMix.T_smallPointerMix)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointerMix.T_smallPointerMix>);
                    _internal.runtime_test.Runtime_test__runSubTestUserArenaNew._runSubTestUserArenaNew(_t, _spm, true);
                    var _mse = (stdgo.Go.setRef(new _internal.runtime_test.Runtime_test_T_mediumScalarEven.T_mediumScalarEven(8192, 8192, ...[for (i in 0 ... 8192) (0 : stdgo.GoUInt8)])) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_mediumScalarEven.T_mediumScalarEven>);
                    for (_i => _ in _mse) {
                        _mse[(_i : stdgo.GoInt)] = (121 : stdgo.GoUInt8);
                    };
                    _internal.runtime_test.Runtime_test__runSubTestUserArenaNew._runSubTestUserArenaNew(_t, _mse, true);
                    var _mso = (stdgo.Go.setRef(new _internal.runtime_test.Runtime_test_T_mediumScalarOdd.T_mediumScalarOdd(3321, 3321, ...[for (i in 0 ... 3321) (0 : stdgo.GoUInt8)])) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_mediumScalarOdd.T_mediumScalarOdd>);
                    for (_i => _ in _mso) {
                        _mso[(_i : stdgo.GoInt)] = (122 : stdgo.GoUInt8);
                    };
                    _internal.runtime_test.Runtime_test__runSubTestUserArenaNew._runSubTestUserArenaNew(_t, _mso, true);
                    var _mpe = (stdgo.Go.setRef(new _internal.runtime_test.Runtime_test_T_mediumPointerEven.T_mediumPointerEven(1024, 1024, ...[for (i in 0 ... 1024) (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>)])) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_mediumPointerEven.T_mediumPointerEven>);
                    for (_i => _ in _mpe) {
                        _mpe[(_i : stdgo.GoInt)] = _sp;
                    };
                    _internal.runtime_test.Runtime_test__runSubTestUserArenaNew._runSubTestUserArenaNew(_t, _mpe, true);
                    var _mpo = (stdgo.Go.setRef(new _internal.runtime_test.Runtime_test_T_mediumPointerOdd.T_mediumPointerOdd(1023, 1023, ...[for (i in 0 ... 1023) (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>)])) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_mediumPointerOdd.T_mediumPointerOdd>);
                    for (_i => _ in _mpo) {
                        _mpo[(_i : stdgo.GoInt)] = _sp;
                    };
                    _internal.runtime_test.Runtime_test__runSubTestUserArenaNew._runSubTestUserArenaNew(_t, _mpo, true);
                    var _ls = (stdgo.Go.setRef(new _internal.runtime_test.Runtime_test_T_largeScalar.T_largeScalar(8388609, 8388609, ...[for (i in 0 ... 8388609) (0 : stdgo.GoUInt8)])) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_largeScalar.T_largeScalar>);
                    for (_i => _ in _ls) {
                        _ls[(_i : stdgo.GoInt)] = (123 : stdgo.GoUInt8);
                    };
                    _internal.runtime_test.Runtime_test__runSubTestUserArenaNew._runSubTestUserArenaNew(_t, _ls, false);
                    var _lp = (stdgo.Go.setRef(new _internal.runtime_test.Runtime_test_T_largePointer.T_largePointer(2097153, 2097153, ...[for (i in 0 ... 2097153) (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>)])) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_largePointer.T_largePointer>);
                    for (_i => _ in _lp) {
                        _lp[(_i : stdgo.GoInt)] = _sp;
                    };
                    _internal.runtime_test.Runtime_test__runSubTestUserArenaNew._runSubTestUserArenaNew(_t, _lp, false);
                    var _sss = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar>((25 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((25 : stdgo.GoInt).toBasic() > 0 ? (25 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar)]) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar>);
                    for (_i => _ in _sss) {
                        _sss[(_i : stdgo.GoInt)] = (new _internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar((12 : stdgo.GoUIntptr)) : _internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar);
                    };
                    _internal.runtime_test.Runtime_test__runSubTestUserArenaSlice._runSubTestUserArenaSlice(_t, _sss, true);
                    var _mpos = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_mediumPointerOdd.T_mediumPointerOdd>((5 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((5 : stdgo.GoInt).toBasic() > 0 ? (5 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new _internal.runtime_test.Runtime_test_T_mediumPointerOdd.T_mediumPointerOdd(1023, 1023, ...[for (i in 0 ... 1023) (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>)])]) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_mediumPointerOdd.T_mediumPointerOdd>);
                    for (_i => _ in _mpos) {
                        _mpos[(_i : stdgo.GoInt)] = (_mpo : _internal.runtime_test.Runtime_test_T_mediumPointerOdd.T_mediumPointerOdd)?.__copy__();
                    };
                    _internal.runtime_test.Runtime_test__runSubTestUserArenaSlice._runSubTestUserArenaSlice(_t, _mpos, true);
                    var _sps = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>(((2097153 : stdgo.GoUIntptr) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((2097153 : stdgo.GoUIntptr) : stdgo.GoInt).toBasic() > 0 ? ((2097153 : stdgo.GoUIntptr) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer)]) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>);
                    for (_i => _ in _sps) {
                        _sps[(_i : stdgo.GoInt)] = (_sp : _internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer)?.__copy__();
                    };
                    _internal.runtime_test.Runtime_test__runSubTestUserArenaSlice._runSubTestUserArenaSlice(_t, _sps, false);
                    _t.run(("struct{}" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            var _arena = stdgo._internal.runtime.Runtime_newUserArena.newUserArena();
                            var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                            _x = stdgo.Go.toInterface((null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>));
                            _arena.new_((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>));
                            {
                                var _v = (stdgo.Go.toInterface((stdgo.Go.typeAssert((_x : stdgo.Ref<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                                if (_v != (stdgo._internal.runtime.Runtime_zeroBase.zeroBase)) {
                                    _t.errorf(("expected zero-sized type to be allocated as zerobase: got %x, want %x" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_zeroBase.zeroBase));
                                };
                            };
                            _arena.free();
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
                    });
                    _t.run(("[]struct{}" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            var _arena = stdgo._internal.runtime.Runtime_newUserArena.newUserArena();
                            var _sl:stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct0.T_struct0> = (null : stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
                            _arena.slice(stdgo.Go.toInterface((stdgo.Go.setRef(_sl) : stdgo.Ref<stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>>)), (10 : stdgo.GoInt));
                            {
                                var _v = (stdgo.Go.toInterface((stdgo.Go.setRef(_sl[(0 : stdgo.GoInt)]) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                                if (_v != (stdgo._internal.runtime.Runtime_zeroBase.zeroBase)) {
                                    _t.errorf(("expected zero-sized type to be allocated as zerobase: got %x, want %x" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_zeroBase.zeroBase));
                                };
                            };
                            _arena.free();
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
                    });
                    _t.run(("[]int (cap 0)" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            var _arena = stdgo._internal.runtime.Runtime_newUserArena.newUserArena();
                            var _sl:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
                            _arena.slice(stdgo.Go.toInterface((stdgo.Go.setRef(_sl) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)), (0 : stdgo.GoInt));
                            if ((_sl.length) != ((0 : stdgo.GoInt))) {
                                _t.errorf(("expected requested zero-sized slice to still have zero length: got %x, want 0" : stdgo.GoString), stdgo.Go.toInterface((_sl.length)));
                            };
                            _arena.free();
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
                    });
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
            });
            stdgo._internal.runtime.Runtime_gc.gc();
            {
                var _n = (stdgo._internal.runtime.Runtime_globalWaitingArenaChunks.globalWaitingArenaChunks() : stdgo.GoInt);
                if (_n != ((0 : stdgo.GoInt))) {
                    _t.errorf(("expected zero waiting arena chunks, found %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
                };
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
