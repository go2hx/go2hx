package stdgo.log.syslog;
var lOG_EMERG : Priority = 0i32;
var lOG_ALERT : Priority = 1i32;
var lOG_CRIT : Priority = 2i32;
var lOG_ERR : Priority = 3i32;
var lOG_WARNING : Priority = 4i32;
var lOG_NOTICE : Priority = 5i32;
var lOG_INFO : Priority = 6i32;
var lOG_DEBUG : Priority = 7i32;
var lOG_KERN : Priority = 0i32;
var lOG_USER : Priority = 8i32;
var lOG_MAIL : Priority = 16i32;
var lOG_DAEMON : Priority = 24i32;
var lOG_AUTH : Priority = 32i32;
var lOG_SYSLOG : Priority = 40i32;
var lOG_LPR : Priority = 48i32;
var lOG_NEWS : Priority = 56i32;
var lOG_UUCP : Priority = 64i32;
var lOG_CRON : Priority = 72i32;
var lOG_AUTHPRIV : Priority = 80i32;
var lOG_FTP : Priority = 88i32;
var lOG_LOCAL0 : Priority = 128i32;
var lOG_LOCAL1 : Priority = 136i32;
var lOG_LOCAL2 : Priority = 144i32;
var lOG_LOCAL3 : Priority = 152i32;
var lOG_LOCAL4 : Priority = 160i32;
var lOG_LOCAL5 : Priority = 168i32;
var lOG_LOCAL6 : Priority = 176i32;
var lOG_LOCAL7 : Priority = 184i32;
typedef Writer = stdgo._internal.log.syslog.Syslog_writer.Writer;
typedef Priority = stdgo._internal.log.syslog.Syslog_priority.Priority;
typedef WriterPointer = stdgo._internal.log.syslog.Syslog_writerpointer.WriterPointer;
typedef PriorityPointer = stdgo._internal.log.syslog.Syslog_prioritypointer.PriorityPointer;
/**
    * Package syslog provides a simple interface to the system log
    * service. It can send messages to the syslog daemon using UNIX
    * domain sockets, UDP or TCP.
    * 
    * Only one call to Dial is necessary. On write failures,
    * the syslog client will attempt to reconnect to the server
    * and write again.
    * 
    * The syslog package is frozen and is not accepting new features.
    * Some external packages provide more functionality. See:
    * 
    * 	https://godoc.org/?q=syslog
**/
class Syslog {
    /**
        * New establishes a new connection to the system log daemon. Each
        * write to the returned writer sends a log message with the given
        * priority (a combination of the syslog facility and severity) and
        * prefix tag. If tag is empty, the os.Args[0] is used.
    **/
    static public inline function new_(_priority:Priority, _tag:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>; var _1 : stdgo.Error; } return stdgo._internal.log.syslog.Syslog_new_.new_(_priority, _tag);
    /**
        * Dial establishes a connection to a log daemon by connecting to
        * address raddr on the specified network. Each write to the returned
        * writer sends a log message with the facility and severity
        * (from priority) and tag. If tag is empty, the os.Args[0] is used.
        * If network is empty, Dial will connect to the local syslog server.
        * Otherwise, see the documentation for net.Dial for valid values
        * of network and raddr.
    **/
    static public inline function dial(_network:stdgo.GoString, _raddr:stdgo.GoString, _priority:Priority, _tag:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>; var _1 : stdgo.Error; } return stdgo._internal.log.syslog.Syslog_dial.dial(_network, _raddr, _priority, _tag);
    /**
        * NewLogger creates a log.Logger whose output is written to the
        * system log service with the specified priority, a combination of
        * the syslog facility and severity. The logFlag argument is the flag
        * set passed through to log.New to create the Logger.
    **/
    static public inline function newLogger(_p:Priority, _logFlag:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>; var _1 : stdgo.Error; } return stdgo._internal.log.syslog.Syslog_newlogger.newLogger(_p, _logFlag);
}
