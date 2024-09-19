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
function testPinnerPinTinyObj(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _pinner:stdgo._internal.runtime.Runtime_Pinner.Pinner = ({} : stdgo._internal.runtime.Runtime_Pinner.Pinner);
        {};
        var _addr:stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer> = new stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer>(64, 64, ...[for (i in 0 ... 64) @:default_value null]);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (64 : stdgo.GoInt) : Bool), _i++, {
                var _p = stdgo.Go.pointer(false);
                _addr[(_i : stdgo.GoInt)] = (stdgo.Go.toInterface(_p) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                _pinner.pin(stdgo.Go.toInterface(_p));
                _pinner.pin(stdgo.Go.toInterface(_p));
                if (!stdgo._internal.runtime.Runtime_isPinned.isPinned(_addr[(_i : stdgo.GoInt)])) {
                    _t.fatalf(("not marked as pinned: %d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                {
                    var _cnt = stdgo._internal.runtime.Runtime_getPinCounter.getPinCounter(_addr[(_i : stdgo.GoInt)]);
                    if (((_cnt == null) || (_cnt.value == (0 : stdgo.GoUIntptr)) : Bool)) {
                        _t.fatalf(("pin counter incorrect: %d, %d" : stdgo.GoString), stdgo.Go.toInterface(_cnt.value), stdgo.Go.toInterface(_i));
                    };
                };
            });
        };
        _pinner.unpin();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (64 : stdgo.GoInt) : Bool), _i++, {
                if (stdgo._internal.runtime.Runtime_isPinned.isPinned(_addr[(_i : stdgo.GoInt)])) {
                    _t.fatal(stdgo.Go.toInterface(("still marked as pinned" : stdgo.GoString)));
                };
                if (stdgo._internal.runtime.Runtime_getPinCounter.getPinCounter(_addr[(_i : stdgo.GoInt)]) != null) {
                    _t.fatal(stdgo.Go.toInterface(("pin counter should not exist" : stdgo.GoString)));
                };
            });
        };
    }
