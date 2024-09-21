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
function _growStack(_progress:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32>):Void {
        var _n = (1024 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _n = (256 : stdgo.GoInt);
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _x = (0 : stdgo.GoInt);
                _internal.runtime_test.Runtime_test__growStackIter._growStackIter(stdgo.Go.pointer(_x), _i);
                if (_x != ((_i + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    throw stdgo.Go.toInterface(("stack is corrupted" : stdgo.GoString));
                };
                if (_progress != null && ((_progress : Dynamic).__nil__ == null || !(_progress : Dynamic).__nil__)) {
                    _progress.store((_i : stdgo.GoUInt32));
                };
            });
        };
        stdgo._internal.runtime.Runtime_gc.gc();
    }
