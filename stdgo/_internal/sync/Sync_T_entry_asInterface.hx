package stdgo._internal.sync;
class T_entry_asInterface {
    @:keep
    public dynamic function _tryExpungeLocked():Bool return __self__.value._tryExpungeLocked();
    @:keep
    public dynamic function _trySwap(_i:stdgo.Ref<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo.AnyInterface>; var _1 : Bool; } return __self__.value._trySwap(_i);
    @:keep
    public dynamic function _delete():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value._delete();
    @:keep
    public dynamic function _tryLoadOrStore(_i:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; var _2 : Bool; } return __self__.value._tryLoadOrStore(_i);
    @:keep
    public dynamic function _swapLocked(_i:stdgo.Ref<stdgo.AnyInterface>):stdgo.Ref<stdgo.AnyInterface> return __self__.value._swapLocked(_i);
    @:keep
    public dynamic function _unexpungeLocked():Bool return __self__.value._unexpungeLocked();
    @:keep
    public dynamic function _tryCompareAndSwap(_old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool return __self__.value._tryCompareAndSwap(_old, _new);
    @:keep
    public dynamic function _load():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value._load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.sync.Sync_T_entry.T_entry>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}