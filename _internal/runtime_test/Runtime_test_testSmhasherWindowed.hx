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
function testSmhasherWindowed(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("Too long for race mode" : stdgo.GoString)));
        };
        _t.logf(("32 bit keys" : stdgo.GoString));
        _internal.runtime_test.Runtime_test__windowed._windowed(_t, stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_Int32Key.Int32Key() : _internal.runtime_test.Runtime_test_Int32Key.Int32Key)) : stdgo.Ref<_internal.runtime_test.Runtime_test_Int32Key.Int32Key>)));
        _t.logf(("64 bit keys" : stdgo.GoString));
        _internal.runtime_test.Runtime_test__windowed._windowed(_t, stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_Int64Key.Int64Key() : _internal.runtime_test.Runtime_test_Int64Key.Int64Key)) : stdgo.Ref<_internal.runtime_test.Runtime_test_Int64Key.Int64Key>)));
        _t.logf(("string keys" : stdgo.GoString));
        _internal.runtime_test.Runtime_test__windowed._windowed(_t, stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_BytesKey.BytesKey((new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : _internal.runtime_test.Runtime_test_BytesKey.BytesKey)) : stdgo.Ref<_internal.runtime_test.Runtime_test_BytesKey.BytesKey>)));
    }
