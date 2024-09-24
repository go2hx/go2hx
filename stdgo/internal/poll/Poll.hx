package stdgo.internal.poll;
var errNetClosing(get, set) : T_errNetClosing;
private function get_errNetClosing():T_errNetClosing return stdgo._internal.internal.poll.Poll_errNetClosing.errNetClosing;
private function set_errNetClosing(v:T_errNetClosing):T_errNetClosing {
        stdgo._internal.internal.poll.Poll_errNetClosing.errNetClosing = v;
        return v;
    }
var errFileClosing(get, set) : stdgo.Error;
private function get_errFileClosing():stdgo.Error return stdgo._internal.internal.poll.Poll_errFileClosing.errFileClosing;
private function set_errFileClosing(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.poll.Poll_errFileClosing.errFileClosing = v;
        return v;
    }
var errNoDeadline(get, set) : stdgo.Error;
private function get_errNoDeadline():stdgo.Error return stdgo._internal.internal.poll.Poll_errNoDeadline.errNoDeadline;
private function set_errNoDeadline(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.poll.Poll_errNoDeadline.errNoDeadline = v;
        return v;
    }
var errDeadlineExceeded(get, set) : stdgo.Error;
private function get_errDeadlineExceeded():stdgo.Error return stdgo._internal.internal.poll.Poll_errDeadlineExceeded.errDeadlineExceeded;
private function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.poll.Poll_errDeadlineExceeded.errDeadlineExceeded = v;
        return v;
    }
var errNotPollable(get, set) : stdgo.Error;
private function get_errNotPollable():stdgo.Error return stdgo._internal.internal.poll.Poll_errNotPollable.errNotPollable;
private function set_errNotPollable(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.poll.Poll_errNotPollable.errNotPollable = v;
        return v;
    }
var testHookDidWritev(get, set) : stdgo.GoInt -> Void;
private function get_testHookDidWritev():stdgo.GoInt -> Void return _0 -> stdgo._internal.internal.poll.Poll_testHookDidWritev.testHookDidWritev(_0);
private function set_testHookDidWritev(v:stdgo.GoInt -> Void):stdgo.GoInt -> Void {
        stdgo._internal.internal.poll.Poll_testHookDidWritev.testHookDidWritev = v;
        return v;
    }
var closeFunc(get, set) : stdgo.GoInt -> stdgo.Error;
private function get_closeFunc():stdgo.GoInt -> stdgo.Error return _0 -> stdgo._internal.internal.poll.Poll_closeFunc.closeFunc(_0);
private function set_closeFunc(v:stdgo.GoInt -> stdgo.Error):stdgo.GoInt -> stdgo.Error {
        stdgo._internal.internal.poll.Poll_closeFunc.closeFunc = v;
        return v;
    }
var acceptFunc(get, set) : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr; var _2 : stdgo.Error; };
private function get_acceptFunc():stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr; var _2 : stdgo.Error; } return _0 -> stdgo._internal.internal.poll.Poll_acceptFunc.acceptFunc(_0);
private function set_acceptFunc(v:stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr; var _2 : stdgo.Error; }):stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr; var _2 : stdgo.Error; } {
        stdgo._internal.internal.poll.Poll_acceptFunc.acceptFunc = v;
        return v;
    }
var consume(get, set) : (stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, stdgo.GoInt64) -> Void;
private function get_consume():(stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, stdgo.GoInt64) -> Void return (_0, _1) -> stdgo._internal.internal.poll.Poll_consume.consume(_0, _1);
private function set_consume(v:(stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, stdgo.GoInt64) -> Void):(stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, stdgo.GoInt64) -> Void {
        stdgo._internal.internal.poll.Poll_consume.consume = v;
        return v;
    }
