package stdgo._internal.log.syslog;
class Writer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _write(_p:stdgo._internal.log.syslog.Syslog_priority.Priority, _msg:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._write(_p, _msg);
    @:keep
    @:tdfield
    public dynamic function _writeAndRetry(_p:stdgo._internal.log.syslog.Syslog_priority.Priority, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._writeAndRetry(_p, _s);
    @:keep
    @:tdfield
    public dynamic function debug(_m:stdgo.GoString):stdgo.Error return @:_0 __self__.value.debug(_m);
    @:keep
    @:tdfield
    public dynamic function info(_m:stdgo.GoString):stdgo.Error return @:_0 __self__.value.info(_m);
    @:keep
    @:tdfield
    public dynamic function notice(_m:stdgo.GoString):stdgo.Error return @:_0 __self__.value.notice(_m);
    @:keep
    @:tdfield
    public dynamic function warning(_m:stdgo.GoString):stdgo.Error return @:_0 __self__.value.warning(_m);
    @:keep
    @:tdfield
    public dynamic function err(_m:stdgo.GoString):stdgo.Error return @:_0 __self__.value.err(_m);
    @:keep
    @:tdfield
    public dynamic function crit(_m:stdgo.GoString):stdgo.Error return @:_0 __self__.value.crit(_m);
    @:keep
    @:tdfield
    public dynamic function alert(_m:stdgo.GoString):stdgo.Error return @:_0 __self__.value.alert(_m);
    @:keep
    @:tdfield
    public dynamic function emerg(_m:stdgo.GoString):stdgo.Error return @:_0 __self__.value.emerg(_m);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_b);
    @:keep
    @:tdfield
    public dynamic function _connect():stdgo.Error return @:_0 __self__.value._connect();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.syslog.Syslog_writerpointer.WriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
