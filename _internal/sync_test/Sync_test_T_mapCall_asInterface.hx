package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
class T_mapCall_asInterface {
    @:keep
    public dynamic function generate(_r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value return __self__.value.generate(_r, _size);
    @:keep
    public dynamic function _apply(_m:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value._apply(_m);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.sync_test.Sync_test_T_mapCall.T_mapCall>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
