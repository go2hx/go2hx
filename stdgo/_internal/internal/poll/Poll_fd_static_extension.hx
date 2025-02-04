package stdgo._internal.internal.poll;
@:keep @:allow(stdgo._internal.internal.poll.Poll.FD_asInterface) class FD_static_extension {
    @:keep
    @:tdfield
    static public function seek( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "FD:internal.poll.seek is not yet implemented";
    @:keep
    @:tdfield
    static public function readDirent( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.readDirent is not yet implemented";
    @:keep
    @:tdfield
    static public function fchdir( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error throw "FD:internal.poll.fchdir is not yet implemented";
    @:keep
    @:tdfield
    static public function rawWrite( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error throw "FD:internal.poll.rawWrite is not yet implemented";
    @:keep
    @:tdfield
    static public function rawRead( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error throw "FD:internal.poll.rawRead is not yet implemented";
    @:keep
    @:tdfield
    static public function writeOnce( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.writeOnce is not yet implemented";
    @:keep
    @:tdfield
    static public function waitWrite( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error throw "FD:internal.poll.waitWrite is not yet implemented";
    @:keep
    @:tdfield
    static public function dup( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } throw "FD:internal.poll.dup is not yet implemented";
    @:keep
    @:tdfield
    static public function fstat( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _s:stdgo.Ref<stdgo._internal.syscall.Syscall_stat_t.Stat_t>):stdgo.Error throw "FD:internal.poll.fstat is not yet implemented";
    @:keep
    @:tdfield
    static public function fchmod( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _mode:stdgo.GoUInt32):stdgo.Error throw "FD:internal.poll.fchmod is not yet implemented";
    @:keep
    @:tdfield
    static public function accept( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.GoString; var _3 : stdgo.Error; } throw "FD:internal.poll.accept is not yet implemented";
    @:keep
    @:tdfield
    static public function writeMsgInet6( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } throw "FD:internal.poll.writeMsgInet6 is not yet implemented";
    @:keep
    @:tdfield
    static public function writeMsgInet4( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } throw "FD:internal.poll.writeMsgInet4 is not yet implemented";
    @:keep
    @:tdfield
    static public function writeMsg( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } throw "FD:internal.poll.writeMsg is not yet implemented";
    @:keep
    @:tdfield
    static public function writeTo( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.writeTo is not yet implemented";
    @:keep
    @:tdfield
    static public function writeToInet6( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.writeToInet6 is not yet implemented";
    @:keep
    @:tdfield
    static public function writeToInet4( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.writeToInet4 is not yet implemented";
    @:keep
    @:tdfield
    static public function pwrite( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.pwrite is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.write is not yet implemented";
    @:keep
    @:tdfield
    static public function readMsgInet6( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _sa6:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } throw "FD:internal.poll.readMsgInet6 is not yet implemented";
    @:keep
    @:tdfield
    static public function readMsgInet4( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _sa4:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } throw "FD:internal.poll.readMsgInet4 is not yet implemented";
    @:keep
    @:tdfield
    static public function readMsg( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _4 : stdgo.Error; } throw "FD:internal.poll.readMsg is not yet implemented";
    @:keep
    @:tdfield
    static public function readFromInet6( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _from:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.readFromInet6 is not yet implemented";
    @:keep
    @:tdfield
    static public function readFromInet4( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _from:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.readFromInet4 is not yet implemented";
    @:keep
    @:tdfield
    static public function readFrom( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } throw "FD:internal.poll.readFrom is not yet implemented";
    @:keep
    @:tdfield
    static public function pread( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.pread is not yet implemented";
    @:keep
    @:tdfield
    static public function read( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.read is not yet implemented";
    @:keep
    @:tdfield
    static public function setBlocking( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error throw "FD:internal.poll.setBlocking is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error throw "FD:internal.poll.close is not yet implemented";
    @:keep
    @:tdfield
    static public function _destroy( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error throw "FD:internal.poll._destroy is not yet implemented";
    @:keep
    @:tdfield
    static public function init( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _net:stdgo.GoString, _pollable:Bool):stdgo.Error throw "FD:internal.poll.init is not yet implemented";
    @:keep
    @:tdfield
    static public function rawControl( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _f:stdgo.GoUIntptr -> Void):stdgo.Error throw "FD:internal.poll.rawControl is not yet implemented";
    @:keep
    @:tdfield
    static public function ftruncate( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _size:stdgo.GoInt64):stdgo.Error throw "FD:internal.poll.ftruncate is not yet implemented";
    @:keep
    @:tdfield
    static public function fchown( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error throw "FD:internal.poll.fchown is not yet implemented";
    @:keep
    @:tdfield
    static public function shutdown( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _how:stdgo.GoInt):stdgo.Error throw "FD:internal.poll.shutdown is not yet implemented";
    @:keep
    @:tdfield
    static public function _eofError( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _n:stdgo.GoInt, _err:stdgo.Error):stdgo.Error throw "FD:internal.poll._eofError is not yet implemented";
    @:keep
    @:tdfield
    static public function setWriteDeadline( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "FD:internal.poll.setWriteDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setReadDeadline( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "FD:internal.poll.setReadDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function setDeadline( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error throw "FD:internal.poll.setDeadline is not yet implemented";
    @:keep
    @:tdfield
    static public function _writeUnlock( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):Void throw "FD:internal.poll._writeUnlock is not yet implemented";
    @:keep
    @:tdfield
    static public function _writeLock( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error throw "FD:internal.poll._writeLock is not yet implemented";
    @:keep
    @:tdfield
    static public function _readUnlock( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):Void throw "FD:internal.poll._readUnlock is not yet implemented";
    @:keep
    @:tdfield
    static public function _readLock( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error throw "FD:internal.poll._readLock is not yet implemented";
    @:keep
    @:tdfield
    static public function _decref( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error throw "FD:internal.poll._decref is not yet implemented";
    @:keep
    @:tdfield
    static public function _incref( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error throw "FD:internal.poll._incref is not yet implemented";
    @:keep
    @:tdfield
    static public function fsync( _fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error throw "FD:internal.poll.fsync is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _init( __self__:stdgo._internal.internal.poll.Poll_fd.FD):Void return @:_5 __self__._init();
}
