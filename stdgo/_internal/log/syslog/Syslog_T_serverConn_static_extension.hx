package stdgo._internal.log.syslog;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.log.Log;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
@:keep class T_serverConn_static_extension {
    @:interfacetypeffun
    static public function _close(t:stdgo._internal.log.syslog.Syslog_T_serverConn.T_serverConn):stdgo.Error return t._close();
    @:interfacetypeffun
    static public function _writeString(t:stdgo._internal.log.syslog.Syslog_T_serverConn.T_serverConn, _p:stdgo._internal.log.syslog.Syslog_Priority.Priority, _hostname:stdgo.GoString, _tag:stdgo.GoString, _s:stdgo.GoString, _nl:stdgo.GoString):stdgo.Error return t._writeString(_p, _hostname, _tag, _s, _nl);
}
