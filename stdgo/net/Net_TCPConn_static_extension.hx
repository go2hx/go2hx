package stdgo.net;
class TCPConn_static_extension {
    static public function multipathTCP(_c:TCPConn):stdgo.Tuple<Bool, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>);
        return {
            final obj = stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.multipathTCP(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setNoDelay(_c:TCPConn, _noDelay:Bool):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>);
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setNoDelay(_c, _noDelay);
    }
    static public function setKeepAlivePeriod(_c:TCPConn, _d:stdgo._internal.time.Time_Duration.Duration):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>);
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setKeepAlivePeriod(_c, _d);
    }
    static public function setKeepAlive(_c:TCPConn, _keepalive:Bool):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>);
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setKeepAlive(_c, _keepalive);
    }
    static public function setLinger(_c:TCPConn, _sec:StdTypes.Int):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>);
        final _sec = (_sec : stdgo.GoInt);
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setLinger(_c, _sec);
    }
    static public function closeWrite(_c:TCPConn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>);
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.closeWrite(_c);
    }
    static public function closeRead(_c:TCPConn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>);
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.closeRead(_c);
    }
    static public function readFrom(_c:TCPConn, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>);
        return {
            final obj = stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.readFrom(_c, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function syscallConn(_c:TCPConn):stdgo.Tuple<stdgo._internal.syscall.Syscall_RawConn.RawConn, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_TCPConn.TCPConn>);
        return {
            final obj = stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.syscallConn(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _ok(__self__:stdgo._internal.net.Net_TCPConn.TCPConn):Bool {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension._ok(__self__);
    }
    public static function write(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setWriteBuffer(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setWriteBuffer(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setReadBuffer(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setReadBuffer(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.Net_TCPConn.TCPConn):Addr {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.remoteAddr(__self__);
    }
    public static function read(__self__:stdgo._internal.net.Net_TCPConn.TCPConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function localAddr(__self__:stdgo._internal.net.Net_TCPConn.TCPConn):Addr {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.localAddr(__self__);
    }
    public static function file(__self__:stdgo._internal.net.Net_TCPConn.TCPConn):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.file(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.Net_TCPConn.TCPConn):stdgo.Error {
        return stdgo._internal.net.Net_TCPConn_static_extension.TCPConn_static_extension.close(__self__);
    }
}
