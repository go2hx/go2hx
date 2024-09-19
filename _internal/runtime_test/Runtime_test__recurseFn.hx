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
function _recurseFn(_level:stdgo.GoInt, _maxlevel:stdgo.GoInt):Void {
        var _a = (new stdgo.GoArray<stdgo.GoUInt32>(40, 40, ...[
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32),
(-1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt32>)?.__copy__();
        if (((_level + (1 : stdgo.GoInt) : stdgo.GoInt) < _maxlevel : Bool)) {
            _internal.runtime_test.Runtime_test__saveInt._saveInt = _a[(4 : stdgo.GoInt)];
            _internal.runtime_test.Runtime_test__recurseFn._recurseFn((_level + (1 : stdgo.GoInt) : stdgo.GoInt), _maxlevel);
        } else {
            throw stdgo.Go.toInterface(("recurseFn panic" : stdgo.GoString));
        };
    }
