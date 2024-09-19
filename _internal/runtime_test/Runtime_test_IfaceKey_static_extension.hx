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
@:keep @:allow(_internal.runtime_test.Runtime_test.IfaceKey_asInterface) class IfaceKey_static_extension {
    @:keep
    static public function _name( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_IfaceKey.IfaceKey>):stdgo.GoString {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_IfaceKey.IfaceKey> = _k;
        return ("Iface" : stdgo.GoString);
    }
    @:keep
    static public function _hash( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_IfaceKey.IfaceKey>):stdgo.GoUIntptr {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_IfaceKey.IfaceKey> = _k;
        return stdgo._internal.runtime.Runtime_ifaceHash.ifaceHash(_k._i, (0 : stdgo.GoUIntptr));
    }
    @:keep
    static public function _flipBit( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_IfaceKey.IfaceKey>, _i:stdgo.GoInt):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_IfaceKey.IfaceKey> = _k;
        _k._i = stdgo.Go.asInterface(((stdgo.Go.typeAssert((stdgo.Go.toInterface(_k._i) : _internal.runtime_test.Runtime_test_T_fInter.T_fInter)) : _internal.runtime_test.Runtime_test_T_fInter.T_fInter) ^ ((1i64 : _internal.runtime_test.Runtime_test_T_fInter.T_fInter) << (_i : stdgo.GoUInt) : _internal.runtime_test.Runtime_test_T_fInter.T_fInter) : _internal.runtime_test.Runtime_test_T_fInter.T_fInter));
    }
    @:keep
    static public function _bits( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_IfaceKey.IfaceKey>):stdgo.GoInt {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_IfaceKey.IfaceKey> = _k;
        return (64 : stdgo.GoInt);
    }
    @:keep
    static public function _random( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_IfaceKey.IfaceKey>, _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_IfaceKey.IfaceKey> = _k;
        _k._i = stdgo.Go.asInterface((_r.int63() : _internal.runtime_test.Runtime_test_T_fInter.T_fInter));
    }
    @:keep
    static public function _clear( _k:stdgo.Ref<_internal.runtime_test.Runtime_test_IfaceKey.IfaceKey>):Void {
        @:recv var _k:stdgo.Ref<_internal.runtime_test.Runtime_test_IfaceKey.IfaceKey> = _k;
        _k._i = (null : _internal.runtime_test.Runtime_test_T__interface_0.T__interface_0);
    }
}
