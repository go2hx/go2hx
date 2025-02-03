package stdgo.net;
class IPConn_static_extension {
    static public function writeMsgIP(_c:IPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>, _addr:IPAddr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _addr = (_addr : stdgo.Ref<stdgo._internal.net.Net_IPAddr.IPAddr>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.writeMsgIP(_c, _b, _oob, _addr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeTo(_c:IPConn, _b:Array<std.UInt>, _addr:Addr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.writeTo(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToIP(_c:IPConn, _b:Array<std.UInt>, _addr:IPAddr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _addr = (_addr : stdgo.Ref<stdgo._internal.net.Net_IPAddr.IPAddr>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.writeToIP(_c, _b, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readMsgIP(_c:IPConn, _b:Array<std.UInt>, _oob:Array<std.UInt>):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, IPAddr, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.readMsgIP(_c, _b, _oob);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function readFrom(_c:IPConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, Addr, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.readFrom(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readFromIP(_c:IPConn, _b:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, IPAddr, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.readFromIP(_c, _b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function syscallConn(_c:IPConn):stdgo.Tuple<stdgo._internal.syscall.Syscall_RawConn.RawConn, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_IPConn.IPConn>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.syscallConn(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _ok(__self__:stdgo._internal.net.Net_IPConn.IPConn):Bool {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension._ok(__self__);
    }
    public static function write(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setWriteBuffer(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.setWriteBuffer(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setReadBuffer(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.setReadBuffer(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.Net_IPConn.IPConn):Addr {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.remoteAddr(__self__);
    }
    public static function read(__self__:stdgo._internal.net.Net_IPConn.IPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function localAddr(__self__:stdgo._internal.net.Net_IPConn.IPConn):Addr {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.localAddr(__self__);
    }
    public static function file(__self__:stdgo._internal.net.Net_IPConn.IPConn):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.file(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.Net_IPConn.IPConn):stdgo.Error {
        return stdgo._internal.net.Net_IPConn_static_extension.IPConn_static_extension.close(__self__);
    }
}
