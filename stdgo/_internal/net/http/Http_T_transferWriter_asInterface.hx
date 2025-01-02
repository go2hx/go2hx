package stdgo._internal.net.http;
class T_transferWriter_asInterface {
    @:keep
    @:tdfield
    public dynamic function _unwrapBody():stdgo._internal.io.Io_Reader.Reader return @:_0 __self__.value._unwrapBody();
    @:keep
    @:tdfield
    public dynamic function _doBodyCopy(_dst:stdgo._internal.io.Io_Writer.Writer, _src:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value._doBodyCopy(_dst, _src);
    @:keep
    @:tdfield
    public dynamic function _writeBody(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return @:_0 __self__.value._writeBody(_w);
    @:keep
    @:tdfield
    public dynamic function _writeHeader(_w:stdgo._internal.io.Io_Writer.Writer, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):stdgo.Error return @:_0 __self__.value._writeHeader(_w, _trace);
    @:keep
    @:tdfield
    public dynamic function _shouldSendContentLength():Bool return @:_0 __self__.value._shouldSendContentLength();
    @:keep
    @:tdfield
    public dynamic function _probeRequestBody():Void @:_0 __self__.value._probeRequestBody();
    @:keep
    @:tdfield
    public dynamic function _shouldSendChunkedRequestBody():Bool return @:_0 __self__.value._shouldSendChunkedRequestBody();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_transferWriterPointer.T_transferWriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
