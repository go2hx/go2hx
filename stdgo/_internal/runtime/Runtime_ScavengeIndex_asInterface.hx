package stdgo._internal.runtime;
class ScavengeIndex_asInterface {
    @:keep
    public dynamic function setNoHugePage(_ci:stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx):Void __self__.value.setNoHugePage(_ci);
    @:keep
    public dynamic function setEmpty(_ci:stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx):Void __self__.value.setEmpty(_ci);
    @:keep
    public dynamic function nextGen():Void __self__.value.nextGen();
    @:keep
    public dynamic function resetSearchAddrs():Void __self__.value.resetSearchAddrs();
    @:keep
    public dynamic function freeRange(_base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):Void __self__.value.freeRange(_base, _limit);
    @:keep
    public dynamic function allocRange(_base:stdgo.GoUIntptr, _limit:stdgo.GoUIntptr):Void __self__.value.allocRange(_base, _limit);
    @:keep
    public dynamic function find(_force:Bool):{ var _0 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx; var _1 : stdgo.GoUInt; } return __self__.value.find(_force);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_ScavengeIndex.ScavengeIndex>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
