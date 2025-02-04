package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_netFD_asInterface) class T_netFD_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _writeToInet6( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__._writeToInet6(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _writeToInet4( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__._writeToInet4(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _writeTo( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__._writeTo(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _writeMsgInet6( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_5 __self__._writeMsgInet6(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _writeMsgInet4( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_5 __self__._writeMsgInet4(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _writeMsg( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_5 __self__._writeMsg(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _readMsgInet6( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.GoInt, _3:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:_5 __self__._readMsgInet6(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _readMsgInet4( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.GoInt, _3:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:_5 __self__._readMsgInet4(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _readMsg( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _4 : stdgo.Error; } return @:_5 __self__._readMsg(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _readFromInet6( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__._readFromInet6(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _readFromInet4( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__._readFromInet4(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _readFrom( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } return @:_5 __self__._readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _dup( __self__:stdgo._internal.net.Net_t_netfd.T_netFD):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_5 __self__._dup();
    @:embedded
    @:embeddededffieldsffun
    public static function _connect( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, _2:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; } return @:_5 __self__._connect(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _closeWrite( __self__:stdgo._internal.net.Net_t_netfd.T_netFD):stdgo.Error return @:_5 __self__._closeWrite();
    @:embedded
    @:embeddededffieldsffun
    public static function _closeRead( __self__:stdgo._internal.net.Net_t_netfd.T_netFD):stdgo.Error return @:_5 __self__._closeRead();
    @:embedded
    @:embeddededffieldsffun
    public static function _accept( __self__:stdgo._internal.net.Net_t_netfd.T_netFD):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; } return @:_5 __self__._accept();
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteDeadline( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadDeadline( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setDeadline( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.net.Net_t_netfd.T_netFD, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.Net_t_netfd.T_netFD):stdgo.Error return @:_5 __self__.close();
}
