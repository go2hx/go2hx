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
function testUserArenaClonePointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a = stdgo._internal.runtime.Runtime_newUserArena.newUserArena();
        var _x = stdgo._internal.runtime.Runtime_escape.escape((stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar>));
        var _xCopy = stdgo._internal.runtime.Runtime_userArenaClone.userArenaClone(_x);
        if ((stdgo.Go.toInterface(_x) : stdgo._internal.unsafe.Unsafe.UnsafePointer) != ((stdgo.Go.toInterface(_xCopy) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
            _t.errorf(("Clone should not have made a copy: %#v -> %#v" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_xCopy));
        };
        var _i:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        _i = stdgo.Go.toInterface((null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar>));
        _a.new_((stdgo.Go.setRef(_i) : stdgo.Ref<stdgo.AnyInterface>));
        var _xArena = (stdgo.Go.typeAssert((_i : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar>)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar>);
        var _xArenaCopy = stdgo._internal.runtime.Runtime_userArenaClone.userArenaClone(_xArena);
        if ((stdgo.Go.toInterface(_xArena) : stdgo._internal.unsafe.Unsafe.UnsafePointer) == ((stdgo.Go.toInterface(_xArenaCopy) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
            _t.errorf(("Clone should have made a copy: %#v -> %#v" : stdgo.GoString), stdgo.Go.toInterface(_xArena), stdgo.Go.toInterface(_xArenaCopy));
        };
        if (stdgo.Go.toInterface((_xArena : _internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar)) != stdgo.Go.toInterface((_xArenaCopy : _internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar))) {
            _t.errorf(("Clone made an incorrect copy copy: %#v -> %#v" : stdgo.GoString), stdgo.Go.toInterface((_xArena : _internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar)), stdgo.Go.toInterface((_xArenaCopy : _internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar)));
        };
        _a.free();
    }
