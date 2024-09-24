package stdgo.internal.syscall.unix;
final utime_OMIT : haxe.UInt64 = stdgo._internal.internal.syscall.unix.Unix_utime_OMIT.utime_OMIT;
class Unix {
    static public function fcntl(_fd:StdTypes.Int, _cmd:StdTypes.Int, _arg:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_fcntl.fcntl(_fd, _cmd, _arg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function kernelVersion():stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_kernelVersion.kernelVersion();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function recvfromInet4(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int, _from:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_recvfromInet4.recvfromInet4(_fd, _p, _flags, _from);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function recvfromInet6(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int, _from:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_recvfromInet6.recvfromInet6(_fd, _p, _flags, _from);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sendtoInet4(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int, _to:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Error {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.syscall.unix.Unix_sendtoInet4.sendtoInet4(_fd, _p, _flags, _to);
    }
    static public function sendtoInet6(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int, _to:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Error {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.syscall.unix.Unix_sendtoInet6.sendtoInet6(_fd, _p, _flags, _to);
    }
    static public function sendmsgNInet4(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _to:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4, _flags:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_sendmsgNInet4.sendmsgNInet4(_fd, _p, _oob, _to, _flags);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sendmsgNInet6(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _to:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6, _flags:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_sendmsgNInet6.sendmsgNInet6(_fd, _p, _oob, _to, _flags);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function recvmsgInet4(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _flags:StdTypes.Int, _from:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_recvmsgInet4.recvmsgInet4(_fd, _p, _oob, _flags, _from);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function recvmsgInet6(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _flags:StdTypes.Int, _from:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_recvmsgInet6.recvmsgInet6(_fd, _p, _oob, _flags, _from);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function isNonblock(_fd:StdTypes.Int):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_isNonblock.isNonblock(_fd);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function hasNonblockFlag(_flag:StdTypes.Int):Bool {
        return stdgo._internal.internal.syscall.unix.Unix_hasNonblockFlag.hasNonblockFlag(_flag);
    }
}
