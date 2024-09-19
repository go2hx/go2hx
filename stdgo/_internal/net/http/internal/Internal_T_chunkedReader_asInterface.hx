package stdgo._internal.net.http.internal;
class T_chunkedReader_asInterface {
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function _chunkHeaderAvailable():Bool return __self__.value._chunkHeaderAvailable();
    @:keep
    public dynamic function _beginChunk():Void __self__.value._beginChunk();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.internal.Internal_T_chunkedReader.T_chunkedReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
