package stdgo._internal.internal.poll;
class FD_asInterface {
    @:keep
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function readDirent(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readDirent(_buf);
    @:keep
    public dynamic function fchdir():stdgo.Error return __self__.value.fchdir();
    @:keep
    public dynamic function rawWrite(_f:stdgo.GoUIntptr -> Bool):stdgo.Error return __self__.value.rawWrite(_f);
    @:keep
    public dynamic function rawRead(_f:stdgo.GoUIntptr -> Bool):stdgo.Error return __self__.value.rawRead(_f);
    @:keep
    public dynamic function writeOnce(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeOnce(_p);
    @:keep
    public dynamic function waitWrite():stdgo.Error return __self__.value.waitWrite();
    @:keep
    public dynamic function dup():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value.dup();
    @:keep
    public dynamic function fstat(_s:stdgo.Ref<stdgo._internal.syscall.Syscall_Stat_t.Stat_t>):stdgo.Error return __self__.value.fstat(_s);
    @:keep
    public dynamic function fchmod(_mode:stdgo.GoUInt32):stdgo.Error return __self__.value.fchmod(_mode);
    @:keep
    public dynamic function accept():{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr; var _2 : stdgo.GoString; var _3 : stdgo.Error; } return __self__.value.accept();
    @:keep
    public dynamic function writeMsgInet6(_p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.writeMsgInet6(_p, _oob, _sa);
    @:keep
    public dynamic function writeMsgInet4(_p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.writeMsgInet4(_p, _oob, _sa);
    @:keep
    public dynamic function writeMsg(_p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.writeMsg(_p, _oob, _sa);
    @:keep
    public dynamic function writeTo(_p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeTo(_p, _sa);
    @:keep
    public dynamic function writeToInet6(_p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeToInet6(_p, _sa);
    @:keep
    public dynamic function writeToInet4(_p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeToInet4(_p, _sa);
    @:keep
    public dynamic function pwrite(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.pwrite(_p, _off);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function readMsgInet6(_p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _sa6:stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return __self__.value.readMsgInet6(_p, _oob, _flags, _sa6);
    @:keep
    public dynamic function readMsgInet4(_p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _sa4:stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return __self__.value.readMsgInet4(_p, _oob, _flags, _sa4);
    @:keep
    public dynamic function readMsg(_p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr; var _4 : stdgo.Error; } return __self__.value.readMsg(_p, _oob, _flags);
    @:keep
    public dynamic function readFromInet6(_p:stdgo.Slice<stdgo.GoUInt8>, _from:stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readFromInet6(_p, _from);
    @:keep
    public dynamic function readFromInet4(_p:stdgo.Slice<stdgo.GoUInt8>, _from:stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readFromInet4(_p, _from);
    @:keep
    public dynamic function readFrom(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr; var _2 : stdgo.Error; } return __self__.value.readFrom(_p);
    @:keep
    public dynamic function pread(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.pread(_p, _off);
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:keep
    public dynamic function setBlocking():stdgo.Error return __self__.value.setBlocking();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function _destroy():stdgo.Error return __self__.value._destroy();
    @:keep
    public dynamic function init(_net:stdgo.GoString, _pollable:Bool):stdgo.Error return __self__.value.init(_net, _pollable);
    @:keep
    public dynamic function rawControl(_f:stdgo.GoUIntptr -> Void):stdgo.Error return __self__.value.rawControl(_f);
    @:keep
    public dynamic function ftruncate(_size:stdgo.GoInt64):stdgo.Error return __self__.value.ftruncate(_size);
    @:keep
    public dynamic function fchown(_uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return __self__.value.fchown(_uid, _gid);
    @:keep
    public dynamic function shutdown(_how:stdgo.GoInt):stdgo.Error return __self__.value.shutdown(_how);
    @:keep
    public dynamic function _eofError(_n:stdgo.GoInt, _err:stdgo.Error):stdgo.Error return __self__.value._eofError(_n, _err);
    @:keep
    public dynamic function setWriteDeadline(_t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setWriteDeadline(_t);
    @:keep
    public dynamic function setReadDeadline(_t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setReadDeadline(_t);
    @:keep
    public dynamic function setDeadline(_t:stdgo._internal.time.Time_Time.Time):stdgo.Error return __self__.value.setDeadline(_t);
    @:keep
    public dynamic function _writeUnlock():Void __self__.value._writeUnlock();
    @:keep
    public dynamic function _writeLock():stdgo.Error return __self__.value._writeLock();
    @:keep
    public dynamic function _readUnlock():Void __self__.value._readUnlock();
    @:keep
    public dynamic function _readLock():stdgo.Error return __self__.value._readLock();
    @:keep
    public dynamic function _decref():stdgo.Error return __self__.value._decref();
    @:keep
    public dynamic function _incref():stdgo.Error return __self__.value._incref();
    @:keep
    public dynamic function fsync():stdgo.Error return __self__.value.fsync();
    @:embedded
    public dynamic function _init():Void __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.poll.Poll_FD.FD>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
