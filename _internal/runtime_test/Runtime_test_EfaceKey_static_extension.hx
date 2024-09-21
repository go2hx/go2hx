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
@:keep @:allow(_internal.runtime_test.Runtime_test.EfaceKey_asInterface) class EfaceKey_static_extension {
    @:keep
    static public function _name( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_EfaceKey.EfaceKey>):stdgo.GoString {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_EfaceKey.EfaceKey> = _k;
        return ("Eface" : stdgo.GoString);
    }
    @:keep
    static public function _hash( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_EfaceKey.EfaceKey>):stdgo.GoUIntptr {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_EfaceKey.EfaceKey> = _k;
        return stdgo._internal.runtime.Runtime_efaceHash.efaceHash(_k._i, (0 : stdgo.GoUIntptr));
    }
    @:keep
    static public function _flipBit( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_EfaceKey.EfaceKey>, _i:stdgo.GoInt):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_EfaceKey.EfaceKey> = _k;
        _k._i = stdgo.Go.toInterface(((stdgo.Go.typeAssert((_k._i : stdgo.GoUInt64)) : stdgo.GoUInt64) ^ ((1i64 : stdgo.GoUInt64) << (_i : stdgo.GoUInt) : stdgo.GoUInt64) : stdgo.GoUInt64));
    }
    @:keep
    static public function _bits( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_EfaceKey.EfaceKey>):stdgo.GoInt {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_EfaceKey.EfaceKey> = _k;
        return (64 : stdgo.GoInt);
    }
    @:keep
    static public function _random( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_EfaceKey.EfaceKey>, _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_EfaceKey.EfaceKey> = _k;
        _k._i = stdgo.Go.toInterface((_r.int63() : stdgo.GoUInt64));
    }
    @:keep
    static public function _clear( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_EfaceKey.EfaceKey>):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_EfaceKey.EfaceKey> = _k;
        _k._i = (null : stdgo.AnyInterface);
    }
}
