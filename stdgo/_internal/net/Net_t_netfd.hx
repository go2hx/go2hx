package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension) class T_netFD {
    @:embedded
    public var _fakeNetFD : stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = (null : stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>);
    public function new(?_fakeNetFD:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>) {
        if (_fakeNetFD != null) this._fakeNetFD = _fakeNetFD;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check32 this._fakeNetFD.close;
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD.read;
    public var setDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check32 this._fakeNetFD.setDeadline;
    public var setReadDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setReadDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check32 this._fakeNetFD.setReadDeadline;
    public var setWriteDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setWriteDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check32 this._fakeNetFD.setWriteDeadline;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD.write;
    public var _accept(get, never) : () -> { var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__accept():() -> { var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._accept;
    public var _closeRead(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__closeRead():() -> stdgo.Error return @:check32 this._fakeNetFD._closeRead;
    public var _closeWrite(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__closeWrite():() -> stdgo.Error return @:check32 this._fakeNetFD._closeWrite;
    public var _connect(get, never) : (stdgo._internal.context.Context_context.Context, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr) -> { var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__connect():(stdgo._internal.context.Context_context.Context, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr) -> { var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._connect;
    public var _dup(get, never) : () -> { var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__dup():() -> { var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._dup;
    public var _readFrom(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readFrom():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } return @:check32 this._fakeNetFD._readFrom;
    public var _readFromInet4(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readFromInet4():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._readFromInet4;
    public var _readFromInet6(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readFromInet6():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._readFromInet6;
    public var _readMsg(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _4 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readMsg():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _4 : stdgo.Error; } return @:check32 this._fakeNetFD._readMsg;
    public var _readMsgInet4(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readMsgInet4():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:check32 this._fakeNetFD._readMsgInet4;
    public var _readMsgInet6(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readMsgInet6():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:check32 this._fakeNetFD._readMsgInet6;
    public var _writeMsg(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__writeMsg():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:check32 this._fakeNetFD._writeMsg;
    public var _writeMsgInet4(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__writeMsgInet4():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:check32 this._fakeNetFD._writeMsgInet4;
    public var _writeMsgInet6(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__writeMsgInet6():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:check32 this._fakeNetFD._writeMsgInet6;
    public var _writeTo(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__writeTo():(stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._writeTo;
    public var _writeToInet4(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__writeToInet4():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._writeToInet4;
    public var _writeToInet6(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__writeToInet6():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._writeToInet6;
    public function __copy__() {
        return new T_netFD(_fakeNetFD);
    }
}
