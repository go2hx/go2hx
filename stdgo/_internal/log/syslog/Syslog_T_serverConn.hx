package stdgo._internal.log.syslog;
typedef T_serverConn = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function _writeString(_p:stdgo._internal.log.syslog.Syslog_Priority.Priority, _hostname:stdgo.GoString, _tag:stdgo.GoString, _s:stdgo.GoString, _nl:stdgo.GoString):stdgo.Error;
    /**
        
        
        
    **/
    public dynamic function _close():stdgo.Error;
};