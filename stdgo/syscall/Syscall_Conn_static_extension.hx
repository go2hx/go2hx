package stdgo.syscall;
class Conn_static_extension {
    static public function syscallConn(t:stdgo._internal.syscall.Syscall_Conn.Conn):stdgo.Tuple<RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_Conn_static_extension.Conn_static_extension.syscallConn(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
