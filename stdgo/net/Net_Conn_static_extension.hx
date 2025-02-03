package stdgo.net;
class Conn_static_extension {
    static public function setWriteDeadline(t:stdgo._internal.net.Net_Conn.Conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.setWriteDeadline(t, _t);
    }
    static public function setReadDeadline(t:stdgo._internal.net.Net_Conn.Conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.setReadDeadline(t, _t);
    }
    static public function setDeadline(t:stdgo._internal.net.Net_Conn.Conn, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.setDeadline(t, _t);
    }
    static public function remoteAddr(t:stdgo._internal.net.Net_Conn.Conn):Addr {
        return stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.remoteAddr(t);
    }
    static public function localAddr(t:stdgo._internal.net.Net_Conn.Conn):Addr {
        return stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.localAddr(t);
    }
    static public function close(t:stdgo._internal.net.Net_Conn.Conn):stdgo.Error {
        return stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.close(t);
    }
    static public function write(t:stdgo._internal.net.Net_Conn.Conn, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.write(t, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(t:stdgo._internal.net.Net_Conn.Conn, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.Net_Conn_static_extension.Conn_static_extension.read(t, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
