package stdgo.net;
class T_conn_static_extension {
    static public function file(_c:T_conn):stdgo.Tuple<stdgo._internal.os.Os_File.File, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_conn.T_conn>);
        return {
            final obj = stdgo._internal.net.Net_T_conn_static_extension.T_conn_static_extension.file(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setWriteBuffer(_c:T_conn, _bytes:StdTypes.Int):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_conn.T_conn>);
        final _bytes = (_bytes : stdgo.GoInt);
        return stdgo._internal.net.Net_T_conn_static_extension.T_conn_static_extension.setWriteBuffer(_c, _bytes);
    }
    static public function setReadBuffer(_c:T_conn, _bytes:StdTypes.Int):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_conn.T_conn>);
        final _bytes = (_bytes : stdgo.GoInt);
        return stdgo._internal.net.Net_T_conn_static_extension.T_conn_static_extension.setReadBuffer(_c, _bytes);
    }
    static public function setWriteDeadline(_c:T_conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_conn.T_conn>);
        return stdgo._internal.net.Net_T_conn_static_extension.T_conn_static_extension.setWriteDeadline(_c, _t);
    }
    static public function setReadDeadline(_c:T_conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_conn.T_conn>);
        return stdgo._internal.net.Net_T_conn_static_extension.T_conn_static_extension.setReadDeadline(_c, _t);
    }
    static public function setDeadline(_c:T_conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_conn.T_conn>);
        return stdgo._internal.net.Net_T_conn_static_extension.T_conn_static_extension.setDeadline(_c, _t);
    }
    static public function remoteAddr(_c:T_conn):Addr {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_conn.T_conn>);
        return stdgo._internal.net.Net_T_conn_static_extension.T_conn_static_extension.remoteAddr(_c);
    }
    static public function localAddr(_c:T_conn):Addr {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_conn.T_conn>);
        return stdgo._internal.net.Net_T_conn_static_extension.T_conn_static_extension.localAddr(_c);
    }
    static public function close(_c:T_conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_conn.T_conn>);
        return stdgo._internal.net.Net_T_conn_static_extension.T_conn_static_extension.close(_c);
    }
    static public function write(_c:T_conn, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_conn.T_conn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_T_conn_static_extension.T_conn_static_extension.write(_c, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_c:T_conn, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.Net_T_conn.T_conn>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_T_conn_static_extension.T_conn_static_extension.read(_c, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
