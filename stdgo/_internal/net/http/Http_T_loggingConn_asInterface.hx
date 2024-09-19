package stdgo._internal.net.http;
class T_loggingConn_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:embedded
    public dynamic function setWriteDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setWriteDeadline(__0);
    @:embedded
    public dynamic function setReadDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setReadDeadline(__0);
    @:embedded
    public dynamic function setDeadline(__0:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setDeadline(__0);
    @:embedded
    public dynamic function remoteAddr():stdgo._internal.net.Net_Addr.Addr return __self__.value.remoteAddr();
    @:embedded
    public dynamic function localAddr():stdgo._internal.net.Net_Addr.Addr return __self__.value.localAddr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
