package stdgo.internal.poll;
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
@:structInit @:private @:using(stdgo.internal.poll.Poll.T_errNetClosing_static_extension) abstract T_errNetClosing(stdgo._internal.internal.poll.Poll.T_errNetClosing) from stdgo._internal.internal.poll.Poll.T_errNetClosing to stdgo._internal.internal.poll.Poll.T_errNetClosing {
    public function new() this = new stdgo._internal.internal.poll.Poll.T_errNetClosing();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.poll.Poll.DeadlineExceededError_static_extension) abstract DeadlineExceededError(stdgo._internal.internal.poll.Poll.DeadlineExceededError) from stdgo._internal.internal.poll.Poll.DeadlineExceededError to stdgo._internal.internal.poll.Poll.DeadlineExceededError {
    public function new() this = new stdgo._internal.internal.poll.Poll.DeadlineExceededError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.internal.poll.Poll.T_fdMutex_static_extension) abstract T_fdMutex(stdgo._internal.internal.poll.Poll.T_fdMutex) from stdgo._internal.internal.poll.Poll.T_fdMutex to stdgo._internal.internal.poll.Poll.T_fdMutex {
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
@:structInit @:private @:using(stdgo.internal.poll.Poll.T_pollDesc_static_extension) abstract T_pollDesc(stdgo._internal.internal.poll.Poll.T_pollDesc) from stdgo._internal.internal.poll.Poll.T_pollDesc to stdgo._internal.internal.poll.Poll.T_pollDesc {
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
@:structInit @:using(stdgo.internal.poll.Poll.FD_static_extension) abstract FD(stdgo._internal.internal.poll.Poll.FD) from stdgo._internal.internal.poll.Poll.FD to stdgo._internal.internal.poll.Poll.FD {
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
@:structInit @:using(stdgo.internal.poll.Poll.SysFile_static_extension) abstract SysFile(stdgo._internal.internal.poll.Poll.SysFile) from stdgo._internal.internal.poll.Poll.SysFile to stdgo._internal.internal.poll.Poll.SysFile {
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
class T_errNetClosing_static_extension {
    static public function temporary(e:T_errNetClosing):Bool {
        return stdgo._internal.internal.poll.Poll.T_errNetClosing_static_extension.temporary(e);
    }
    static public function timeout(e:T_errNetClosing):Bool {
        return stdgo._internal.internal.poll.Poll.T_errNetClosing_static_extension.timeout(e);
    }
    static public function error(e:T_errNetClosing):String {
        return stdgo._internal.internal.poll.Poll.T_errNetClosing_static_extension.error(e);
    }
}
class DeadlineExceededError_static_extension {
    static public function temporary(e:DeadlineExceededError):Bool {
        return stdgo._internal.internal.poll.Poll.DeadlineExceededError_static_extension.temporary(e);
    }
    static public function timeout(e:DeadlineExceededError):Bool {
        return stdgo._internal.internal.poll.Poll.DeadlineExceededError_static_extension.timeout(e);
    }
    static public function error(e:DeadlineExceededError):String {
        return stdgo._internal.internal.poll.Poll.DeadlineExceededError_static_extension.error(e);
    }
}
class T_fdMutex_static_extension {
    static public function _rwunlock(mu:T_fdMutex, read:Bool):Bool {
        return stdgo._internal.internal.poll.Poll.T_fdMutex_static_extension._rwunlock(mu, read);
    }
    static public function _rwlock(mu:T_fdMutex, read:Bool):Bool {
        return stdgo._internal.internal.poll.Poll.T_fdMutex_static_extension._rwlock(mu, read);
    }
    static public function _decref(mu:T_fdMutex):Bool {
        return stdgo._internal.internal.poll.Poll.T_fdMutex_static_extension._decref(mu);
    }
    static public function _increfAndClose(mu:T_fdMutex):Bool {
        return stdgo._internal.internal.poll.Poll.T_fdMutex_static_extension._increfAndClose(mu);
    }
    static public function _incref(mu:T_fdMutex):Bool {
        return stdgo._internal.internal.poll.Poll.T_fdMutex_static_extension._incref(mu);
    }
}
class T_pollDesc_static_extension {
    static public function _pollable(pd:T_pollDesc):Bool {
        return stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension._pollable(pd);
    }
    static public function _waitCanceled(pd:T_pollDesc, mode:StdTypes.Int):Void {
        stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension._waitCanceled(pd, mode);
    }
    static public function _waitWrite(pd:T_pollDesc, isFile:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension._waitWrite(pd, isFile);
    }
    static public function _waitRead(pd:T_pollDesc, isFile:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension._waitRead(pd, isFile);
    }
    static public function _wait(pd:T_pollDesc, mode:StdTypes.Int, isFile:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension._wait(pd, mode, isFile);
    }
    static public function _prepareWrite(pd:T_pollDesc, isFile:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension._prepareWrite(pd, isFile);
    }
    static public function _prepareRead(pd:T_pollDesc, isFile:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension._prepareRead(pd, isFile);
    }
    static public function _prepare(pd:T_pollDesc, mode:StdTypes.Int, isFile:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension._prepare(pd, mode, isFile);
    }
    static public function _evict(pd:T_pollDesc):Void {
        stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension._evict(pd);
    }
    static public function _close(pd:T_pollDesc):Void {
        stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension._close(pd);
    }
    static public function _init(pd:T_pollDesc, fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension._init(pd, fd);
    }
}
class FD_static_extension {
    static public function seek(fd:FD, offset:haxe.Int64, whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.seek(fd, offset, whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readDirent(fd:FD, buf:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.readDirent(fd, buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fchdir(fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.fchdir(fd);
    }
    static public function rawWrite(fd:FD, f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final f = f;
        return stdgo._internal.internal.poll.Poll.FD_static_extension.rawWrite(fd, f);
    }
    static public function rawRead(fd:FD, f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final f = f;
        return stdgo._internal.internal.poll.Poll.FD_static_extension.rawRead(fd, f);
    }
    static public function writeOnce(fd:FD, p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.writeOnce(fd, p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function waitWrite(fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.waitWrite(fd);
    }
    static public function dup(fd:FD):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.dup(fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function fstat(fd:FD, s:stdgo._internal.syscall.Syscall.Stat_t):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.fstat(fd, s);
    }
    static public function fchmod(fd:FD, mode:std.UInt):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.fchmod(fd, mode);
    }
    static public function accept(fd:FD):stdgo.Tuple.Tuple4<StdTypes.Int, stdgo._internal.syscall.Syscall.Sockaddr, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.accept(fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function writeMsgInet6(fd:FD, p:Array<StdTypes.Int>, oob:Array<StdTypes.Int>, sa:stdgo._internal.syscall.Syscall.SockaddrInet6):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        final oob = ([for (i in oob) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.writeMsgInet6(fd, p, oob, sa);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeMsgInet4(fd:FD, p:Array<StdTypes.Int>, oob:Array<StdTypes.Int>, sa:stdgo._internal.syscall.Syscall.SockaddrInet4):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        final oob = ([for (i in oob) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.writeMsgInet4(fd, p, oob, sa);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeMsg(fd:FD, p:Array<StdTypes.Int>, oob:Array<StdTypes.Int>, sa:stdgo._internal.syscall.Syscall.Sockaddr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        final oob = ([for (i in oob) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.writeMsg(fd, p, oob, sa);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeTo(fd:FD, p:Array<StdTypes.Int>, sa:stdgo._internal.syscall.Syscall.Sockaddr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.writeTo(fd, p, sa);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToInet6(fd:FD, p:Array<StdTypes.Int>, sa:stdgo._internal.syscall.Syscall.SockaddrInet6):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.writeToInet6(fd, p, sa);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToInet4(fd:FD, p:Array<StdTypes.Int>, sa:stdgo._internal.syscall.Syscall.SockaddrInet4):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.writeToInet4(fd, p, sa);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pwrite(fd:FD, p:Array<StdTypes.Int>, off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.pwrite(fd, p, off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(fd:FD, p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.write(fd, p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readMsgInet6(fd:FD, p:Array<StdTypes.Int>, oob:Array<StdTypes.Int>, flags:StdTypes.Int, sa6:stdgo._internal.syscall.Syscall.SockaddrInet6):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        final oob = ([for (i in oob) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.readMsgInet6(fd, p, oob, flags, sa6);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function readMsgInet4(fd:FD, p:Array<StdTypes.Int>, oob:Array<StdTypes.Int>, flags:StdTypes.Int, sa4:stdgo._internal.syscall.Syscall.SockaddrInet4):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        final oob = ([for (i in oob) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.readMsgInet4(fd, p, oob, flags, sa4);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function readMsg(fd:FD, p:Array<StdTypes.Int>, oob:Array<StdTypes.Int>, flags:StdTypes.Int):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo._internal.syscall.Syscall.Sockaddr, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        final oob = ([for (i in oob) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.readMsg(fd, p, oob, flags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function readFromInet6(fd:FD, p:Array<StdTypes.Int>, from:stdgo._internal.syscall.Syscall.SockaddrInet6):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.readFromInet6(fd, p, from);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFromInet4(fd:FD, p:Array<StdTypes.Int>, from:stdgo._internal.syscall.Syscall.SockaddrInet4):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.readFromInet4(fd, p, from);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(fd:FD, p:Array<StdTypes.Int>):stdgo.Tuple.Tuple3<StdTypes.Int, stdgo._internal.syscall.Syscall.Sockaddr, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.readFrom(fd, p);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function pread(fd:FD, p:Array<StdTypes.Int>, off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.pread(fd, p, off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(fd:FD, p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.internal.poll.Poll.FD_static_extension.read(fd, p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setBlocking(fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.setBlocking(fd);
    }
    static public function close(fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.close(fd);
    }
    static public function _destroy(fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension._destroy(fd);
    }
    static public function init(fd:FD, net:String, pollable:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.init(fd, net, pollable);
    }
    static public function rawControl(fd:FD, f:stdgo.GoUIntptr -> Void):stdgo.Error {
        final f = f;
        return stdgo._internal.internal.poll.Poll.FD_static_extension.rawControl(fd, f);
    }
    static public function ftruncate(fd:FD, size:haxe.Int64):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.ftruncate(fd, size);
    }
    static public function fchown(fd:FD, uid:StdTypes.Int, gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.fchown(fd, uid, gid);
    }
    static public function shutdown(fd:FD, how:StdTypes.Int):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.shutdown(fd, how);
    }
    static public function _eofError(fd:FD, n:StdTypes.Int, err:stdgo.Error):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension._eofError(fd, n, err);
    }
    static public function setWriteDeadline(fd:FD, t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.setWriteDeadline(fd, t);
    }
    static public function setReadDeadline(fd:FD, t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.setReadDeadline(fd, t);
    }
    static public function setDeadline(fd:FD, t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.setDeadline(fd, t);
    }
    static public function _writeUnlock(fd:FD):Void {
        stdgo._internal.internal.poll.Poll.FD_static_extension._writeUnlock(fd);
    }
    static public function _writeLock(fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension._writeLock(fd);
    }
    static public function _readUnlock(fd:FD):Void {
        stdgo._internal.internal.poll.Poll.FD_static_extension._readUnlock(fd);
    }
    static public function _readLock(fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension._readLock(fd);
    }
    static public function _decref(fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension._decref(fd);
    }
    static public function _incref(fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension._incref(fd);
    }
    static public function fsync(fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.FD_static_extension.fsync(fd);
    }
    public static function _init(_self__:FD) {
        stdgo._internal.internal.poll.Poll.FD_static_extension._init(_self__);
    }
}
class SysFile_static_extension {
    static public function _destroy(s:SysFile, fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.internal.poll.Poll.SysFile_static_extension._destroy(s, fd);
    }
    static public function _init(s:SysFile):Void {
        stdgo._internal.internal.poll.Poll.SysFile_static_extension._init(s);
    }
}
/**
    Package poll supports non-blocking I/O on file descriptors with polling.
    This supports I/O operations that block only a goroutine, not a thread.
    This is used by the net and os packages.
    It uses a poller built into the runtime, with support from the
    runtime scheduler.
**/
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
