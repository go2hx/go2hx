package stdgo.net.http;
class T_socksConn_static_extension {
    static public function boundAddr(_c:T_socksConn):stdgo._internal.net.Net_Addr.Addr {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_T_socksConn.T_socksConn>);
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.boundAddr(_c);
    }
    public static function write(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.remoteAddr(__self__);
    }
    public static function read(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function localAddr(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.localAddr(__self__);
    }
    public static function close(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn):stdgo.Error {
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.close(__self__);
    }
}
