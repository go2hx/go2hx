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
@:keep @:allow(_internal.runtime_test.Runtime_test.Int32Key_asInterface) class Int32Key_static_extension {
    @:keep
    static public function _name( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int32Key.Int32Key>):stdgo.GoString {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int32Key.Int32Key> = _k;
        return ("int32" : stdgo.GoString);
    }
    @:keep
    static public function _hash( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int32Key.Int32Key>):stdgo.GoUIntptr {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int32Key.Int32Key> = _k;
        return stdgo._internal.runtime.Runtime_int32Hash.int32Hash(_k._i, (0 : stdgo.GoUIntptr));
    }
    @:keep
    static public function _flipBit( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int32Key.Int32Key>, _i:stdgo.GoInt):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int32Key.Int32Key> = _k;
        _k._i = (_k._i ^ (((1u32 : stdgo.GoUInt32) << (_i : stdgo.GoUInt) : stdgo.GoUInt32)) : stdgo.GoUInt32);
    }
    @:keep
    static public function _bits( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int32Key.Int32Key>):stdgo.GoInt {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int32Key.Int32Key> = _k;
        return (32 : stdgo.GoInt);
    }
    @:keep
    static public function _random( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int32Key.Int32Key>, _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int32Key.Int32Key> = _k;
        _k._i = _r.uint32();
    }
    @:keep
    static public function _clear( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int32Key.Int32Key>):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_Int32Key.Int32Key> = _k;
        _k._i = (0u32 : stdgo.GoUInt32);
    }
}
