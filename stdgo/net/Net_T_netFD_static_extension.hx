package stdgo.net;
class T_netFD_static_extension {
    public static function _writeToInet6(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>, _1:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._writeToInet6(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _writeToInet4(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>, _1:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._writeToInet4(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _writeTo(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>, _1:stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._writeTo(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _writeMsgInet6(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._writeMsgInet6(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _writeMsgInet4(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._writeMsgInet4(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _writeMsg(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._writeMsg(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _readMsgInet6(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:StdTypes.Int, _3:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _2 = (_2 : stdgo.GoInt);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._readMsgInet6(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    public static function _readMsgInet4(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:StdTypes.Int, _3:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _2 = (_2 : stdgo.GoInt);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._readMsgInet4(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    public static function _readMsg(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>, _1:Array<std.UInt>, _2:StdTypes.Int):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _2 = (_2 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._readMsg(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    public static function _readFromInet6(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>, _1:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6>);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._readFromInet6(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _readFromInet4(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>, _1:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4>);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._readFromInet4(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _readFrom(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._readFrom(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _dup(__self__:stdgo._internal.net.Net_T_netFD.T_netFD):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._dup(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _connect(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr, _2:stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr):stdgo.Tuple<stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._connect(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _closeWrite(__self__:stdgo._internal.net.Net_T_netFD.T_netFD):stdgo.Error {
        return stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._closeWrite(__self__);
    }
    public static function _closeRead(__self__:stdgo._internal.net.Net_T_netFD.T_netFD):stdgo.Error {
        return stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._closeRead(__self__);
    }
    public static function _accept(__self__:stdgo._internal.net.Net_T_netFD.T_netFD):stdgo.Tuple<T_netFD, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension._accept(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function write(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension.setDeadline(__self__, _0);
    }
    public static function read(__self__:stdgo._internal.net.Net_T_netFD.T_netFD, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.Net_T_netFD.T_netFD):stdgo.Error {
        return stdgo._internal.net.Net_T_netFD_static_extension.T_netFD_static_extension.close(__self__);
    }
}
