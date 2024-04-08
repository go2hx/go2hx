package stdgo._internal.internal.poll;
private var __go2hxdoc__package : Bool;
final _mutexClosed : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _mutexRLock : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _mutexWLock : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _mutexRef : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _mutexRefMask : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _mutexRWait : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _mutexRMask : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _mutexWWait : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _mutexWMask : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _overflowMsg : stdgo.GoString = ("" : stdgo.GoString);
final _maxRW : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _dupCloexecUnsupported : stdgo._internal.sync.atomic_.Atomic_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic_.Bool_);
var errNetClosing : stdgo._internal.internal.poll.Poll.T_errNetClosing = ({} : stdgo._internal.internal.poll.Poll.T_errNetClosing);
var errFileClosing : stdgo.Error = (null : stdgo.Error);
var errNoDeadline : stdgo.Error = (null : stdgo.Error);
var errDeadlineExceeded : stdgo.Error = (null : stdgo.Error);
var errNotPollable : stdgo.Error = (null : stdgo.Error);
var testHookDidWritev : stdgo.GoInt -> Void = null;
var closeFunc : stdgo.GoInt -> stdgo.Error = null;
var acceptFunc : stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; } = null;
@:structInit @:private @:using(stdgo._internal.internal.poll.Poll.T_errNetClosing_static_extension) class T_errNetClosing {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errNetClosing();
    }
}
@:structInit @:using(stdgo._internal.internal.poll.Poll.DeadlineExceededError_static_extension) class DeadlineExceededError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DeadlineExceededError();
    }
}
@:structInit @:private @:using(stdgo._internal.internal.poll.Poll.T_fdMutex_static_extension) class T_fdMutex {
    public var _state : stdgo.GoUInt64 = 0;
    public var _rsema : stdgo.GoUInt32 = 0;
    public var _wsema : stdgo.GoUInt32 = 0;
    public function new(?_state:stdgo.GoUInt64, ?_rsema:stdgo.GoUInt32, ?_wsema:stdgo.GoUInt32) {
        if (_state != null) this._state = _state;
        if (_rsema != null) this._rsema = _rsema;
        if (_wsema != null) this._wsema = _wsema;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fdMutex(_state, _rsema, _wsema);
    }
}
@:structInit @:private @:using(stdgo._internal.internal.poll.Poll.T_pollDesc_static_extension) class T_pollDesc {
    public var _fd : stdgo.Ref<stdgo._internal.internal.poll.Poll.FD> = (null : stdgo.Ref<stdgo._internal.internal.poll.Poll.FD>);
    public var _closing : Bool = false;
    public function new(?_fd:stdgo.Ref<stdgo._internal.internal.poll.Poll.FD>, ?_closing:Bool) {
        if (_fd != null) this._fd = _fd;
        if (_closing != null) this._closing = _closing;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pollDesc(_fd, _closing);
    }
}
@:structInit @:using(stdgo._internal.internal.poll.Poll.FD_static_extension) class FD {
    public var _fdmu : stdgo._internal.internal.poll.Poll.T_fdMutex = ({} : stdgo._internal.internal.poll.Poll.T_fdMutex);
    public var sysfd : stdgo.GoInt = 0;
    @:embedded
    public var sysFile : stdgo._internal.internal.poll.Poll.SysFile = ({} : stdgo._internal.internal.poll.Poll.SysFile);
    public var _pd : stdgo._internal.internal.poll.Poll.T_pollDesc = ({} : stdgo._internal.internal.poll.Poll.T_pollDesc);
    public var _csema : stdgo.GoUInt32 = 0;
    public var _isBlocking : stdgo.GoUInt32 = 0;
    public var isStream : Bool = false;
    public var zeroReadIsEOF : Bool = false;
    public var _isFile : Bool = false;
    public function new(?_fdmu:stdgo._internal.internal.poll.Poll.T_fdMutex, ?sysfd:stdgo.GoInt, ?sysFile:stdgo._internal.internal.poll.Poll.SysFile, ?_pd:stdgo._internal.internal.poll.Poll.T_pollDesc, ?_csema:stdgo.GoUInt32, ?_isBlocking:stdgo.GoUInt32, ?isStream:Bool, ?zeroReadIsEOF:Bool, ?_isFile:Bool) {
        if (_fdmu != null) this._fdmu = _fdmu;
        if (sysfd != null) this.sysfd = sysfd;
        if (sysFile != null) this.sysFile = sysFile;
        if (_pd != null) this._pd = _pd;
        if (_csema != null) this._csema = _csema;
        if (_isBlocking != null) this._isBlocking = _isBlocking;
        if (isStream != null) this.isStream = isStream;
        if (zeroReadIsEOF != null) this.zeroReadIsEOF = zeroReadIsEOF;
        if (_isFile != null) this._isFile = _isFile;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _init() @:typeType null;
    public function __copy__() {
        return new FD(_fdmu, sysfd, sysFile, _pd, _csema, _isBlocking, isStream, zeroReadIsEOF, _isFile);
    }
}
@:structInit @:using(stdgo._internal.internal.poll.Poll.SysFile_static_extension) class SysFile {
    public var _iovecs : stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Syscall.Iovec>> = (null : stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Syscall.Iovec>>);
    public function new(?_iovecs:stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Syscall.Iovec>>) {
        if (_iovecs != null) this._iovecs = _iovecs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SysFile(_iovecs);
    }
}
function _errClosing(_isFile:Bool):stdgo.Error throw ":internal.poll._errClosing is not yet implemented";
function _consume(_v:stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoByte>>>, _n:stdgo.GoInt64):Void throw ":internal.poll._consume is not yet implemented";
function _runtime_Semacquire(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void throw ":internal.poll._runtime_Semacquire is not yet implemented";
function _runtime_Semrelease(_sema:stdgo.Pointer<stdgo.GoUInt32>):Void throw ":internal.poll._runtime_Semrelease is not yet implemented";
function _setDeadlineImpl(_fd:stdgo.Ref<FD>, _t:stdgo._internal.time.Time.Time, _mode:stdgo.GoInt):stdgo.Error throw ":internal.poll._setDeadlineImpl is not yet implemented";
function isPollDescriptor(_fd:stdgo.GoUIntptr):Bool throw ":internal.poll.isPollDescriptor is not yet implemented";
function _ignoringEINTR(_fn:() -> stdgo.Error):stdgo.Error throw ":internal.poll._ignoringEINTR is not yet implemented";
function dupCloseOnExec(_fd:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } throw ":internal.poll.dupCloseOnExec is not yet implemented";
function _ignoringEINTRIO(_fn:(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; }, _fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":internal.poll._ignoringEINTRIO is not yet implemented";
function _dupCloseOnExecOld(_fd:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } throw ":internal.poll._dupCloseOnExecOld is not yet implemented";
function _accept(_s:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.GoString; var _3 : stdgo.Error; } throw ":internal.poll._accept is not yet implemented";
class T_errNetClosing_asInterface {
    @:keep
    public dynamic function temporary():Bool return __self__.value.temporary();
    @:keep
    public dynamic function timeout():Bool return __self__.value.timeout();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errNetClosing>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.poll.Poll.T_errNetClosing_asInterface) class T_errNetClosing_static_extension {
    @:keep
    static public function temporary( _e:T_errNetClosing):Bool throw "T_errNetClosing:internal.poll.temporary is not yet implemented";
    @:keep
    static public function timeout( _e:T_errNetClosing):Bool throw "T_errNetClosing:internal.poll.timeout is not yet implemented";
    @:keep
    static public function error( _e:T_errNetClosing):stdgo.GoString throw "T_errNetClosing:internal.poll.error is not yet implemented";
}
class DeadlineExceededError_asInterface {
    @:keep
    public dynamic function temporary():Bool return __self__.value.temporary();
    @:keep
    public dynamic function timeout():Bool return __self__.value.timeout();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<DeadlineExceededError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.poll.Poll.DeadlineExceededError_asInterface) class DeadlineExceededError_static_extension {
    @:keep
    static public function temporary( _e:stdgo.Ref<DeadlineExceededError>):Bool throw "DeadlineExceededError:internal.poll.temporary is not yet implemented";
    @:keep
    static public function timeout( _e:stdgo.Ref<DeadlineExceededError>):Bool throw "DeadlineExceededError:internal.poll.timeout is not yet implemented";
    @:keep
    static public function error( _e:stdgo.Ref<DeadlineExceededError>):stdgo.GoString throw "DeadlineExceededError:internal.poll.error is not yet implemented";
}
class T_fdMutex_asInterface {
    @:keep
    public dynamic function _rwunlock(_read:Bool):Bool return __self__.value._rwunlock(_read);
    @:keep
    public dynamic function _rwlock(_read:Bool):Bool return __self__.value._rwlock(_read);
    @:keep
    public dynamic function _decref():Bool return __self__.value._decref();
    @:keep
    public dynamic function _increfAndClose():Bool return __self__.value._increfAndClose();
    @:keep
    public dynamic function _incref():Bool return __self__.value._incref();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fdMutex>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.poll.Poll.T_fdMutex_asInterface) class T_fdMutex_static_extension {
    @:keep
    static public function _rwunlock( _mu:stdgo.Ref<T_fdMutex>, _read:Bool):Bool throw "T_fdMutex:internal.poll._rwunlock is not yet implemented";
    @:keep
    static public function _rwlock( _mu:stdgo.Ref<T_fdMutex>, _read:Bool):Bool throw "T_fdMutex:internal.poll._rwlock is not yet implemented";
    @:keep
    static public function _decref( _mu:stdgo.Ref<T_fdMutex>):Bool throw "T_fdMutex:internal.poll._decref is not yet implemented";
    @:keep
    static public function _increfAndClose( _mu:stdgo.Ref<T_fdMutex>):Bool throw "T_fdMutex:internal.poll._increfAndClose is not yet implemented";
    @:keep
    static public function _incref( _mu:stdgo.Ref<T_fdMutex>):Bool throw "T_fdMutex:internal.poll._incref is not yet implemented";
}
class T_pollDesc_asInterface {
    @:keep
    public dynamic function _pollable():Bool return __self__.value._pollable();
    @:keep
    public dynamic function _waitCanceled(_mode:stdgo.GoInt):Void __self__.value._waitCanceled(_mode);
    @:keep
    public dynamic function _waitWrite(_isFile:Bool):stdgo.Error return __self__.value._waitWrite(_isFile);
    @:keep
    public dynamic function _waitRead(_isFile:Bool):stdgo.Error return __self__.value._waitRead(_isFile);
    @:keep
    public dynamic function _wait(_mode:stdgo.GoInt, _isFile:Bool):stdgo.Error return __self__.value._wait(_mode, _isFile);
    @:keep
    public dynamic function _prepareWrite(_isFile:Bool):stdgo.Error return __self__.value._prepareWrite(_isFile);
    @:keep
    public dynamic function _prepareRead(_isFile:Bool):stdgo.Error return __self__.value._prepareRead(_isFile);
    @:keep
    public dynamic function _prepare(_mode:stdgo.GoInt, _isFile:Bool):stdgo.Error return __self__.value._prepare(_mode, _isFile);
    @:keep
    public dynamic function _evict():Void __self__.value._evict();
    @:keep
    public dynamic function _close():Void __self__.value._close();
    @:keep
    public dynamic function _init(_fd:stdgo.Ref<FD>):stdgo.Error return __self__.value._init(_fd);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_pollDesc>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.poll.Poll.T_pollDesc_asInterface) class T_pollDesc_static_extension {
    @:keep
    static public function _pollable( _pd:stdgo.Ref<T_pollDesc>):Bool throw "T_pollDesc:internal.poll._pollable is not yet implemented";
    @:keep
    static public function _waitCanceled( _pd:stdgo.Ref<T_pollDesc>, _mode:stdgo.GoInt):Void throw "T_pollDesc:internal.poll._waitCanceled is not yet implemented";
    @:keep
    static public function _waitWrite( _pd:stdgo.Ref<T_pollDesc>, _isFile:Bool):stdgo.Error throw "T_pollDesc:internal.poll._waitWrite is not yet implemented";
    @:keep
    static public function _waitRead( _pd:stdgo.Ref<T_pollDesc>, _isFile:Bool):stdgo.Error throw "T_pollDesc:internal.poll._waitRead is not yet implemented";
    @:keep
    static public function _wait( _pd:stdgo.Ref<T_pollDesc>, _mode:stdgo.GoInt, _isFile:Bool):stdgo.Error throw "T_pollDesc:internal.poll._wait is not yet implemented";
    @:keep
    static public function _prepareWrite( _pd:stdgo.Ref<T_pollDesc>, _isFile:Bool):stdgo.Error throw "T_pollDesc:internal.poll._prepareWrite is not yet implemented";
    @:keep
    static public function _prepareRead( _pd:stdgo.Ref<T_pollDesc>, _isFile:Bool):stdgo.Error throw "T_pollDesc:internal.poll._prepareRead is not yet implemented";
    @:keep
    static public function _prepare( _pd:stdgo.Ref<T_pollDesc>, _mode:stdgo.GoInt, _isFile:Bool):stdgo.Error throw "T_pollDesc:internal.poll._prepare is not yet implemented";
    @:keep
    static public function _evict( _pd:stdgo.Ref<T_pollDesc>):Void throw "T_pollDesc:internal.poll._evict is not yet implemented";
    @:keep
    static public function _close( _pd:stdgo.Ref<T_pollDesc>):Void throw "T_pollDesc:internal.poll._close is not yet implemented";
    @:keep
    static public function _init( _pd:stdgo.Ref<T_pollDesc>, _fd:stdgo.Ref<FD>):stdgo.Error throw "T_pollDesc:internal.poll._init is not yet implemented";
}
class FD_asInterface {
    @:keep
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function readDirent(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readDirent(_buf);
    @:keep
    public dynamic function fchdir():stdgo.Error return __self__.value.fchdir();
    @:keep
    public dynamic function rawWrite(_f:stdgo.GoUIntptr -> Bool):stdgo.Error return __self__.value.rawWrite(_f);
    @:keep
    public dynamic function rawRead(_f:stdgo.GoUIntptr -> Bool):stdgo.Error return __self__.value.rawRead(_f);
    @:keep
    public dynamic function writeOnce(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeOnce(_p);
    @:keep
    public dynamic function waitWrite():stdgo.Error return __self__.value.waitWrite();
    @:keep
    public dynamic function dup():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value.dup();
    @:keep
    public dynamic function fstat(_s:stdgo.Ref<stdgo._internal.syscall.Syscall.Stat_t>):stdgo.Error return __self__.value.fstat(_s);
    @:keep
    public dynamic function fchmod(_mode:stdgo.GoUInt32):stdgo.Error return __self__.value.fchmod(_mode);
    @:keep
    public dynamic function accept():{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.GoString; var _3 : stdgo.Error; } return __self__.value.accept();
    @:keep
    public dynamic function writeMsgInet6(_p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.writeMsgInet6(_p, _oob, _sa);
    @:keep
    public dynamic function writeMsgInet4(_p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.writeMsgInet4(_p, _oob, _sa);
    @:keep
    public dynamic function writeMsg(_p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo._internal.syscall.Syscall.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.writeMsg(_p, _oob, _sa);
    @:keep
    public dynamic function writeTo(_p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo._internal.syscall.Syscall.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeTo(_p, _sa);
    @:keep
    public dynamic function writeToInet6(_p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeToInet6(_p, _sa);
    @:keep
    public dynamic function writeToInet4(_p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeToInet4(_p, _sa);
    @:keep
    public dynamic function pwrite(_p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.pwrite(_p, _off);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function readMsgInet6(_p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _sa6:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return __self__.value.readMsgInet6(_p, _oob, _flags, _sa6);
    @:keep
    public dynamic function readMsgInet4(_p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _sa4:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return __self__.value.readMsgInet4(_p, _oob, _flags, _sa4);
    @:keep
    public dynamic function readMsg(_p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall.Sockaddr; var _4 : stdgo.Error; } return __self__.value.readMsg(_p, _oob, _flags);
    @:keep
    public dynamic function readFromInet6(_p:stdgo.Slice<stdgo.GoByte>, _from:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readFromInet6(_p, _from);
    @:keep
    public dynamic function readFromInet4(_p:stdgo.Slice<stdgo.GoByte>, _from:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readFromInet4(_p, _from);
    @:keep
    public dynamic function readFrom(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; } return __self__.value.readFrom(_p);
    @:keep
    public dynamic function pread(_p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.pread(_p, _off);
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:keep
    public dynamic function setBlocking():stdgo.Error return __self__.value.setBlocking();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function _destroy():stdgo.Error return __self__.value._destroy();
    @:keep
    public dynamic function init(_net:stdgo.GoString, _pollable:Bool):stdgo.Error return __self__.value.init(_net, _pollable);
    @:keep
    public dynamic function rawControl(_f:stdgo.GoUIntptr -> Void):stdgo.Error return __self__.value.rawControl(_f);
    @:keep
    public dynamic function ftruncate(_size:stdgo.GoInt64):stdgo.Error return __self__.value.ftruncate(_size);
    @:keep
    public dynamic function fchown(_uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return __self__.value.fchown(_uid, _gid);
    @:keep
    public dynamic function shutdown(_how:stdgo.GoInt):stdgo.Error return __self__.value.shutdown(_how);
    @:keep
    public dynamic function _eofError(_n:stdgo.GoInt, _err:stdgo.Error):stdgo.Error return __self__.value._eofError(_n, _err);
    @:keep
    public dynamic function setWriteDeadline(_t:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value.setWriteDeadline(_t);
    @:keep
    public dynamic function setReadDeadline(_t:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value.setReadDeadline(_t);
    @:keep
    public dynamic function setDeadline(_t:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value.setDeadline(_t);
    @:keep
    public dynamic function _writeUnlock():Void __self__.value._writeUnlock();
    @:keep
    public dynamic function _writeLock():stdgo.Error return __self__.value._writeLock();
    @:keep
    public dynamic function _readUnlock():Void __self__.value._readUnlock();
    @:keep
    public dynamic function _readLock():stdgo.Error return __self__.value._readLock();
    @:keep
    public dynamic function _decref():stdgo.Error return __self__.value._decref();
    @:keep
    public dynamic function _incref():stdgo.Error return __self__.value._incref();
    @:keep
    public dynamic function fsync():stdgo.Error return __self__.value.fsync();
    @:embedded
    public dynamic function _init():Void __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FD>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.poll.Poll.FD_asInterface) class FD_static_extension {
    @:keep
    static public function seek( _fd:stdgo.Ref<FD>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "FD:internal.poll.seek is not yet implemented";
    @:keep
    static public function readDirent( _fd:stdgo.Ref<FD>, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.readDirent is not yet implemented";
    @:keep
    static public function fchdir( _fd:stdgo.Ref<FD>):stdgo.Error throw "FD:internal.poll.fchdir is not yet implemented";
    @:keep
    static public function rawWrite( _fd:stdgo.Ref<FD>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error throw "FD:internal.poll.rawWrite is not yet implemented";
    @:keep
    static public function rawRead( _fd:stdgo.Ref<FD>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error throw "FD:internal.poll.rawRead is not yet implemented";
    @:keep
    static public function writeOnce( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.writeOnce is not yet implemented";
    @:keep
    static public function waitWrite( _fd:stdgo.Ref<FD>):stdgo.Error throw "FD:internal.poll.waitWrite is not yet implemented";
    @:keep
    static public function dup( _fd:stdgo.Ref<FD>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } throw "FD:internal.poll.dup is not yet implemented";
    @:keep
    static public function fstat( _fd:stdgo.Ref<FD>, _s:stdgo.Ref<stdgo._internal.syscall.Syscall.Stat_t>):stdgo.Error throw "FD:internal.poll.fstat is not yet implemented";
    @:keep
    static public function fchmod( _fd:stdgo.Ref<FD>, _mode:stdgo.GoUInt32):stdgo.Error throw "FD:internal.poll.fchmod is not yet implemented";
    @:keep
    static public function accept( _fd:stdgo.Ref<FD>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.GoString; var _3 : stdgo.Error; } throw "FD:internal.poll.accept is not yet implemented";
    @:keep
    static public function writeMsgInet6( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } throw "FD:internal.poll.writeMsgInet6 is not yet implemented";
    @:keep
    static public function writeMsgInet4( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } throw "FD:internal.poll.writeMsgInet4 is not yet implemented";
    @:keep
    static public function writeMsg( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _sa:stdgo._internal.syscall.Syscall.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } throw "FD:internal.poll.writeMsg is not yet implemented";
    @:keep
    static public function writeTo( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo._internal.syscall.Syscall.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.writeTo is not yet implemented";
    @:keep
    static public function writeToInet6( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.writeToInet6 is not yet implemented";
    @:keep
    static public function writeToInet4( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.writeToInet4 is not yet implemented";
    @:keep
    static public function pwrite( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.pwrite is not yet implemented";
    @:keep
    static public function write( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.write is not yet implemented";
    @:keep
    static public function readMsgInet6( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _sa6:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } throw "FD:internal.poll.readMsgInet6 is not yet implemented";
    @:keep
    static public function readMsgInet4( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _sa4:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } throw "FD:internal.poll.readMsgInet4 is not yet implemented";
    @:keep
    static public function readMsg( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall.Sockaddr; var _4 : stdgo.Error; } throw "FD:internal.poll.readMsg is not yet implemented";
    @:keep
    static public function readFromInet6( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>, _from:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.readFromInet6 is not yet implemented";
    @:keep
    static public function readFromInet4( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>, _from:stdgo.Ref<stdgo._internal.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.readFromInet4 is not yet implemented";
    @:keep
    static public function readFrom( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; } throw "FD:internal.poll.readFrom is not yet implemented";
    @:keep
    static public function pread( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.pread is not yet implemented";
    @:keep
    static public function read( _fd:stdgo.Ref<FD>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.read is not yet implemented";
    @:keep
    static public function setBlocking( _fd:stdgo.Ref<FD>):stdgo.Error throw "FD:internal.poll.setBlocking is not yet implemented";
    @:keep
    static public function close( _fd:stdgo.Ref<FD>):stdgo.Error throw "FD:internal.poll.close is not yet implemented";
    @:keep
    static public function _destroy( _fd:stdgo.Ref<FD>):stdgo.Error throw "FD:internal.poll._destroy is not yet implemented";
    @:keep
    static public function init( _fd:stdgo.Ref<FD>, _net:stdgo.GoString, _pollable:Bool):stdgo.Error throw "FD:internal.poll.init is not yet implemented";
    @:keep
    static public function rawControl( _fd:stdgo.Ref<FD>, _f:stdgo.GoUIntptr -> Void):stdgo.Error throw "FD:internal.poll.rawControl is not yet implemented";
    @:keep
    static public function ftruncate( _fd:stdgo.Ref<FD>, _size:stdgo.GoInt64):stdgo.Error throw "FD:internal.poll.ftruncate is not yet implemented";
    @:keep
    static public function fchown( _fd:stdgo.Ref<FD>, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error throw "FD:internal.poll.fchown is not yet implemented";
    @:keep
    static public function shutdown( _fd:stdgo.Ref<FD>, _how:stdgo.GoInt):stdgo.Error throw "FD:internal.poll.shutdown is not yet implemented";
    @:keep
    static public function _eofError( _fd:stdgo.Ref<FD>, _n:stdgo.GoInt, _err:stdgo.Error):stdgo.Error throw "FD:internal.poll._eofError is not yet implemented";
    @:keep
    static public function setWriteDeadline( _fd:stdgo.Ref<FD>, _t:stdgo._internal.time.Time.Time):stdgo.Error throw "FD:internal.poll.setWriteDeadline is not yet implemented";
    @:keep
    static public function setReadDeadline( _fd:stdgo.Ref<FD>, _t:stdgo._internal.time.Time.Time):stdgo.Error throw "FD:internal.poll.setReadDeadline is not yet implemented";
    @:keep
    static public function setDeadline( _fd:stdgo.Ref<FD>, _t:stdgo._internal.time.Time.Time):stdgo.Error throw "FD:internal.poll.setDeadline is not yet implemented";
    @:keep
    static public function _writeUnlock( _fd:stdgo.Ref<FD>):Void throw "FD:internal.poll._writeUnlock is not yet implemented";
    @:keep
    static public function _writeLock( _fd:stdgo.Ref<FD>):stdgo.Error throw "FD:internal.poll._writeLock is not yet implemented";
    @:keep
    static public function _readUnlock( _fd:stdgo.Ref<FD>):Void throw "FD:internal.poll._readUnlock is not yet implemented";
    @:keep
    static public function _readLock( _fd:stdgo.Ref<FD>):stdgo.Error throw "FD:internal.poll._readLock is not yet implemented";
    @:keep
    static public function _decref( _fd:stdgo.Ref<FD>):stdgo.Error throw "FD:internal.poll._decref is not yet implemented";
    @:keep
    static public function _incref( _fd:stdgo.Ref<FD>):stdgo.Error throw "FD:internal.poll._incref is not yet implemented";
    @:keep
    static public function fsync( _fd:stdgo.Ref<FD>):stdgo.Error throw "FD:internal.poll.fsync is not yet implemented";
    @:embedded
    public static function _init( __self__:FD) __self__._init();
}
class SysFile_asInterface {
    @:keep
    public dynamic function _destroy(_fd:stdgo.GoInt):stdgo.Error return __self__.value._destroy(_fd);
    @:keep
    public dynamic function _init():Void __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SysFile>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.poll.Poll.SysFile_asInterface) class SysFile_static_extension {
    @:keep
    static public function _destroy( _s:stdgo.Ref<SysFile>, _fd:stdgo.GoInt):stdgo.Error throw "SysFile:internal.poll._destroy is not yet implemented";
    @:keep
    static public function _init( _s:stdgo.Ref<SysFile>):Void throw "SysFile:internal.poll._init is not yet implemented";
}
