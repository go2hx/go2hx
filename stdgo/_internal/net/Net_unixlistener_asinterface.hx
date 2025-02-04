package stdgo._internal.net;
class UnixListener_asInterface {
    @:keep
    @:tdfield
    public dynamic function setUnlinkOnClose(_unlink:Bool):Void @:_0 __self__.value.setUnlinkOnClose(_unlink);
    @:keep
    @:tdfield
    public dynamic function file():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_0 __self__.value.file();
    @:keep
    @:tdfield
    public dynamic function setDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setDeadline(_t);
    @:keep
    @:tdfield
    public dynamic function addr():stdgo._internal.net.Net_addr.Addr return @:_0 __self__.value.addr();
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function accept():{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value.accept();
    @:keep
    @:tdfield
    public dynamic function acceptUnix():{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>; var _1 : stdgo.Error; } return @:_0 __self__.value.acceptUnix();
    @:keep
    @:tdfield
    public dynamic function syscallConn():{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } return @:_0 __self__.value.syscallConn();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_unixlistenerpointer.UnixListenerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
