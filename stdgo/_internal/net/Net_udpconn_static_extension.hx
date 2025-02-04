package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.UDPConn_asInterface) class UDPConn_static_extension {
    @:keep
    @:tdfield
    static public function writeMsgUDPAddrPort( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } throw "UDPConn:net.writeMsgUDPAddrPort is not yet implemented";
    @:keep
    @:tdfield
    static public function writeMsgUDP( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } throw "UDPConn:net.writeMsgUDP is not yet implemented";
    @:keep
    @:tdfield
    static public function writeTo( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "UDPConn:net.writeTo is not yet implemented";
    @:keep
    @:tdfield
    static public function writeToUDPAddrPort( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "UDPConn:net.writeToUDPAddrPort is not yet implemented";
    @:keep
    @:tdfield
    static public function writeToUDP( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "UDPConn:net.writeToUDP is not yet implemented";
    @:keep
    @:tdfield
    static public function readMsgUDPAddrPort( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _4 : stdgo.Error; } throw "UDPConn:net.readMsgUDPAddrPort is not yet implemented";
    @:keep
    @:tdfield
    static public function readMsgUDP( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>; var _4 : stdgo.Error; } throw "UDPConn:net.readMsgUDP is not yet implemented";
    @:keep
    @:tdfield
    static public function readFromUDPAddrPort( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _2 : stdgo.Error; } throw "UDPConn:net.readFromUDPAddrPort is not yet implemented";
    @:keep
    @:tdfield
    static public function readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_addr.Addr; var _2 : stdgo.Error; } throw "UDPConn:net.readFrom is not yet implemented";
    @:keep
    @:tdfield
    static public function readFromUDP( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>; var _2 : stdgo.Error; } throw "UDPConn:net.readFromUDP is not yet implemented";
    @:keep
    @:tdfield
    static public function syscallConn( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>):{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } throw "UDPConn:net.syscallConn is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _ok( __self__:stdgo._internal.net.Net_udpconn.UDPConn):Bool return @:_5 __self__._ok();
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteDeadline( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteBuffer( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setWriteBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadDeadline( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadBuffer( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setReadBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setDeadline( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function remoteAddr( __self__:stdgo._internal.net.Net_udpconn.UDPConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.remoteAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function localAddr( __self__:stdgo._internal.net.Net_udpconn.UDPConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.localAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function file( __self__:stdgo._internal.net.Net_udpconn.UDPConn):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_5 __self__.file();
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.Net_udpconn.UDPConn):stdgo.Error return @:_5 __self__.close();
}
