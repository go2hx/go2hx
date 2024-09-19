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
function _growStackIter(_p:stdgo.Pointer<stdgo.GoInt>, _n:stdgo.GoInt):Void {
        if (_n == ((0 : stdgo.GoInt))) {
            _p.value = (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo._internal.runtime.Runtime_gc.gc();
            return;
        };
        _p.value = (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _x = (0 : stdgo.GoInt);
        _internal.runtime_test.Runtime_test__growStackIter._growStackIter(stdgo.Go.pointer(_x), (_n - (1 : stdgo.GoInt) : stdgo.GoInt));
        if (_x != (_n)) {
            throw stdgo.Go.toInterface(("stack is corrupted" : stdgo.GoString));
        };
    }
