package stdgo._internal.net.http;
class T_http2responseWriterState_asInterface {
    @:keep
    public dynamic function _writeHeader(_code:stdgo.GoInt):Void __self__.value._writeHeader(_code);
    @:keep
    public dynamic function _promoteUndeclaredTrailers():Void __self__.value._promoteUndeclaredTrailers();
    @:keep
    public dynamic function _writeChunk(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._writeChunk(_p);
    @:keep
    public dynamic function _declareTrailer(_k:stdgo.GoString):Void __self__.value._declareTrailer(_k);
    @:keep
    public dynamic function _hasNonemptyTrailers():Bool return __self__.value._hasNonemptyTrailers();
    @:keep
    public dynamic function _hasTrailers():Bool return __self__.value._hasTrailers();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
