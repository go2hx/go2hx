package stdgo._internal.net.http;
class T_response_asInterface {
    @:keep
    public dynamic function closeNotify():stdgo.Chan<Bool> return __self__.value.closeNotify();
    @:keep
    public dynamic function hijack():{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } return __self__.value.hijack();
    @:keep
    public dynamic function _sendExpectationFailed():Void __self__.value._sendExpectationFailed();
    @:keep
    public dynamic function flushError():stdgo.Error return __self__.value.flushError();
    @:keep
    public dynamic function flush():Void __self__.value.flush();
    @:keep
    public dynamic function _closedRequestBodyEarly():Bool return __self__.value._closedRequestBodyEarly();
    @:keep
    public dynamic function _shouldReuseConnection():Bool return __self__.value._shouldReuseConnection();
    @:keep
    public dynamic function _finishRequest():Void __self__.value._finishRequest();
    @:keep
    public dynamic function _write(_lenData:stdgo.GoInt, _dataB:stdgo.Slice<stdgo.GoUInt8>, _dataS:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._write(_lenData, _dataB, _dataS);
    @:keep
    public dynamic function writeString(_data:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_data);
    @:keep
    public dynamic function write(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_data);
    @:keep
    public dynamic function _bodyAllowed():Bool return __self__.value._bodyAllowed();
    @:keep
    public dynamic function writeHeader(_code:stdgo.GoInt):Void __self__.value.writeHeader(_code);
    @:keep
    public dynamic function header():stdgo._internal.net.http.Http_Header.Header return __self__.value.header();
    @:keep
    public dynamic function readFrom(_src:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_src);
    @:keep
    public dynamic function _requestTooLarge():Void __self__.value._requestTooLarge();
    @:keep
    public dynamic function _declareTrailer(_k:stdgo.GoString):Void __self__.value._declareTrailer(_k);
    @:keep
    public dynamic function _finalTrailers():stdgo._internal.net.http.Http_Header.Header return __self__.value._finalTrailers();
    @:keep
    public dynamic function enableFullDuplex():stdgo.Error return __self__.value.enableFullDuplex();
    @:keep
    public dynamic function setWriteDeadline(_deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setWriteDeadline(_deadline);
    @:keep
    public dynamic function setReadDeadline(_deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setReadDeadline(_deadline);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_response.T_response>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
