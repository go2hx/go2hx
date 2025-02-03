package stdgo.net.http.httputil;
class T_dumpConn_static_extension {
    static public function setWriteDeadline(_c:T_dumpConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>);
        return stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.setWriteDeadline(_c, _t);
    }
    static public function setReadDeadline(_c:T_dumpConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>);
        return stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.setReadDeadline(_c, _t);
    }
    static public function setDeadline(_c:T_dumpConn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>);
        return stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.setDeadline(_c, _t);
    }
    static public function remoteAddr(_c:T_dumpConn):stdgo._internal.net.Net_Addr.Addr {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>);
        return stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.remoteAddr(_c);
    }
    static public function localAddr(_c:T_dumpConn):stdgo._internal.net.Net_Addr.Addr {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>);
        return stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.localAddr(_c);
    }
    static public function close(_c:T_dumpConn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>);
        return stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.close(_c);
    }
    public static function write(__self__:stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_T_dumpConn_static_extension.T_dumpConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
