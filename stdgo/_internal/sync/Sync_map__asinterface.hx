package stdgo._internal.sync;
class Map__asInterface {
    @:keep
    @:tdfield
    public dynamic function _dirtyLocked():Void @:_0 __self__.value._dirtyLocked();
    @:keep
    @:tdfield
    public dynamic function _missLocked():Void @:_0 __self__.value._missLocked();
    @:keep
    @:tdfield
    public dynamic function range(_f:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void @:_0 __self__.value.range(_f);
    @:keep
    @:tdfield
    public dynamic function compareAndDelete(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool return @:_0 __self__.value.compareAndDelete(_key, _old);
    @:keep
    @:tdfield
    public dynamic function compareAndSwap(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new_:stdgo.AnyInterface):Bool return @:_0 __self__.value.compareAndSwap(_key, _old, _new_);
    @:keep
    @:tdfield
    public dynamic function swap(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value.swap(_key, _value);
    @:keep
    @:tdfield
    public dynamic function delete(_key:stdgo.AnyInterface):Void @:_0 __self__.value.delete(_key);
    @:keep
    @:tdfield
    public dynamic function loadAndDelete(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value.loadAndDelete(_key);
    @:keep
    @:tdfield
    public dynamic function loadOrStore(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value.loadOrStore(_key, _value);
    @:keep
    @:tdfield
    public dynamic function store(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void @:_0 __self__.value.store(_key, _value);
    @:keep
    @:tdfield
    public dynamic function load(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value.load(_key);
    @:keep
    @:tdfield
    public dynamic function _loadReadOnly():stdgo._internal.sync.Sync_t_readonly.T_readOnly return @:_0 __self__.value._loadReadOnly();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.sync.Sync_map_pointer.Map_Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
