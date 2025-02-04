package stdgo._internal.net.http;
class T_http2HeadersFrame_asInterface {
    @:keep
    @:tdfield
    public dynamic function hasPriority():Bool return @:_0 __self__.value.hasPriority();
    @:keep
    @:tdfield
    public dynamic function streamEnded():Bool return @:_0 __self__.value.streamEnded();
    @:keep
    @:tdfield
    public dynamic function headersEnded():Bool return @:_0 __self__.value.headersEnded();
    @:keep
    @:tdfield
    public dynamic function headerBlockFragment():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.headerBlockFragment();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _writeDebug(_0:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void @:_0 __self__.value._writeDebug(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _invalidate():Void @:_0 __self__.value._invalidate();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _checkValid():Void @:_0 __self__.value._checkValid();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function header():stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:_0 __self__.value.header();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2headersframepointer.T_http2HeadersFramePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
