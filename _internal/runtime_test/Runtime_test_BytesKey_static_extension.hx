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
@:keep @:allow(_internal.runtime_test.Runtime_test.BytesKey_asInterface) class BytesKey_static_extension {
    @:keep
    static public function _name( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_BytesKey.BytesKey>):stdgo.GoString {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_BytesKey.BytesKey> = _k;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("bytes%d" : stdgo.GoString), stdgo.Go.toInterface((_k._b.length)))?.__copy__();
    }
    @:keep
    static public function _hash( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_BytesKey.BytesKey>):stdgo.GoUIntptr {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_BytesKey.BytesKey> = _k;
        return stdgo._internal.runtime.Runtime_bytesHash.bytesHash(_k._b, (0 : stdgo.GoUIntptr));
    }
    @:keep
    static public function _flipBit( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_BytesKey.BytesKey>, _i:stdgo.GoInt):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_BytesKey.BytesKey> = _k;
        _k._b[(_i >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt)] = (_k._b[(_i >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt)] ^ (((1 : stdgo.GoUInt8) << ((_i & (7 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
    }
    @:keep
    static public function _bits( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_BytesKey.BytesKey>):stdgo.GoInt {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_BytesKey.BytesKey> = _k;
        return ((_k._b.length) * (8 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function _random( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_BytesKey.BytesKey>, _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_BytesKey.BytesKey> = _k;
        _internal.runtime_test.Runtime_test__randBytes._randBytes(_r, _k._b);
    }
    @:keep
    static public function _clear( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_BytesKey.BytesKey>):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_BytesKey.BytesKey> = _k;
        for (_i => _ in _k._b) {
            _k._b[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
}
