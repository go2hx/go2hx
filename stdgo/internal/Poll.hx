package stdgo.internal;
/**
    Package poll supports non-blocking I/O on file descriptors with polling.
    This supports I/O operations that block only a goroutine, not a thread.
    This is used by the net and os packages.
    It uses a poller built into the runtime, with support from the
    runtime scheduler.
**/
private var __go2hxdoc__package : Bool;
var errNetClosing(get, set) : stdgo._internal.internal.poll.Poll.T_errNetClosing;
private function get_errNetClosing():stdgo._internal.internal.poll.Poll.T_errNetClosing return stdgo._internal.internal.poll.Poll.errNetClosing;
private function set_errNetClosing(v:stdgo._internal.internal.poll.Poll.T_errNetClosing):stdgo._internal.internal.poll.Poll.T_errNetClosing {
        stdgo._internal.internal.poll.Poll.errNetClosing = v;
        return v;
    }
var errFileClosing(get, set) : stdgo.Error;
private function get_errFileClosing():stdgo.Error return stdgo._internal.internal.poll.Poll.errFileClosing;
private function set_errFileClosing(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.poll.Poll.errFileClosing = v;
        return v;
    }
var errNoDeadline(get, set) : stdgo.Error;
private function get_errNoDeadline():stdgo.Error return stdgo._internal.internal.poll.Poll.errNoDeadline;
private function set_errNoDeadline(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.poll.Poll.errNoDeadline = v;
        return v;
    }
var errDeadlineExceeded(get, set) : stdgo.Error;
private function get_errDeadlineExceeded():stdgo.Error return stdgo._internal.internal.poll.Poll.errDeadlineExceeded;
private function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.poll.Poll.errDeadlineExceeded = v;
        return v;
    }
var errNotPollable(get, set) : stdgo.Error;
private function get_errNotPollable():stdgo.Error return stdgo._internal.internal.poll.Poll.errNotPollable;
private function set_errNotPollable(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.poll.Poll.errNotPollable = v;
        return v;
    }
var testHookDidWritev(get, set) : stdgo.GoInt -> Void;
private function get_testHookDidWritev():stdgo.GoInt -> Void return _0 -> stdgo._internal.internal.poll.Poll.testHookDidWritev(_0);
private function set_testHookDidWritev(v:stdgo.GoInt -> Void):stdgo.GoInt -> Void {
        stdgo._internal.internal.poll.Poll.testHookDidWritev = v;
        return v;
    }
var closeFunc(get, set) : stdgo.GoInt -> stdgo.Error;
private function get_closeFunc():stdgo.GoInt -> stdgo.Error return _0 -> stdgo._internal.internal.poll.Poll.closeFunc(_0);
private function set_closeFunc(v:stdgo.GoInt -> stdgo.Error):stdgo.GoInt -> stdgo.Error {
        stdgo._internal.internal.poll.Poll.closeFunc = v;
        return v;
    }
var acceptFunc(get, set) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; };
private function get_acceptFunc():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; } return _0 -> stdgo._internal.internal.poll.Poll.acceptFunc(_0);
private function set_acceptFunc(v:stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; }):stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; } {
        stdgo._internal.internal.poll.Poll.acceptFunc = v;
        return v;
    }
