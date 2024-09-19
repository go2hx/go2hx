package stdgo._internal.net.http;
class T_http2responseWriter_asInterface {
    @:keep
    public dynamic function push(_target:stdgo.GoString, _opts:stdgo.Ref<stdgo._internal.net.http.Http_PushOptions.PushOptions>):stdgo.Error return __self__.value.push(_target, _opts);
    @:keep
    public dynamic function _handlerDone():Void __self__.value._handlerDone();
    @:keep
    public dynamic function _write(_lenData:stdgo.GoInt, _dataB:stdgo.Slice<stdgo.GoUInt8>, _dataS:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._write(_lenData, _dataB, _dataS);
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function writeHeader(_code:stdgo.GoInt):Void __self__.value.writeHeader(_code);
    @:keep
    public dynamic function header():stdgo._internal.net.http.Http_Header.Header return __self__.value.header();
    @:keep
    public dynamic function closeNotify():stdgo.Chan<Bool> return __self__.value.closeNotify();
    @:keep
    public dynamic function flushError():stdgo.Error return __self__.value.flushError();
    @:keep
    public dynamic function flush():Void __self__.value.flush();
    @:keep
    public dynamic function setWriteDeadline(_deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setWriteDeadline(_deadline);
    @:keep
    public dynamic function setReadDeadline(_deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setReadDeadline(_deadline);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
