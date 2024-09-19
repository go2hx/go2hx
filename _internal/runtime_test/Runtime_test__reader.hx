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
function _reader(_rwm:stdgo.Ref<stdgo._internal.runtime.Runtime_RWMutex.RWMutex>, _num_iterations:stdgo.GoInt, _activity:stdgo.Pointer<stdgo.GoInt32>, _cdone:stdgo.Chan<Bool>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _num_iterations : Bool), _i++, {
                _rwm.rlock();
                var _n = (stdgo._internal.sync.atomic_.Atomic__addInt32.addInt32(_activity, (1 : stdgo.GoInt32)) : stdgo.GoInt32);
                if (((_n < (1 : stdgo.GoInt32) : Bool) || (_n >= (10000 : stdgo.GoInt32) : Bool) : Bool)) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("wlock(%d)\n" : stdgo.GoString), stdgo.Go.toInterface(_n)));
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {});
                };
                stdgo._internal.sync.atomic_.Atomic__addInt32.addInt32(_activity, (-1 : stdgo.GoInt32));
                _rwm.runlock();
            });
        };
        _cdone.__send__(true);
    }
