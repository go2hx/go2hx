package stdgo.log.syslog;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef T_serverConn = StructType & {
    public function _writeString(_p:Priority, _hostname:GoString, _tag:GoString, _s:GoString, _nl:GoString):Error;
    public function _close():Error;
};
@:named class Priority {
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new Priority(__t__);
}
@:structInit class Writer {
    public function _write(_p:Priority, _msg:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _nl:GoString = "";
        if (!stdgo.strings.Strings.hasSuffix(_msg, "\n")) {
            _nl = "\n";
        };
        var _err:stdgo.Error = _w.value._conn._writeString(_p, _w.value._hostname, _w.value._tag, _msg, _nl);
        if (_err != null) {
            return { _0 : ((0 : GoInt)), _1 : _err };
        };
        return { _0 : _msg.length, _1 : ((null : stdgo.Error)) };
    }
    public function _writeAndRetry(_p:Priority, _s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _pr:Priority = new Priority((new Priority(_w.value._priority.__t__ & _facilityMask)).__t__ | (new Priority(_p.__t__ & _severityMask)).__t__);
        _w.value._mu.lock();
        try {
            deferstack.unshift(() -> _w.value._mu.unlock());
            if (_w.value._conn != null) {
                {
                    var __tmp__ = _w.value._write(_pr, _s), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return { _0 : _n, _1 : _err };
                        };
                    };
                };
            };
            {
                var _err:stdgo.Error = _w.value._connect();
                if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : ((0 : GoInt)), _1 : _err };
                    };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _w.value._write(_pr, _s);
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function debug(_m:GoString):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _w.value._writeAndRetry(log_DEBUG, _m), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function info(_m:GoString):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _w.value._writeAndRetry(log_INFO, _m), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function notice(_m:GoString):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _w.value._writeAndRetry(log_NOTICE, _m), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function warning(_m:GoString):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _w.value._writeAndRetry(log_WARNING, _m), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function err(_m:GoString):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _w.value._writeAndRetry(log_ERR, _m), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function crit(_m:GoString):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _w.value._writeAndRetry(log_CRIT, _m), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function alert(_m:GoString):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _w.value._writeAndRetry(log_ALERT, _m), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function emerg(_m:GoString):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _w.value._writeAndRetry(log_EMERG, _m), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function close():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _w.value._mu.lock();
        try {
            deferstack.unshift(() -> _w.value._mu.unlock());
            if (_w.value._conn != null) {
                var _err:stdgo.Error = _w.value._conn._close();
                _w.value._conn = ((null : T_serverConn));
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _err;
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((null : stdgo.Error));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _w.value._writeAndRetry(_w.value._priority, ((_b : GoString)));
    }
    public function _connect():Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:Error = ((null : stdgo.Error));
        if (_w.value._conn != null) {
            _w.value._conn._close();
            _w.value._conn = ((null : T_serverConn));
        };
        if (_w.value._network == (("" : GoString))) {
            {
                var __tmp__ = _unixSyslog();
                _w.value._conn = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_w.value._hostname == (("" : GoString))) {
                _w.value._hostname = "localhost";
            };
        } else {
            var _c:stdgo.net.Net.Conn = ((null : stdgo.net.Net.Conn));
            {
                var __tmp__ = stdgo.net.Net.dial(_w.value._network, _w.value._raddr);
                _c = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err == null) {
                _w.value._conn = Go.pointer((({ _conn : _c, _local : _w.value._network == (("unixgram" : GoString)) || _w.value._network == (("unix" : GoString)) } : T_netConn))).value;
                if (_w.value._hostname == (("" : GoString))) {
                    _w.value._hostname = _c.localAddr().toString();
                };
            };
        };
        return _err;
    }
    public var _priority : Priority = new Priority();
    public var _tag : GoString = (("" : GoString));
    public var _hostname : GoString = (("" : GoString));
    public var _network : GoString = (("" : GoString));
    public var _raddr : GoString = (("" : GoString));
    public var _mu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _conn : T_serverConn = ((null : T_serverConn));
    public function new(?_priority:Priority, ?_tag:GoString, ?_hostname:GoString, ?_network:GoString, ?_raddr:GoString, ?_mu:stdgo.sync.Sync.Mutex, ?_conn:T_serverConn) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_priority) + " " + Go.string(_tag) + " " + Go.string(_hostname) + " " + Go.string(_network) + " " + Go.string(_raddr) + " " + Go.string(_mu) + " " + Go.string(_conn) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(_priority, _tag, _hostname, _network, _raddr, _mu, _conn);
    }
    public function __set__(__tmp__) {
        this._priority = __tmp__._priority;
        this._tag = __tmp__._tag;
        this._hostname = __tmp__._hostname;
        this._network = __tmp__._network;
        this._raddr = __tmp__._raddr;
        this._mu = __tmp__._mu;
        this._conn = __tmp__._conn;
        return this;
    }
}
@:structInit class T_netConn {
    public function _close():Error {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _n.value._conn.close();
    }
    public function _writeString(_p:Priority, _hostname:GoString, _tag:GoString, _msg:GoString, _nl:GoString):Error {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n.value._local) {
            var _timestamp:GoString = stdgo.time.Time.now().format(stdgo.time.Time.stamp);
            var __tmp__ = stdgo.fmt.Fmt.fprintf(_n.value._conn, "<%d>%s %s[%d]: %s%s", Go.toInterface(_p), Go.toInterface(_timestamp), Go.toInterface(_tag), Go.toInterface(stdgo.os.Os.getpid()), Go.toInterface(_msg), Go.toInterface(_nl)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            return _err;
        };
        var _timestamp:GoString = stdgo.time.Time.now().format(stdgo.time.Time.rfc3339);
        var __tmp__ = stdgo.fmt.Fmt.fprintf(_n.value._conn, "<%d>%s %s %s[%d]: %s%s", Go.toInterface(_p), Go.toInterface(_timestamp), Go.toInterface(_hostname), Go.toInterface(_tag), Go.toInterface(stdgo.os.Os.getpid()), Go.toInterface(_msg), Go.toInterface(_nl)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public var _local : Bool = false;
    public var _conn : stdgo.net.Net.Conn = ((null : stdgo.net.Net.Conn));
    public function new(?_local:Bool, ?_conn:stdgo.net.Net.Conn) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_local) + " " + Go.string(_conn) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_netConn(_local, _conn);
    }
    public function __set__(__tmp__) {
        this._local = __tmp__._local;
        this._conn = __tmp__._conn;
        return this;
    }
}
final _0 : Priority = (new Priority((12 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_LOCAL2 : Priority = (new Priority((18 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final _1 : Priority = (new Priority((13 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_ERR : Priority = new Priority((3 : GoUnTypedInt));
final log_LOCAL3 : Priority = (new Priority((19 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_DEBUG : Priority = new Priority((7 : GoUnTypedInt));
final _2 : Priority = (new Priority((14 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_LOCAL4 : Priority = (new Priority((20 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_CRIT : Priority = new Priority((2 : GoUnTypedInt));
final _3 : Priority = (new Priority((15 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_LOCAL5 : Priority = (new Priority((21 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_AUTHPRIV : Priority = (new Priority((10 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_USER : Priority = (new Priority((1 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_LOCAL6 : Priority = (new Priority((22 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_SYSLOG : Priority = (new Priority((5 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_LOCAL7 : Priority = (new Priority((23 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_UUCP : Priority = (new Priority((8 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_INFO : Priority = new Priority((6 : GoUnTypedInt));
final log_MAIL : Priority = (new Priority((2 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_FTP : Priority = (new Priority((11 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_AUTH : Priority = (new Priority((4 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_CRON : Priority = (new Priority((9 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_LPR : Priority = (new Priority((6 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_KERN : Priority = (new Priority((0 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_DAEMON : Priority = (new Priority((3 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_ALERT : Priority = new Priority((1 : GoUnTypedInt));
final log_NOTICE : Priority = new Priority((5 : GoUnTypedInt));
final _facilityMask : GoInt64 = ((248 : GoUnTypedInt));
final log_WARNING : Priority = new Priority((4 : GoUnTypedInt));
final _severityMask : GoInt64 = ((7 : GoUnTypedInt));
final log_EMERG : Priority = new Priority((0 : GoUnTypedInt));
final log_NEWS : Priority = (new Priority((7 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_LOCAL0 : Priority = (new Priority((16 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
final log_LOCAL1 : Priority = (new Priority((17 : GoUnTypedInt) << ((3 : GoUnTypedInt))));
/**
    // New establishes a new connection to the system log daemon. Each
    // write to the returned writer sends a log message with the given
    // priority (a combination of the syslog facility and severity) and
    // prefix tag. If tag is empty, the os.Args[0] is used.
**/
function new_(_priority:Priority, _tag:GoString):{ var _0 : Pointer<Writer>; var _1 : Error; } {
        return dial("", "", _priority, _tag);
    }
/**
    // Dial establishes a connection to a log daemon by connecting to
    // address raddr on the specified network. Each write to the returned
    // writer sends a log message with the facility and severity
    // (from priority) and tag. If tag is empty, the os.Args[0] is used.
    // If network is empty, Dial will connect to the local syslog server.
    // Otherwise, see the documentation for net.Dial for valid values
    // of network and raddr.
**/
function dial(_network:GoString, _raddr:GoString, _priority:Priority, _tag:GoString):{ var _0 : Pointer<Writer>; var _1 : Error; } {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        if (_priority.__t__ < ((0 : GoInt)) || _priority.__t__ > new Priority(log_LOCAL7.__t__ | log_DEBUG.__t__).__t__) {
            return { _0 : new Pointer<Writer>().nil(), _1 : stdgo.errors.Errors.new_("log/syslog: invalid priority") };
        };
        if (_tag == (("" : GoString))) {
            _tag = stdgo.os.Os.args[((0 : GoInt))];
        };
        try {
            var __tmp__ = stdgo.os.Os.hostname(), _hostname:GoString = __tmp__._0, _:stdgo.Error = __tmp__._1;
            var _w:Pointer<Writer> = Go.pointer((({ _priority : _priority, _tag : _tag, _hostname : _hostname, _network : _network, _raddr : _raddr, _mu : new stdgo.sync.Sync.Mutex(), _conn : ((null : T_serverConn)) } : Writer)));
            _w.value._mu.lock();
            deferstack.unshift(() -> _w.value._mu.unlock());
            var _err:stdgo.Error = _w.value._connect();
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Pointer<Writer>().nil(), _1 : _err };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _w, _1 : _err };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Pointer<Writer>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
/**
    // NewLogger creates a log.Logger whose output is written to the
    // system log service with the specified priority, a combination of
    // the syslog facility and severity. The logFlag argument is the flag
    // set passed through to log.New to create the Logger.
**/
function newLogger(_p:Priority, _logFlag:GoInt):{ var _0 : Pointer<stdgo.log.Log.Logger>; var _1 : Error; } {
        var __tmp__ = new_(_p, ""), _s:Pointer<Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<stdgo.log.Log.Logger>().nil(), _1 : _err };
        };
        return { _0 : stdgo.log.Log.new_(_s.value, "", _logFlag), _1 : ((null : stdgo.Error)) };
    }
function _unixSyslog():{ var _0 : T_serverConn; var _1 : Error; } {
        var _conn:T_serverConn = ((null : T_serverConn)), _err:Error = ((null : stdgo.Error));
        var _logTypes:Slice<GoString> = new Slice<GoString>("unixgram", "unix");
        var _logPaths:Slice<GoString> = new Slice<GoString>("/dev/log", "/var/run/syslog", "/var/run/log");
        for (_network in _logTypes) {
            for (_path in _logPaths) {
                var __tmp__ = stdgo.net.Net.dial(_network, _path), _conn:stdgo.net.Net.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    return { _0 : Go.pointer((({ _conn : _conn, _local : true } : T_netConn))).value, _1 : ((null : stdgo.Error)) };
                };
            };
        };
        return { _0 : ((null : T_serverConn)), _1 : stdgo.errors.Errors.new_("Unix syslog delivery error") };
    }
class Writer_extension_fields {
    public function _connect(__tmp__):Error return __tmp__._connect();
    public function write(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_b);
    public function close(__tmp__):Error return __tmp__.close();
    public function emerg(__tmp__, _m:GoString):Error return __tmp__.emerg(_m);
    public function alert(__tmp__, _m:GoString):Error return __tmp__.alert(_m);
    public function crit(__tmp__, _m:GoString):Error return __tmp__.crit(_m);
    public function err(__tmp__, _m:GoString):Error return __tmp__.err(_m);
    public function warning(__tmp__, _m:GoString):Error return __tmp__.warning(_m);
    public function notice(__tmp__, _m:GoString):Error return __tmp__.notice(_m);
    public function info(__tmp__, _m:GoString):Error return __tmp__.info(_m);
    public function debug(__tmp__, _m:GoString):Error return __tmp__.debug(_m);
    public function _writeAndRetry(__tmp__, _p:Priority, _s:GoString):{ var _0 : GoInt; var _1 : Error; } return __tmp__._writeAndRetry(_p, _s);
    public function _write(__tmp__, _p:Priority, _msg:GoString):{ var _0 : GoInt; var _1 : Error; } return __tmp__._write(_p, _msg);
}
class T_netConn_extension_fields {
    public function _writeString(__tmp__, _p:Priority, _hostname:GoString, _tag:GoString, _msg:GoString, _nl:GoString):Error return __tmp__._writeString(_p, _hostname, _tag, _msg, _nl);
    public function _close(__tmp__):Error return __tmp__._close();
}
