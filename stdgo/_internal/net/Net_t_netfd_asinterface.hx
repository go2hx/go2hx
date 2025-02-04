package stdgo._internal.net;
class T_netFD_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _writeToInet6(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._writeToInet6(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _writeToInet4(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._writeToInet4(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _writeTo(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._writeTo(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _writeMsgInet6(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value._writeMsgInet6(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _writeMsgInet4(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value._writeMsgInet4(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _writeMsg(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value._writeMsg(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readMsgInet6(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.GoInt, _3:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:_0 __self__.value._readMsgInet6(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readMsgInet4(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.GoInt, _3:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:_0 __self__.value._readMsgInet4(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readMsg(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _4 : stdgo.Error; } return @:_0 __self__.value._readMsg(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readFromInet6(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._readFromInet6(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readFromInet4(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._readFromInet4(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readFrom(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } return @:_0 __self__.value._readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _dup():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_0 __self__.value._dup();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _connect(_0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, _2:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; } return @:_0 __self__.value._connect(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _closeWrite():stdgo.Error return @:_0 __self__.value._closeWrite();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _closeRead():stdgo.Error return @:_0 __self__.value._closeRead();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _accept():{ var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; } return @:_0 __self__.value._accept();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setWriteDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setReadDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_netfdpointer.T_netFDPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
