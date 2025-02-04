package stdgo._internal.runtime;
class ScavengeIndex_asInterface {
    @:keep
    @:tdfield
    public dynamic function setNoHugePage(_ci:stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx):Void @:_0 __self__.value.setNoHugePage(_ci);
    @:keep
    @:tdfield
    public dynamic function setEmpty(_ci:stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx):Void @:_0 __self__.value.setEmpty(_ci);
    @:keep
    @:tdfield
    public dynamic function nextGen():Void @:_0 __self__.value.nextGen();
    @:keep
    @:tdfield
    public dynamic function resetSearchAddrs():Void @:_0 __self__.value.resetSearchAddrs();
    @:keep
    @:tdfield
    public dynamic function freeRange(_base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):Void @:_0 __self__.value.freeRange(_base, _limit);
    @:keep
    @:tdfield
    public dynamic function allocRange(_base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):Void @:_0 __self__.value.allocRange(_base, _limit);
    @:keep
    @:tdfield
    public dynamic function find(_force:Bool):{ var _0 : stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx; var _1 : stdgo.GoUInt; } return @:_0 __self__.value.find(_force);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_scavengeindexpointer.ScavengeIndexPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
