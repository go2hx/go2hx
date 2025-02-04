package stdgo._internal.net;
class UDPConn_asInterface {
    @:keep
    @:tdfield
    public dynamic function writeMsgUDPAddrPort(_b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value.writeMsgUDPAddrPort(_b, _oob, _addr);
    @:keep
    @:tdfield
    public dynamic function writeMsgUDP(_b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value.writeMsgUDP(_b, _oob, _addr);
    @:keep
    @:tdfield
    public dynamic function writeTo(_b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeTo(_b, _addr);
    @:keep
    @:tdfield
    public dynamic function writeToUDPAddrPort(_b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeToUDPAddrPort(_b, _addr);
    @:keep
    @:tdfield
    public dynamic function writeToUDP(_b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeToUDP(_b, _addr);
    @:keep
    @:tdfield
    public dynamic function readMsgUDPAddrPort(_b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _4 : stdgo.Error; } return @:_0 __self__.value.readMsgUDPAddrPort(_b, _oob);
    @:keep
    @:tdfield
    public dynamic function readMsgUDP(_b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>; var _4 : stdgo.Error; } return @:_0 __self__.value.readMsgUDP(_b, _oob);
    @:keep
    @:tdfield
    public dynamic function readFromUDPAddrPort(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _2 : stdgo.Error; } return @:_0 __self__.value.readFromUDPAddrPort(_b);
    @:keep
    @:tdfield
    public dynamic function readFrom(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_addr.Addr; var _2 : stdgo.Error; } return @:_0 __self__.value.readFrom(_b);
    @:keep
    @:tdfield
    public dynamic function readFromUDP(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>; var _2 : stdgo.Error; } return @:_0 __self__.value.readFromUDP(_b);
    @:keep
    @:tdfield
    public dynamic function syscallConn():{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } return @:_0 __self__.value.syscallConn();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _ok():Bool return @:_0 __self__.value._ok();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setWriteDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setWriteBuffer(_0:stdgo.GoInt):stdgo.Error return @:_0 __self__.value.setWriteBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setReadDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setReadBuffer(_0:stdgo.GoInt):stdgo.Error return @:_0 __self__.value.setReadBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function remoteAddr():stdgo._internal.net.Net_addr.Addr return @:_0 __self__.value.remoteAddr();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function localAddr():stdgo._internal.net.Net_addr.Addr return @:_0 __self__.value.localAddr();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function file():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_0 __self__.value.file();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_udpconnpointer.UDPConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
