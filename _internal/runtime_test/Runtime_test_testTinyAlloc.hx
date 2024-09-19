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
function testTinyAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("tinyalloc suppressed when running in race mode" : stdgo.GoString)));
        };
        {};
        var _v:stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer> = new stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer>(16, 16, ...[for (i in 0 ... 16) @:default_value null]);
        for (_i => _ in _v) {
            _v[(_i : stdgo.GoInt)] = (stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoUInt8))) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        };
        var _chunks = ({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUIntptr, Bool>);
        for (__6 => _p in _v) {
            _chunks[((_p.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) & (((7 : stdgo.GoUIntptr) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUIntptr)) : stdgo.GoUIntptr)] = true;
        };
        if ((_chunks.length) == ((16 : stdgo.GoInt))) {
            _t.fatal(stdgo.Go.toInterface(("no bytes allocated within the same 8-byte chunk" : stdgo.GoString)));
        };
    }
