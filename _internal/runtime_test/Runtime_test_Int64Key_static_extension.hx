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
@:keep @:allow(_internal.runtime_test.Runtime_test.Int64Key_asInterface) class Int64Key_static_extension {
    @:keep
    static public function _name( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int64Key.Int64Key>):stdgo.GoString {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int64Key.Int64Key> = _k;
        return ("int64" : stdgo.GoString);
    }
    @:keep
    static public function _hash( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int64Key.Int64Key>):stdgo.GoUIntptr {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int64Key.Int64Key> = _k;
        return stdgo._internal.runtime.Runtime_int64Hash.int64Hash(_k._i, (0 : stdgo.GoUIntptr));
    }
    @:keep
    static public function _flipBit( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int64Key.Int64Key>, _i:stdgo.GoInt):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int64Key.Int64Key> = _k;
        _k._i = (_k._i ^ (((1i64 : stdgo.GoUInt64) << (_i : stdgo.GoUInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
    }
    @:keep
    static public function _bits( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int64Key.Int64Key>):stdgo.GoInt {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int64Key.Int64Key> = _k;
        return (64 : stdgo.GoInt);
    }
    @:keep
    static public function _random( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int64Key.Int64Key>, _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int64Key.Int64Key> = _k;
        _k._i = ((_r.uint32() : stdgo.GoUInt64) + ((_r.uint32() : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    static public function _clear( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int64Key.Int64Key>):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int64Key.Int64Key> = _k;
        _k._i = (0i64 : stdgo.GoUInt64);
    }
}
