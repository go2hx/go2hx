package stdgo.log.syslog;
/**
    Package syslog provides a simple interface to the system log
    service. It can send messages to the syslog daemon using UNIX
    domain sockets, UDP or TCP.
    
    Only one call to Dial is necessary. On write failures,
    the syslog client will attempt to reconnect to the server
    and write again.
    
    The syslog package is frozen and is not accepting new features.
    Some external packages provide more functionality. See:
    
    	https://godoc.org/?q=syslog
**/
class Syslog {
    /**
        New establishes a new connection to the system log daemon. Each
        write to the returned writer sends a log message with the given
        priority (a combination of the syslog facility and severity) and
        prefix tag. If tag is empty, the os.Args[0] is used.
    **/
    static public inline function new_(_priority:Priority, _tag:String):stdgo.Tuple<Writer, stdgo.Error> {
        final _tag = (_tag : stdgo.GoString);
        return {
            final obj = stdgo._internal.log.syslog.Syslog_new_.new_(_priority, _tag);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Dial establishes a connection to a log daemon by connecting to
        address raddr on the specified network. Each write to the returned
        writer sends a log message with the facility and severity
        (from priority) and tag. If tag is empty, the os.Args[0] is used.
        If network is empty, Dial will connect to the local syslog server.
        Otherwise, see the documentation for net.Dial for valid values
        of network and raddr.
    **/
    static public inline function dial(_network:String, _raddr:String, _priority:Priority, _tag:String):stdgo.Tuple<Writer, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _raddr = (_raddr : stdgo.GoString);
        final _tag = (_tag : stdgo.GoString);
        return {
            final obj = stdgo._internal.log.syslog.Syslog_dial.dial(_network, _raddr, _priority, _tag);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewLogger creates a log.Logger whose output is written to the
        system log service with the specified priority, a combination of
        the syslog facility and severity. The logFlag argument is the flag
        set passed through to log.New to create the Logger.
    **/
    static public inline function newLogger(_p:Priority, _logFlag:StdTypes.Int):stdgo.Tuple<stdgo._internal.log.Log_Logger.Logger, stdgo.Error> {
        final _logFlag = (_logFlag : stdgo.GoInt);
        return {
            final obj = stdgo._internal.log.syslog.Syslog_newLogger.newLogger(_p, _logFlag);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
