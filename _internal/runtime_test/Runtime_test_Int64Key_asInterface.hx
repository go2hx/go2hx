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
class Int64Key_asInterface {
    @:keep
    public dynamic function _name():stdgo.GoString return __self__.value._name();
    @:keep
    public dynamic function _hash():stdgo.GoUIntptr return __self__.value._hash();
    @:keep
    public dynamic function _flipBit(_i:stdgo.GoInt):Void __self__.value._flipBit(_i);
    @:keep
    public dynamic function _bits():stdgo.GoInt return __self__.value._bits();
    @:keep
    public dynamic function _random(_r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):Void __self__.value._random(_r);
    @:keep
    public dynamic function _clear():Void __self__.value._clear();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.runtime_test.Runtime_test_Int64Key.Int64Key>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
