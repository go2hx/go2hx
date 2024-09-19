package stdgo._internal.net.http;
class T_http2dataBuffer_asInterface {
    @:keep
    public dynamic function _lastChunkOrAlloc(_want:stdgo.GoInt64):stdgo.Slice<stdgo.GoUInt8> return __self__.value._lastChunkOrAlloc(_want);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function _bytesFromFirstChunk():stdgo.Slice<stdgo.GoUInt8> return __self__.value._bytesFromFirstChunk();
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