@:structInit @:using(stdgo.internal.poll.Poll.XFDMutex_static_extension) abstract XFDMutex(stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex) from stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex to stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex {
    public var _fdMutex(get, set) : T_fdMutex;
    function get__fdMutex():T_fdMutex return this._fdMutex;
    function set__fdMutex(v:T_fdMutex):T_fdMutex {
        this._fdMutex = v;
        return v;
    }
    public function new(?_fdMutex:T_fdMutex) this = new stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex(_fdMutex);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.poll.Poll.T_errNetClosing_static_extension) abstract T_errNetClosing(stdgo._internal.internal.poll.Poll_T_errNetClosing.T_errNetClosing) from stdgo._internal.internal.poll.Poll_T_errNetClosing.T_errNetClosing to stdgo._internal.internal.poll.Poll_T_errNetClosing.T_errNetClosing {
    public function new() this = new stdgo._internal.internal.poll.Poll_T_errNetClosing.T_errNetClosing();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.poll.Poll.DeadlineExceededError_static_extension) abstract DeadlineExceededError(stdgo._internal.internal.poll.Poll_DeadlineExceededError.DeadlineExceededError) from stdgo._internal.internal.poll.Poll_DeadlineExceededError.DeadlineExceededError to stdgo._internal.internal.poll.Poll_DeadlineExceededError.DeadlineExceededError {
    public function new() this = new stdgo._internal.internal.poll.Poll_DeadlineExceededError.DeadlineExceededError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.poll.Poll.T_fdMutex_static_extension) abstract T_fdMutex(stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex) from stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex to stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex {
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
    public function new(?_state:haxe.UInt64, ?_rsema:std.UInt, ?_wsema:std.UInt) this = new stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex(_state, _rsema, _wsema);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.poll.Poll.T_pollDesc_static_extension) abstract T_pollDesc(stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc) from stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc to stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc {
    public var _fd(get, set) : FD;
    function get__fd():FD return this._fd;
    function set__fd(v:FD):FD {
        this._fd = v;
        return v;
    }
    public var _closing(get, set) : Bool;
    function get__closing():Bool return this._closing;
    function set__closing(v:Bool):Bool {
        this._closing = v;
        return v;
    }
    public function new(?_fd:FD, ?_closing:Bool) this = new stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc(_fd, _closing);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.poll.Poll.FD_static_extension) abstract FD(stdgo._internal.internal.poll.Poll_FD.FD) from stdgo._internal.internal.poll.Poll_FD.FD to stdgo._internal.internal.poll.Poll_FD.FD {
    public var _fdmu(get, set) : T_fdMutex;
    function get__fdmu():T_fdMutex return this._fdmu;
    function set__fdmu(v:T_fdMutex):T_fdMutex {
        this._fdmu = v;
        return v;
    }
    public var sysfd(get, set) : StdTypes.Int;
    function get_sysfd():StdTypes.Int return this.sysfd;
    function set_sysfd(v:StdTypes.Int):StdTypes.Int {
        this.sysfd = v;
        return v;
    }
    public var sysFile(get, set) : SysFile;
    function get_sysFile():SysFile return this.sysFile;
    function set_sysFile(v:SysFile):SysFile {
        this.sysFile = v;
        return v;
    }
    public var _pd(get, set) : T_pollDesc;
    function get__pd():T_pollDesc return this._pd;
    function set__pd(v:T_pollDesc):T_pollDesc {
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
    public function new(?_fdmu:T_fdMutex, ?sysfd:StdTypes.Int, ?sysFile:SysFile, ?_pd:T_pollDesc, ?_csema:std.UInt, ?_isBlocking:std.UInt, ?isStream:Bool, ?zeroReadIsEOF:Bool, ?_isFile:Bool) this = new stdgo._internal.internal.poll.Poll_FD.FD(_fdmu, sysfd, sysFile, _pd, _csema, _isBlocking, isStream, zeroReadIsEOF, _isFile);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.poll.Poll.SysFile_static_extension) abstract SysFile(stdgo._internal.internal.poll.Poll_SysFile.SysFile) from stdgo._internal.internal.poll.Poll_SysFile.SysFile to stdgo._internal.internal.poll.Poll_SysFile.SysFile {
    public var _iovecs(get, set) : Array<stdgo._internal.syscall.Syscall_Iovec.Iovec>;
    function get__iovecs():Array<stdgo._internal.syscall.Syscall_Iovec.Iovec> return this._iovecs;
    function set__iovecs(v:Array<stdgo._internal.syscall.Syscall_Iovec.Iovec>):Array<stdgo._internal.syscall.Syscall_Iovec.Iovec> {
        this._iovecs = v;
        return v;
    }
    public function new(?_iovecs:Array<stdgo._internal.syscall.Syscall_Iovec.Iovec>) this = new stdgo._internal.internal.poll.Poll_SysFile.SysFile(_iovecs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class XFDMutex_static_extension {
    static public function rwunlock(_mu:XFDMutex, _read:Bool):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension.rwunlock(_mu, _read);
    }
    static public function rwlock(_mu:XFDMutex, _read:Bool):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension.rwlock(_mu, _read);
    }
    static public function decref(_mu:XFDMutex):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension.decref(_mu);
    }
    static public function increfAndClose(_mu:XFDMutex):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension.increfAndClose(_mu);
    }
    static public function incref(_mu:XFDMutex):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension.incref(_mu);
    }
    public static function _rwunlock(__self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex, __0:Bool):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension._rwunlock(__self__, __0);
    }
    public static function _rwlock(__self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex, __0:Bool):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension._rwlock(__self__, __0);
    }
    public static function _increfAndClose(__self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension._increfAndClose(__self__);
    }
    public static function _incref(__self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension._incref(__self__);
    }
    public static function _decref(__self__:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex):Bool {
        return stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension._decref(__self__);
    }
}
class T_errNetClosing_static_extension {
    static public function temporary(_e:T_errNetClosing):Bool {
        return stdgo._internal.internal.poll.Poll_T_errNetClosing_static_extension.T_errNetClosing_static_extension.temporary(_e);
    }
    static public function timeout(_e:T_errNetClosing):Bool {
        return stdgo._internal.internal.poll.Poll_T_errNetClosing_static_extension.T_errNetClosing_static_extension.timeout(_e);
    }
    static public function error(_e:T_errNetClosing):String {
        return stdgo._internal.internal.poll.Poll_T_errNetClosing_static_extension.T_errNetClosing_static_extension.error(_e);
    }
}
class DeadlineExceededError_static_extension {
    static public function temporary(_e:DeadlineExceededError):Bool {
        return stdgo._internal.internal.poll.Poll_DeadlineExceededError_static_extension.DeadlineExceededError_static_extension.temporary(_e);
    }
    static public function timeout(_e:DeadlineExceededError):Bool {
        return stdgo._internal.internal.poll.Poll_DeadlineExceededError_static_extension.DeadlineExceededError_static_extension.timeout(_e);
    }
    static public function error(_e:DeadlineExceededError):String {
        return stdgo._internal.internal.poll.Poll_DeadlineExceededError_static_extension.DeadlineExceededError_static_extension.error(_e);
    }
}
class T_fdMutex_static_extension {
    static public function _rwunlock(_mu:T_fdMutex, _read:Bool):Bool {
        return stdgo._internal.internal.poll.Poll_T_fdMutex_static_extension.T_fdMutex_static_extension._rwunlock(_mu, _read);
    }
    static public function _rwlock(_mu:T_fdMutex, _read:Bool):Bool {
        return stdgo._internal.internal.poll.Poll_T_fdMutex_static_extension.T_fdMutex_static_extension._rwlock(_mu, _read);
    }
    static public function _decref(_mu:T_fdMutex):Bool {
        return stdgo._internal.internal.poll.Poll_T_fdMutex_static_extension.T_fdMutex_static_extension._decref(_mu);
    }
    static public function _increfAndClose(_mu:T_fdMutex):Bool {
        return stdgo._internal.internal.poll.Poll_T_fdMutex_static_extension.T_fdMutex_static_extension._increfAndClose(_mu);
    }
    static public function _incref(_mu:T_fdMutex):Bool {
        return stdgo._internal.internal.poll.Poll_T_fdMutex_static_extension.T_fdMutex_static_extension._incref(_mu);
    }
}
class T_pollDesc_static_extension {
    static public function _pollable(_pd:T_pollDesc):Bool {
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._pollable(_pd);
    }
    static public function _waitCanceled(_pd:T_pollDesc, _mode:StdTypes.Int):Void {
        stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._waitCanceled(_pd, _mode);
    }
    static public function _waitWrite(_pd:T_pollDesc, _isFile:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._waitWrite(_pd, _isFile);
    }
    static public function _waitRead(_pd:T_pollDesc, _isFile:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._waitRead(_pd, _isFile);
    }
    static public function _wait(_pd:T_pollDesc, _mode:StdTypes.Int, _isFile:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._wait(_pd, _mode, _isFile);
    }
    static public function _prepareWrite(_pd:T_pollDesc, _isFile:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._prepareWrite(_pd, _isFile);
    }
    static public function _prepareRead(_pd:T_pollDesc, _isFile:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._prepareRead(_pd, _isFile);
    }
    static public function _prepare(_pd:T_pollDesc, _mode:StdTypes.Int, _isFile:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._prepare(_pd, _mode, _isFile);
    }
    static public function _evict(_pd:T_pollDesc):Void {
        stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._evict(_pd);
    }
    static public function _close(_pd:T_pollDesc):Void {
        stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._close(_pd);
    }
    static public function _init(_pd:T_pollDesc, _fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._init(_pd, _fd);
    }
}
class FD_static_extension {
    static public function seek(_fd:FD, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.seek(_fd, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readDirent(_fd:FD, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readDirent(_fd, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fchdir(_fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.fchdir(_fd);
    }
    static public function rawWrite(_fd:FD, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.rawWrite(_fd, _f);
    }
    static public function rawRead(_fd:FD, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.rawRead(_fd, _f);
    }
    static public function writeOnce(_fd:FD, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeOnce(_fd, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function waitWrite(_fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.waitWrite(_fd);
    }
    static public function dup(_fd:FD):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.dup(_fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function fstat(_fd:FD, _s:stdgo._internal.syscall.Syscall_Stat_t.Stat_t):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.fstat(_fd, _s);
    }
    static public function fchmod(_fd:FD, _mode:std.UInt):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.fchmod(_fd, _mode);
    }
    static public function accept(_fd:FD):stdgo.Tuple.Tuple4<StdTypes.Int, stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.accept(_fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function writeMsgInet6(_fd:FD, _p:Array<std.UInt>, _oob:Array<std.UInt>, _sa:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeMsgInet6(_fd, _p, _oob, _sa);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeMsgInet4(_fd:FD, _p:Array<std.UInt>, _oob:Array<std.UInt>, _sa:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeMsgInet4(_fd, _p, _oob, _sa);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeMsg(_fd:FD, _p:Array<std.UInt>, _oob:Array<std.UInt>, _sa:stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeMsg(_fd, _p, _oob, _sa);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeTo(_fd:FD, _p:Array<std.UInt>, _sa:stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeTo(_fd, _p, _sa);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToInet6(_fd:FD, _p:Array<std.UInt>, _sa:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeToInet6(_fd, _p, _sa);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeToInet4(_fd:FD, _p:Array<std.UInt>, _sa:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.writeToInet4(_fd, _p, _sa);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pwrite(_fd:FD, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.pwrite(_fd, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_fd:FD, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.write(_fd, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readMsgInet6(_fd:FD, _p:Array<std.UInt>, _oob:Array<std.UInt>, _flags:StdTypes.Int, _sa6:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readMsgInet6(_fd, _p, _oob, _flags, _sa6);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function readMsgInet4(_fd:FD, _p:Array<std.UInt>, _oob:Array<std.UInt>, _flags:StdTypes.Int, _sa4:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple.Tuple4<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readMsgInet4(_fd, _p, _oob, _flags, _sa4);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function readMsg(_fd:FD, _p:Array<std.UInt>, _oob:Array<std.UInt>, _flags:StdTypes.Int):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readMsg(_fd, _p, _oob, _flags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function readFromInet6(_fd:FD, _p:Array<std.UInt>, _from:stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readFromInet6(_fd, _p, _from);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFromInet4(_fd:FD, _p:Array<std.UInt>, _from:stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readFromInet4(_fd, _p, _from);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(_fd:FD, _p:Array<std.UInt>):stdgo.Tuple.Tuple3<StdTypes.Int, stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.readFrom(_fd, _p);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function pread(_fd:FD, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.pread(_fd, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_fd:FD, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.read(_fd, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setBlocking(_fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.setBlocking(_fd);
    }
    static public function close(_fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.close(_fd);
    }
    static public function _destroy(_fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._destroy(_fd);
    }
    static public function init(_fd:FD, _net:String, _pollable:Bool):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.init(_fd, _net, _pollable);
    }
    static public function rawControl(_fd:FD, _f:stdgo.GoUIntptr -> Void):stdgo.Error {
        final _f = _f;
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.rawControl(_fd, _f);
    }
    static public function ftruncate(_fd:FD, _size:haxe.Int64):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.ftruncate(_fd, _size);
    }
    static public function fchown(_fd:FD, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.fchown(_fd, _uid, _gid);
    }
    static public function shutdown(_fd:FD, _how:StdTypes.Int):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.shutdown(_fd, _how);
    }
    static public function _eofError(_fd:FD, _n:StdTypes.Int, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._eofError(_fd, _n, _err);
    }
    static public function setWriteDeadline(_fd:FD, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.setWriteDeadline(_fd, _t);
    }
    static public function setReadDeadline(_fd:FD, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.setReadDeadline(_fd, _t);
    }
    static public function setDeadline(_fd:FD, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.setDeadline(_fd, _t);
    }
    static public function _writeUnlock(_fd:FD):Void {
        stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._writeUnlock(_fd);
    }
    static public function _writeLock(_fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._writeLock(_fd);
    }
    static public function _readUnlock(_fd:FD):Void {
        stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._readUnlock(_fd);
    }
    static public function _readLock(_fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._readLock(_fd);
    }
    static public function _decref(_fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._decref(_fd);
    }
    static public function _incref(_fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._incref(_fd);
    }
    static public function fsync(_fd:FD):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension.fsync(_fd);
    }
    public static function _init(__self__:stdgo._internal.internal.poll.Poll_FD.FD) {
        stdgo._internal.internal.poll.Poll_FD_static_extension.FD_static_extension._init(__self__);
    }
}
class SysFile_static_extension {
    static public function _destroy(_s:SysFile, _fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.internal.poll.Poll_SysFile_static_extension.SysFile_static_extension._destroy(_s, _fd);
    }
    static public function _init(_s:SysFile):Void {
        stdgo._internal.internal.poll.Poll_SysFile_static_extension.SysFile_static_extension._init(_s);
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
    static public function isPollDescriptor(_fd:stdgo.GoUIntptr):Bool {
        return stdgo._internal.internal.poll.Poll_isPollDescriptor.isPollDescriptor(_fd);
    }
    /**
        DupCloseOnExec dups fd and marks it close-on-exec.
    **/
    static public function dupCloseOnExec(_fd:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.poll.Poll_dupCloseOnExec.dupCloseOnExec(_fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
