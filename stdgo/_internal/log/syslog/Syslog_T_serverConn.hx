package stdgo._internal.log.syslog;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.log.Log;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
@:interface typedef T_serverConn = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _writeString(_p:stdgo._internal.log.syslog.Syslog_Priority.Priority, _hostname:stdgo.GoString, _tag:stdgo.GoString, _s:stdgo.GoString, _nl:stdgo.GoString):stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _close():stdgo.Error;
};
