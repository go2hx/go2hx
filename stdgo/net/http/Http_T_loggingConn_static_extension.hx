package stdgo.net.http;
class T_loggingConn_static_extension {
    static public function close(_c:T_loggingConn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn>);
        return stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.close(_c);
    }
    static public function read(_c:T_loggingConn, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.read(_c, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_c:T_loggingConn, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.write(_c, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.remoteAddr(__self__);
    }
    public static function localAddr(__self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.localAddr(__self__);
    }
}
