package stdgo._internal.net;
class TCPConn_asInterface {
    @:keep
    public dynamic function multipathTCP():{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value.multipathTCP();
    @:keep
    public dynamic function setNoDelay(_noDelay:Bool):stdgo.Error return __self__.value.setNoDelay(_noDelay);
    @:keep
    public dynamic function setKeepAlivePeriod(_d:stdgo._internal.time.Time_Duration.Duration):stdgo.Error return __self__.value.setKeepAlivePeriod(_d);
    @:keep
    public dynamic function setKeepAlive(_keepalive:Bool):stdgo.Error return __self__.value.setKeepAlive(_keepalive);
    @:keep
    public dynamic function setLinger(_sec:stdgo.GoInt):stdgo.Error return __self__.value.setLinger(_sec);
    @:keep
    public dynamic function closeWrite():stdgo.Error return __self__.value.closeWrite();
    @:keep
    public dynamic function closeRead():stdgo.Error return __self__.value.closeRead();
    @:keep
    public dynamic function readFrom(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:keep
    public dynamic function syscallConn():{ var _0 : stdgo._internal.syscall.Syscall_RawConn.RawConn; var _1 : stdgo.Error; } return __self__.value.syscallConn();
    @:embedded
    public dynamic function _ok():Bool return __self__.value._ok();
    @:embedded
    public dynamic function write(_text:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_text);
    @:embedded
    public dynamic function setWriteDeadline(_t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setWriteDeadline(_t);
    @:embedded
    public dynamic function setWriteBuffer(__0:stdgo.GoInt):stdgo.Error return __self__.value.setWriteBuffer(__0);
    @:embedded
    public dynamic function setReadDeadline(_t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setReadDeadline(_t);
    @:embedded
    public dynamic function setReadBuffer(__0:stdgo.GoInt):stdgo.Error return __self__.value.setReadBuffer(__0);
    @:embedded
    public dynamic function setDeadline(_t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setDeadline(_t);
    @:embedded
    public dynamic function remoteAddr():stdgo._internal.net.Net_Addr.Addr return __self__.value.remoteAddr();
    @:embedded
    public dynamic function read(_text:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_text);
    @:embedded
    public dynamic function localAddr():stdgo._internal.net.Net_Addr.Addr return __self__.value.localAddr();
    @:embedded
    public dynamic function file():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_File.File>; var _1 : stdgo.Error; } return __self__.value.file();
    @:embedded
    public dynamic function close():stdgo.Error return __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.Net_TCPConn.TCPConn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
