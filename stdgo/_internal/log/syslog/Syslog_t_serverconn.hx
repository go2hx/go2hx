package stdgo._internal.log.syslog;
@:interface typedef T_serverConn = stdgo.StructType & {
    @:interfacetypeffun
    function _writeString(_p:stdgo._internal.log.syslog.Syslog_priority.Priority, _hostname:stdgo.GoString, _tag:stdgo.GoString, _s:stdgo.GoString, _nl:stdgo.GoString):stdgo.Error;
    @:interfacetypeffun
    function _close():stdgo.Error;
};
