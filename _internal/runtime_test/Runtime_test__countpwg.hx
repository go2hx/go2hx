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
function _countpwg(_n:stdgo.Pointer<stdgo.GoInt>, _ready:stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>, _teardown:stdgo.Chan<Bool>):Void {
        if (_n.value == ((0 : stdgo.GoInt))) {
            _ready.done();
            _teardown.__get__();
            return;
        };
        _n.value--;
        _internal.runtime_test.Runtime_test__countpwg._countpwg(_n, _ready, _teardown);
    }
