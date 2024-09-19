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
function testPreemption(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (true) {
            _t.skip(stdgo.Go.toInterface(("no preemption on wasm yet" : stdgo.GoString)));
        };
        var n = (5 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            n = (2 : stdgo.GoInt);
        };
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _x:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _g = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_g < (2 : stdgo.GoInt) : Bool), _g++, {
                stdgo.Go.routine(() -> {
                    var a = function(_g:stdgo.GoInt):Void {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < n : Bool), _i++, {
                                while (stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(stdgo.Go.pointer(_x)) != ((_g : stdgo.GoUInt32))) {
                                    _internal.runtime_test.Runtime_test__preempt._preempt();
                                };
                                stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(stdgo.Go.pointer(_x), (((1 : stdgo.GoInt) - _g : stdgo.GoInt) : stdgo.GoUInt32));
                            });
                        };
                        _c.__send__(true);
                    };
                    a(_g);
                });
            });
        };
        _c.__get__();
        _c.__get__();
    }
