package stdgo.log.syslog;
class T_serverConn_static_extension {
    static public function _close(t:stdgo._internal.log.syslog.Syslog_T_serverConn.T_serverConn):stdgo.Error {
        return stdgo._internal.log.syslog.Syslog_T_serverConn_static_extension.T_serverConn_static_extension._close(t);
    }
    static public function _writeString(t:stdgo._internal.log.syslog.Syslog_T_serverConn.T_serverConn, _p:Priority, _hostname:String, _tag:String, _s:String, _nl:String):stdgo.Error {
        final _hostname = (_hostname : stdgo.GoString);
        final _tag = (_tag : stdgo.GoString);
        final _s = (_s : stdgo.GoString);
        final _nl = (_nl : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_T_serverConn_static_extension.T_serverConn_static_extension._writeString(t, _p, _hostname, _tag, _s, _nl);
    }
}