abstract T_errNetClosing(stdgo._internal.internal.poll.Poll.T_errNetClosing) from stdgo._internal.internal.poll.Poll.T_errNetClosing to stdgo._internal.internal.poll.Poll.T_errNetClosing {
    public function new() this = new stdgo._internal.internal.poll.Poll.T_errNetClosing();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract DeadlineExceededError(stdgo._internal.internal.poll.Poll.DeadlineExceededError) from stdgo._internal.internal.poll.Poll.DeadlineExceededError to stdgo._internal.internal.poll.Poll.DeadlineExceededError {
    public function new() this = new stdgo._internal.internal.poll.Poll.DeadlineExceededError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_fdMutex(stdgo._internal.internal.poll.Poll.T_fdMutex) from stdgo._internal.internal.poll.Poll.T_fdMutex to stdgo._internal.internal.poll.Poll.T_fdMutex {
    public var _state(get, set) : haxe.UInt64;
    function get__state():haxe.UInt64 return this._state;
    function set__state(v:haxe.UInt64):haxe.UInt64 {
        this._state = v;
        return v;
    }
    public var _rsema(get, set) : std.UInt;
    function get__rsema():std.UInt return this._rsema;
    function set__rsema(v:std.UInt):std.UInt {
        this._rsema = v;
        return v;
    }
    public var _wsema(get, set) : std.UInt;
    function get__wsema():std.UInt return this._wsema;
    function set__wsema(v:std.UInt):std.UInt {
        this._wsema = v;
        return v;
    }
    public function new(?_state:haxe.UInt64, ?_rsema:std.UInt, ?_wsema:std.UInt) this = new stdgo._internal.internal.poll.Poll.T_fdMutex(_state, _rsema, _wsema);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_pollDesc(stdgo._internal.internal.poll.Poll.T_pollDesc) from stdgo._internal.internal.poll.Poll.T_pollDesc to stdgo._internal.internal.poll.Poll.T_pollDesc {
    public var _fd(get, set) : stdgo._internal.internal.poll.Poll.FD;
    function get__fd():stdgo._internal.internal.poll.Poll.FD return this._fd;
    function set__fd(v:stdgo._internal.internal.poll.Poll.FD):stdgo._internal.internal.poll.Poll.FD {
        this._fd = v;
        return v;
    }
    public var _closing(get, set) : Bool;
    function get__closing():Bool return this._closing;
    function set__closing(v:Bool):Bool {
        this._closing = v;
        return v;
    }
    public function new(?_fd:stdgo._internal.internal.poll.Poll.FD, ?_closing:Bool) this = new stdgo._internal.internal.poll.Poll.T_pollDesc(_fd, _closing);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract FD(stdgo._internal.internal.poll.Poll.FD) from stdgo._internal.internal.poll.Poll.FD to stdgo._internal.internal.poll.Poll.FD {
    public var _fdmu(get, set) : stdgo._internal.internal.poll.Poll.T_fdMutex;
    function get__fdmu():stdgo._internal.internal.poll.Poll.T_fdMutex return this._fdmu;
    function set__fdmu(v:stdgo._internal.internal.poll.Poll.T_fdMutex):stdgo._internal.internal.poll.Poll.T_fdMutex {
        this._fdmu = v;
        return v;
    }
    public var sysfd(get, set) : StdTypes.Int;
    function get_sysfd():StdTypes.Int return this.sysfd;
    function set_sysfd(v:StdTypes.Int):StdTypes.Int {
        this.sysfd = v;
        return v;
    }
    public var sysFile(get, set) : stdgo._internal.internal.poll.Poll.SysFile;
    function get_sysFile():stdgo._internal.internal.poll.Poll.SysFile return this.sysFile;
    function set_sysFile(v:stdgo._internal.internal.poll.Poll.SysFile):stdgo._internal.internal.poll.Poll.SysFile {
        this.sysFile = v;
        return v;
    }
    public var _pd(get, set) : stdgo._internal.internal.poll.Poll.T_pollDesc;
    function get__pd():stdgo._internal.internal.poll.Poll.T_pollDesc return this._pd;
    function set__pd(v:stdgo._internal.internal.poll.Poll.T_pollDesc):stdgo._internal.internal.poll.Poll.T_pollDesc {
        this._pd = v;
        return v;
    }
    public var _csema(get, set) : std.UInt;
    function get__csema():std.UInt return this._csema;
    function set__csema(v:std.UInt):std.UInt {
        this._csema = v;
        return v;
    }
    public var _isBlocking(get, set) : std.UInt;
    function get__isBlocking():std.UInt return this._isBlocking;
    function set__isBlocking(v:std.UInt):std.UInt {
        this._isBlocking = v;
        return v;
    }
    public var isStream(get, set) : Bool;
    function get_isStream():Bool return this.isStream;
    function set_isStream(v:Bool):Bool {
        this.isStream = v;
        return v;
    }
    public var zeroReadIsEOF(get, set) : Bool;
    function get_zeroReadIsEOF():Bool return this.zeroReadIsEOF;
    function set_zeroReadIsEOF(v:Bool):Bool {
        this.zeroReadIsEOF = v;
        return v;
    }
    public var _isFile(get, set) : Bool;
    function get__isFile():Bool return this._isFile;
    function set__isFile(v:Bool):Bool {
        this._isFile = v;
        return v;
    }
    public function new(?_fdmu:stdgo._internal.internal.poll.Poll.T_fdMutex, ?sysfd:StdTypes.Int, ?sysFile:stdgo._internal.internal.poll.Poll.SysFile, ?_pd:stdgo._internal.internal.poll.Poll.T_pollDesc, ?_csema:std.UInt, ?_isBlocking:std.UInt, ?isStream:Bool, ?zeroReadIsEOF:Bool, ?_isFile:Bool) this = new stdgo._internal.internal.poll.Poll.FD(_fdmu, sysfd, sysFile, _pd, _csema, _isBlocking, isStream, zeroReadIsEOF, _isFile);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract SysFile(stdgo._internal.internal.poll.Poll.SysFile) from stdgo._internal.internal.poll.Poll.SysFile to stdgo._internal.internal.poll.Poll.SysFile {
    public var _iovecs(get, set) : Array<stdgo._internal.syscall.Syscall.Iovec>;
    function get__iovecs():Array<stdgo._internal.syscall.Syscall.Iovec> return this._iovecs;
    function set__iovecs(v:Array<stdgo._internal.syscall.Syscall.Iovec>):Array<stdgo._internal.syscall.Syscall.Iovec> {
        this._iovecs = v;
        return v;
    }
    public function new(?_iovecs:Array<stdgo._internal.syscall.Syscall.Iovec>) this = new stdgo._internal.internal.poll.Poll.SysFile(_iovecs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Poll {
    /**
        IsPollDescriptor reports whether fd is the descriptor being used by the poller.
        This is only used for testing.
    **/
    static public function isPollDescriptor(fd:stdgo.GoUIntptr):Bool {
        return stdgo._internal.internal.poll.Poll.isPollDescriptor(fd);
    }
    /**
        DupCloseOnExec dups fd and marks it close-on-exec.
    **/
    static public function dupCloseOnExec(fd:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.poll.Poll.dupCloseOnExec(fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
