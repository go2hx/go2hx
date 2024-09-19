package stdgo._internal.net.http;
class T_http2MetaHeadersFrame_asInterface {
    @:keep
    public dynamic function _checkPseudos():stdgo.Error return __self__.value._checkPseudos();
    @:keep
    public dynamic function pseudoFields():stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> return __self__.value.pseudoFields();
    @:keep
    public dynamic function regularFields():stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> return __self__.value.regularFields();
    @:keep
    public dynamic function pseudoValue(_pseudo:stdgo.GoString):stdgo.GoString return __self__.value.pseudoValue(_pseudo);
    @:embedded
    public dynamic function _writeDebug(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):Void __self__.value._writeDebug(_buf);
    @:embedded
    public dynamic function _invalidate():Void __self__.value._invalidate();
    @:embedded
    public dynamic function _checkValid():Void __self__.value._checkValid();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function streamEnded():Bool return __self__.value.streamEnded();
    @:embedded
    public dynamic function headersEnded():Bool return __self__.value.headersEnded();
    @:embedded
    public dynamic function headerBlockFragment():stdgo.Slice<stdgo.GoUInt8> return __self__.value.headerBlockFragment();
    @:embedded
    public dynamic function header():stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return __self__.value.header();
    @:embedded
    public dynamic function hasPriority():Bool return __self__.value.hasPriority();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
