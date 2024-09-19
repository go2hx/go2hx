package stdgo._internal.net;
class IPConn_asInterface {
    @:keep
    public dynamic function writeMsgIP(_b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_IPAddr.IPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.writeMsgIP(_b, _oob, _addr);
    @:keep
    public dynamic function writeTo(_b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.Net_Addr.Addr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeTo(_b, _addr);
    @:keep
    public dynamic function writeToIP(_b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_IPAddr.IPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeToIP(_b, _addr);
    @:keep
    public dynamic function readMsgIP(_b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Ref<stdgo._internal.net.Net_IPAddr.IPAddr>; var _4 : stdgo.Error; } return __self__.value.readMsgIP(_b, _oob);
    @:keep
    public dynamic function readFrom(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_Addr.Addr; var _2 : stdgo.Error; } return __self__.value.readFrom(_b);
    @:keep
    public dynamic function readFromIP(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.net.Net_IPAddr.IPAddr>; var _2 : stdgo.Error; } return __self__.value.readFromIP(_b);
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
    var __self__ : stdgo.Pointer<stdgo._internal.net.Net_IPConn.IPConn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
