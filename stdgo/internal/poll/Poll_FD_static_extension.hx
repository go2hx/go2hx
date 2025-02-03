package stdgo.internal.poll;
class FD_static_extension {
    static public function seek(_fd:FD, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.seek(_fd, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readDirent(_fd:FD, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readDirent(_fd, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fchdir(_fd:FD):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.fchdir(_fd);
    }
    static public function rawWrite(_fd:FD, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _f = _f;
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.rawWrite(_fd, _f);
    }
    static public function rawRead(_fd:FD, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _f = _f;
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.rawRead(_fd, _f);
    }
    static public function writeOnce(_fd:FD, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeOnce(_fd, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function waitWrite(_fd:FD):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.waitWrite(_fd);
    }
    static public function dup(_fd:FD):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.dup(_fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function fstat(_fd:FD, _s:stdgo._internal.syscall.Syscall_Stat_t.Stat_t):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _s = (_s : stdgo.Ref<stdgo._internal.syscall.Syscall_Stat_t.Stat_t>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.fstat(_fd, _s);
    }
    static public function fchmod(_fd:FD, _mode:std.UInt):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _mode = (_mode : stdgo.GoUInt32);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.fchmod(_fd, _mode);
    }
    static public function accept(_fd:FD):stdgo.Tuple.Tuple4<StdTypes.Int, stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr, String, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.accept(_fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function writeMsgInet6(_fd:FD, _p:Array<std.UInt>, _oob:Array<std.UInt>, _sa:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sa = (_sa : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeMsgInet6(_fd, _p, _oob, _sa);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeMsgInet4(_fd:FD, _p:Array<std.UInt>, _oob:Array<std.UInt>, _sa:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sa = (_sa : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeMsgInet4(_fd, _p, _oob, _sa);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeMsg(_fd:FD, _p:Array<std.UInt>, _oob:Array<std.UInt>, _sa:stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeMsg(_fd, _p, _oob, _sa);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeTo(_fd:FD, _p:Array<std.UInt>, _sa:stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeTo(_fd, _p, _sa);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToInet6(_fd:FD, _p:Array<std.UInt>, _sa:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sa = (_sa : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeToInet6(_fd, _p, _sa);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToInet4(_fd:FD, _p:Array<std.UInt>, _sa:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _sa = (_sa : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeToInet4(_fd, _p, _sa);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pwrite(_fd:FD, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.pwrite(_fd, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_fd:FD, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.write(_fd, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readMsgInet6(_fd:FD, _p:Array<std.UInt>, _oob:Array<std.UInt>, _flags:StdTypes.Int, _sa6:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        final _sa6 = (_sa6 : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readMsgInet6(_fd, _p, _oob, _flags, _sa6);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function readMsgInet4(_fd:FD, _p:Array<std.UInt>, _oob:Array<std.UInt>, _flags:StdTypes.Int, _sa4:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        final _sa4 = (_sa4 : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readMsgInet4(_fd, _p, _oob, _flags, _sa4);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function readMsg(_fd:FD, _p:Array<std.UInt>, _oob:Array<std.UInt>, _flags:StdTypes.Int):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readMsg(_fd, _p, _oob, _flags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function readFromInet6(_fd:FD, _p:Array<std.UInt>, _from:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _from = (_from : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readFromInet6(_fd, _p, _from);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFromInet4(_fd:FD, _p:Array<std.UInt>, _from:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _from = (_from : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readFromInet4(_fd, _p, _from);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(_fd:FD, _p:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readFrom(_fd, _p);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function pread(_fd:FD, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.pread(_fd, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_fd:FD, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.read(_fd, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setBlocking(_fd:FD):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.setBlocking(_fd);
    }
    static public function close(_fd:FD):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.close(_fd);
    }
    static public function _destroy(_fd:FD):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._destroy(_fd);
    }
    static public function init(_fd:FD, _net:String, _pollable:Bool):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _net = (_net : stdgo.GoString);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.init(_fd, _net, _pollable);
    }
    static public function rawControl(_fd:FD, _f:stdgo.GoUIntptr -> Void):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _f = _f;
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.rawControl(_fd, _f);
    }
    static public function ftruncate(_fd:FD, _size:haxe.Int64):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _size = (_size : stdgo.GoInt64);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.ftruncate(_fd, _size);
    }
    static public function fchown(_fd:FD, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _uid = (_uid : stdgo.GoInt);
        final _gid = (_gid : stdgo.GoInt);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.fchown(_fd, _uid, _gid);
    }
    static public function shutdown(_fd:FD, _how:StdTypes.Int):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _how = (_how : stdgo.GoInt);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.shutdown(_fd, _how);
    }
    static public function _eofError(_fd:FD, _n:StdTypes.Int, _err:stdgo.Error):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        final _n = (_n : stdgo.GoInt);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._eofError(_fd, _n, _err);
    }
    static public function setWriteDeadline(_fd:FD, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.setWriteDeadline(_fd, _t);
    }
    static public function setReadDeadline(_fd:FD, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.setReadDeadline(_fd, _t);
    }
    static public function setDeadline(_fd:FD, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.setDeadline(_fd, _t);
    }
    static public function _writeUnlock(_fd:FD):Void {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._writeUnlock(_fd);
    }
    static public function _writeLock(_fd:FD):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._writeLock(_fd);
    }
    static public function _readUnlock(_fd:FD):Void {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._readUnlock(_fd);
    }
    static public function _readLock(_fd:FD):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._readLock(_fd);
    }
    static public function _decref(_fd:FD):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._decref(_fd);
    }
    static public function _incref(_fd:FD):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._incref(_fd);
    }
    static public function fsync(_fd:FD):stdgo.Error {
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.fsync(_fd);
    }
    public static function _init(__self__:stdgo._internal.internal.poll.Poll_FD.FD):Void {
        stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._init(__self__);
    }
}
