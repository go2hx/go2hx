package stdgo._internal.net.http;
class ResponseController_asInterface {
    @:keep
    public dynamic function enableFullDuplex():stdgo.Error return __self__.value.enableFullDuplex();
    @:keep
    public dynamic function setWriteDeadline(_deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setWriteDeadline(_deadline);
    @:keep
    public dynamic function setReadDeadline(_deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setReadDeadline(_deadline);
    @:keep
    public dynamic function hijack():{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } return __self__.value.hijack();
    @:keep
    public dynamic function flush():stdgo.Error return __self__.value.flush();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_ResponseController.ResponseController>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
