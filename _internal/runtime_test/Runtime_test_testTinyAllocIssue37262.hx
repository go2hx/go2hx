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
function testTinyAllocIssue37262(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("tinyalloc suppressed when running in race mode" : stdgo.GoString)));
        };
        stdgo._internal.runtime.Runtime_gc.gc();
        stdgo._internal.runtime.Runtime_gc.gc();
        stdgo._internal.runtime.Runtime_acquirem.acquirem();
        var _aligned = (false : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (16 : stdgo.GoInt) : Bool), _i++, {
                var _x = stdgo._internal.runtime.Runtime_escape.escape(stdgo.Go.pointer((0 : stdgo.GoUInt8)));
                if ((((stdgo.Go.toInterface(_x) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) & (15 : stdgo.GoUIntptr) : stdgo.GoUIntptr) == ((15 : stdgo.GoUIntptr))) {
                    _aligned = true;
                    break;
                };
            });
        };
        if (!_aligned) {
            stdgo._internal.runtime.Runtime_releasem.releasem();
            _t.fatal(stdgo.Go.toInterface(("unable to get a fresh tiny slot" : stdgo.GoString)));
        };
        stdgo._internal.runtime.Runtime_escape.escape(stdgo.Go.pointer((0 : stdgo.GoUInt32)));
        var _tinyObj12 = stdgo._internal.runtime.Runtime_escape.escape((stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_obj12.T_obj12)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_obj12.T_obj12>));
        stdgo._internal.sync.atomic_.Atomic__storeUint64.storeUint64(stdgo.Go.pointer(_tinyObj12._a), (10i64 : stdgo.GoUInt64));
        stdgo._internal.runtime.Runtime_releasem.releasem();
    }
