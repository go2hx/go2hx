package stdgo._internal.runtime;
class T_atomicOffAddr_asInterface {
    @:keep
    @:tdfield
    public dynamic function load():{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } return @:_0 __self__.value.load();
    @:keep
    @:tdfield
    public dynamic function storeMarked(_addr:stdgo.GoUIntptr):Void @:_0 __self__.value.storeMarked(_addr);
    @:keep
    @:tdfield
    public dynamic function storeUnmark(_markedAddr:stdgo.GoUIntptr, _newAddr:stdgo.GoUIntptr):Void @:_0 __self__.value.storeUnmark(_markedAddr, _newAddr);
    @:keep
    @:tdfield
    public dynamic function storeMin(_addr:stdgo.GoUIntptr):Void @:_0 __self__.value.storeMin(_addr);
    @:keep
    @:tdfield
    public dynamic function clear():Void @:_0 __self__.value.clear();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_t_atomicoffaddrpointer.T_atomicOffAddrPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
