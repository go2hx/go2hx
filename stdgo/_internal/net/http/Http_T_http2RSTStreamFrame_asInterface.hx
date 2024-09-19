package stdgo._internal.net.http;
class T_http2RSTStreamFrame_asInterface {
    @:embedded
    public dynamic function _writeDebug(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):Void __self__.value._writeDebug(_buf);
    @:embedded
    public dynamic function _invalidate():Void __self__.value._invalidate();
    @:embedded
    public dynamic function _checkValid():Void __self__.value._checkValid();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function header():stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return __self__.value.header();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
