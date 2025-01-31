package stdgo.internal.syscall.unix;
final uTIME_OMIT : haxe.UInt64 = stdgo._internal.internal.syscall.unix.Unix_uTIME_OMIT.uTIME_OMIT;
class Unix {
    static public inline function fcntl(_fd:StdTypes.Int, _cmd:StdTypes.Int, _arg:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _cmd = (_cmd : stdgo.GoInt);
        final _arg = (_arg : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_fcntl.fcntl(_fd, _cmd, _arg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function kernelVersion():stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_kernelVersion.kernelVersion();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function recvfromInet4(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int, _from:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        final _from = (_from : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_recvfromInet4.recvfromInet4(_fd, _p, _flags, _from);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function recvfromInet6(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int, _from:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        final _from = (_from : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_recvfromInet6.recvfromInet6(_fd, _p, _flags, _from);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function sendtoInet4(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int, _to:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        final _to = (_to : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>);
        return stdgo._internal.internal.syscall.unix.Unix_sendtoInet4.sendtoInet4(_fd, _p, _flags, _to);
    }
    static public inline function sendtoInet6(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int, _to:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Error {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        final _to = (_to : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>);
        return stdgo._internal.internal.syscall.unix.Unix_sendtoInet6.sendtoInet6(_fd, _p, _flags, _to);
    }
    static public inline function sendmsgNInet4(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _to:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4, _flags:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _to = (_to : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>);
        final _flags = (_flags : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_sendmsgNInet4.sendmsgNInet4(_fd, _p, _oob, _to, _flags);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function sendmsgNInet6(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _to:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6, _flags:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _to = (_to : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>);
        final _flags = (_flags : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_sendmsgNInet6.sendmsgNInet6(_fd, _p, _oob, _to, _flags);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function recvmsgInet4(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _flags:StdTypes.Int, _from:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        final _from = (_from : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_recvmsgInet4.recvmsgInet4(_fd, _p, _oob, _flags, _from);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public inline function recvmsgInet6(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _flags:StdTypes.Int, _from:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _flags = (_flags : stdgo.GoInt);
        final _from = (_from : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_recvmsgInet6.recvmsgInet6(_fd, _p, _oob, _flags, _from);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public inline function isNonblock(_fd:StdTypes.Int):stdgo.Tuple<Bool, stdgo.Error> {
        final _fd = (_fd : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.syscall.unix.Unix_isNonblock.isNonblock(_fd);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function hasNonblockFlag(_flag:StdTypes.Int):Bool {
        final _flag = (_flag : stdgo.GoInt);
        return stdgo._internal.internal.syscall.unix.Unix_hasNonblockFlag.hasNonblockFlag(_flag);
    }
}
