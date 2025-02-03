package stdgo.log.syslog;
class T_netConn_static_extension {
    static public function _close(_n:T_netConn):stdgo.Error {
        final _n = (_n : stdgo.Ref<stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn>);
        return stdgo._internal.log.syslog.Syslog_T_netConn_static_extension.T_netConn_static_extension._close(_n);
    }
    static public function _writeString(_n:T_netConn, _p:Priority, _hostname:String, _tag:String, _msg:String, _nl:String):stdgo.Error {
        final _n = (_n : stdgo.Ref<stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn>);
        final _hostname = (_hostname : stdgo.GoString);
        final _tag = (_tag : stdgo.GoString);
        final _msg = (_msg : stdgo.GoString);
        final _nl = (_nl : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_T_netConn_static_extension.T_netConn_static_extension._writeString(_n, _p, _hostname, _tag, _msg, _nl);
    }
}
