package stdgo._internal.log.syslog;
class T_netConn_asInterface {
    @:keep
    public dynamic function _close():stdgo.Error return __self__.value._close();
    @:keep
    public dynamic function _writeString(_p:stdgo._internal.log.syslog.Syslog_Priority.Priority, _hostname:stdgo.GoString, _tag:stdgo.GoString, _msg:stdgo.GoString, _nl:stdgo.GoString):stdgo.Error return __self__.value._writeString(_p, _hostname, _tag, _msg, _nl);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}