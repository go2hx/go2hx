package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
class DeepCopyMap_asInterface {
    @:keep
    public dynamic function _dirty():stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface> return __self__.value._dirty();
    @:keep
    public dynamic function range(_f:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void __self__.value.range(_f);
    @:keep
    public dynamic function compareAndDelete(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool return __self__.value.compareAndDelete(_key, _old);
    @:keep
    public dynamic function compareAndSwap(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool return __self__.value.compareAndSwap(_key, _old, _new);
    @:keep
    public dynamic function delete(_key:stdgo.AnyInterface):Void __self__.value.delete(_key);
    @:keep
    public dynamic function loadAndDelete(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.loadAndDelete(_key);
    @:keep
    public dynamic function swap(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.swap(_key, _value);
    @:keep
    public dynamic function loadOrStore(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.loadOrStore(_key, _value);
    @:keep
    public dynamic function store(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void __self__.value.store(_key, _value);
    @:keep
    public dynamic function load(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.load(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
