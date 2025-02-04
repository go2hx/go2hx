package stdgo.log.syslog;
final lOG_EMERG : Priority = stdgo._internal.log.syslog.Syslog_lOG_EMERG.lOG_EMERG;
final lOG_ALERT = stdgo._internal.log.syslog.Syslog_lOG_ALERT.lOG_ALERT;
final lOG_CRIT = stdgo._internal.log.syslog.Syslog_lOG_CRIT.lOG_CRIT;
final lOG_ERR = stdgo._internal.log.syslog.Syslog_lOG_ERR.lOG_ERR;
final lOG_WARNING = stdgo._internal.log.syslog.Syslog_lOG_WARNING.lOG_WARNING;
final lOG_NOTICE = stdgo._internal.log.syslog.Syslog_lOG_NOTICE.lOG_NOTICE;
final lOG_INFO = stdgo._internal.log.syslog.Syslog_lOG_INFO.lOG_INFO;
final lOG_DEBUG = stdgo._internal.log.syslog.Syslog_lOG_DEBUG.lOG_DEBUG;
final lOG_KERN : Priority = stdgo._internal.log.syslog.Syslog_lOG_KERN.lOG_KERN;
final lOG_USER = stdgo._internal.log.syslog.Syslog_lOG_USER.lOG_USER;
final lOG_MAIL = stdgo._internal.log.syslog.Syslog_lOG_MAIL.lOG_MAIL;
final lOG_DAEMON = stdgo._internal.log.syslog.Syslog_lOG_DAEMON.lOG_DAEMON;
final lOG_AUTH = stdgo._internal.log.syslog.Syslog_lOG_AUTH.lOG_AUTH;
final lOG_SYSLOG = stdgo._internal.log.syslog.Syslog_lOG_SYSLOG.lOG_SYSLOG;
final lOG_LPR = stdgo._internal.log.syslog.Syslog_lOG_LPR.lOG_LPR;
final lOG_NEWS = stdgo._internal.log.syslog.Syslog_lOG_NEWS.lOG_NEWS;
final lOG_UUCP = stdgo._internal.log.syslog.Syslog_lOG_UUCP.lOG_UUCP;
final lOG_CRON = stdgo._internal.log.syslog.Syslog_lOG_CRON.lOG_CRON;
final lOG_AUTHPRIV = stdgo._internal.log.syslog.Syslog_lOG_AUTHPRIV.lOG_AUTHPRIV;
final lOG_FTP = stdgo._internal.log.syslog.Syslog_lOG_FTP.lOG_FTP;
final lOG_LOCAL0 = stdgo._internal.log.syslog.Syslog_lOG_LOCAL0.lOG_LOCAL0;
final lOG_LOCAL1 = stdgo._internal.log.syslog.Syslog_lOG_LOCAL1.lOG_LOCAL1;
final lOG_LOCAL2 = stdgo._internal.log.syslog.Syslog_lOG_LOCAL2.lOG_LOCAL2;
final lOG_LOCAL3 = stdgo._internal.log.syslog.Syslog_lOG_LOCAL3.lOG_LOCAL3;
final lOG_LOCAL4 = stdgo._internal.log.syslog.Syslog_lOG_LOCAL4.lOG_LOCAL4;
final lOG_LOCAL5 = stdgo._internal.log.syslog.Syslog_lOG_LOCAL5.lOG_LOCAL5;
final lOG_LOCAL6 = stdgo._internal.log.syslog.Syslog_lOG_LOCAL6.lOG_LOCAL6;
final lOG_LOCAL7 = stdgo._internal.log.syslog.Syslog_lOG_LOCAL7.lOG_LOCAL7;
class T_serverConn_static_extension {
    static public function _close(t:stdgo._internal.log.syslog.Syslog_t_serverconn.T_serverConn):stdgo.Error {
        return stdgo._internal.log.syslog.Syslog_T_serverConn_static_extension.T_serverConn_static_extension._close(t);
    }
    static public function _writeString(t:stdgo._internal.log.syslog.Syslog_t_serverconn.T_serverConn, _p:Priority, _hostname:String, _tag:String, _s:String, _nl:String):stdgo.Error {
        final _hostname = (_hostname : stdgo.GoString);
        final _tag = (_tag : stdgo.GoString);
        final _s = (_s : stdgo.GoString);
        final _nl = (_nl : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_T_serverConn_static_extension.T_serverConn_static_extension._writeString(t, _p, _hostname, _tag, _s, _nl);
    }
}
typedef T_serverConn = stdgo._internal.log.syslog.Syslog_T_serverConn.T_serverConn;
@:structInit @:using(stdgo.log.syslog.Syslog.Writer_static_extension) abstract Writer(stdgo._internal.log.syslog.Syslog_Writer.Writer) from stdgo._internal.log.syslog.Syslog_Writer.Writer to stdgo._internal.log.syslog.Syslog_Writer.Writer {
    public var _priority(get, set) : Priority;
    function get__priority():Priority return this._priority;
    function set__priority(v:Priority):Priority {
        this._priority = v;
        return v;
    }
    public var _tag(get, set) : String;
    function get__tag():String return this._tag;
    function set__tag(v:String):String {
        this._tag = (v : stdgo.GoString);
        return v;
    }
    public var _hostname(get, set) : String;
    function get__hostname():String return this._hostname;
    function set__hostname(v:String):String {
        this._hostname = (v : stdgo.GoString);
        return v;
    }
    public var _network(get, set) : String;
    function get__network():String return this._network;
    function set__network(v:String):String {
        this._network = (v : stdgo.GoString);
        return v;
    }
    public var _raddr(get, set) : String;
    function get__raddr():String return this._raddr;
    function set__raddr(v:String):String {
        this._raddr = (v : stdgo.GoString);
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _conn(get, set) : T_serverConn;
    function get__conn():T_serverConn return this._conn;
    function set__conn(v:T_serverConn):T_serverConn {
        this._conn = v;
        return v;
    }
    public function new(?_priority:Priority, ?_tag:String, ?_hostname:String, ?_network:String, ?_raddr:String, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_conn:T_serverConn) this = new stdgo._internal.log.syslog.Syslog_Writer.Writer(_priority, (_tag : stdgo.GoString), (_hostname : stdgo.GoString), (_network : stdgo.GoString), (_raddr : stdgo.GoString), _mu, _conn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.log.syslog.Syslog.T_netConn_static_extension) abstract T_netConn(stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn) from stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn to stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn {
    public var _local(get, set) : Bool;
    function get__local():Bool return this._local;
    function set__local(v:Bool):Bool {
        this._local = v;
        return v;
    }
    public var _conn(get, set) : stdgo._internal.net.Net_conn.Conn;
    function get__conn():stdgo._internal.net.Net_conn.Conn return this._conn;
    function set__conn(v:stdgo._internal.net.Net_conn.Conn):stdgo._internal.net.Net_conn.Conn {
        this._conn = v;
        return v;
    }
    public function new(?_local:Bool, ?_conn:stdgo._internal.net.Net_conn.Conn) this = new stdgo._internal.log.syslog.Syslog_T_netConn.T_netConn(_local, _conn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Priority = stdgo._internal.log.syslog.Syslog_Priority.Priority;
typedef WriterPointer = stdgo._internal.log.syslog.Syslog_WriterPointer.WriterPointer;
class Writer_static_extension {
    static public function _write(_w:Writer, _p:Priority, _msg:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>);
        final _msg = (_msg : stdgo.GoString);
        return {
            final obj = stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension._write(_w, _p, _msg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeAndRetry(_w:Writer, _p:Priority, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension._writeAndRetry(_w, _p, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function debug(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.debug(_w, _m);
    }
    static public function info(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.info(_w, _m);
    }
    static public function notice(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.notice(_w, _m);
    }
    static public function warning(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.warning(_w, _m);
    }
    static public function err(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.err(_w, _m);
    }
    static public function crit(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.crit(_w, _m);
    }
    static public function alert(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.alert(_w, _m);
    }
    static public function emerg(_w:Writer, _m:String):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>);
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.emerg(_w, _m);
    }
    static public function close(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function write(_w:Writer, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension.write(_w, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _connect(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.log.syslog.Syslog_writer.Writer>);
        return stdgo._internal.log.syslog.Syslog_Writer_static_extension.Writer_static_extension._connect(_w);
    }
}
typedef T_netConnPointer = stdgo._internal.log.syslog.Syslog_T_netConnPointer.T_netConnPointer;
class T_netConn_static_extension {
    static public function _close(_n:T_netConn):stdgo.Error {
        final _n = (_n : stdgo.Ref<stdgo._internal.log.syslog.Syslog_t_netconn.T_netConn>);
        return stdgo._internal.log.syslog.Syslog_T_netConn_static_extension.T_netConn_static_extension._close(_n);
    }
    static public function _writeString(_n:T_netConn, _p:Priority, _hostname:String, _tag:String, _msg:String, _nl:String):stdgo.Error {
        final _n = (_n : stdgo.Ref<stdgo._internal.log.syslog.Syslog_t_netconn.T_netConn>);
        final _hostname = (_hostname : stdgo.GoString);
        final _tag = (_tag : stdgo.GoString);
        final _msg = (_msg : stdgo.GoString);
        final _nl = (_nl : stdgo.GoString);
        return stdgo._internal.log.syslog.Syslog_T_netConn_static_extension.T_netConn_static_extension._writeString(_n, _p, _hostname, _tag, _msg, _nl);
    }
}
typedef PriorityPointer = stdgo._internal.log.syslog.Syslog_PriorityPointer.PriorityPointer;
class Priority_static_extension {

}
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
    static public inline function newLogger(_p:Priority, _logFlag:StdTypes.Int):stdgo.Tuple<stdgo._internal.log.Log_logger.Logger, stdgo.Error> {
        final _logFlag = (_logFlag : stdgo.GoInt);
        return {
            final obj = stdgo._internal.log.syslog.Syslog_newLogger.newLogger(_p, _logFlag);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
