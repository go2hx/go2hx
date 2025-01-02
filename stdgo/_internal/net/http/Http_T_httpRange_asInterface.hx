package stdgo._internal.net.http;
class T_httpRange_asInterface {
    @:keep
    @:tdfield
    public dynamic function _mimeHeader(_contentType:stdgo.GoString, _size:stdgo.GoInt64):stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader return @:_0 __self__.value._mimeHeader(_contentType, _size);
    @:keep
    @:tdfield
    public dynamic function _contentRange(_size:stdgo.GoInt64):stdgo.GoString return @:_0 __self__.value._contentRange(_size);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_httpRangePointer.T_httpRangePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
