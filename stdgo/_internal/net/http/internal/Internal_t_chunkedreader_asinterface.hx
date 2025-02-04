package stdgo._internal.net.http.internal;
class T_chunkedReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_b);
    @:keep
    @:tdfield
    public dynamic function _chunkHeaderAvailable():Bool return @:_0 __self__.value._chunkHeaderAvailable();
    @:keep
    @:tdfield
    public dynamic function _beginChunk():Void @:_0 __self__.value._beginChunk();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.internal.Internal_t_chunkedreaderpointer.T_chunkedReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
