package stdgo.internal.poll;
/**
    // Package poll supports non-blocking I/O on file descriptors with polling.
    // This supports I/O operations that block only a goroutine, not a thread.
    // This is used by the net and os packages.
    // It uses a poller built into the runtime, with support from the
    // runtime scheduler.
**/
private var __go2hxdoc__package : Bool;
/**
    // ErrNetClosing is returned when a network descriptor is used after
    // it has been closed.
    
    
**/
var errNetClosing : stdgo.internal.poll.Poll.T_errNetClosing = ({} : stdgo.internal.poll.Poll.T_errNetClosing);
/**
    // ErrFileClosing is returned when a file descriptor is used after it
    // has been closed.
    
    
**/
var errFileClosing : stdgo.Error = (null : stdgo.Error);
/**
    // ErrNoDeadline is returned when a request is made to set a deadline
    // on a file type that does not use the poller.
    
    
**/
var errNoDeadline : stdgo.Error = (null : stdgo.Error);
/**
    // ErrDeadlineExceeded is returned for an expired deadline.
    // This is exported by the os package as os.ErrDeadlineExceeded.
    
    
**/
var errDeadlineExceeded : stdgo.Error = (null : stdgo.Error);
/**
    // ErrNotPollable is returned when the file or socket is not suitable
    // for event notification.
    
    
**/
var errNotPollable : stdgo.Error = (null : stdgo.Error);
/**
    // TestHookDidWritev is a hook for testing writev.
    
    
**/
var testHookDidWritev : stdgo.StdGoTypes.GoInt -> Void = null;
/**
    // CloseFunc is used to hook the close call.
    
    
**/
var closeFunc : stdgo.StdGoTypes.GoInt -> stdgo.Error = null;
/**
    // AcceptFunc is used to hook the accept call.
    
    
**/
var acceptFunc : stdgo.StdGoTypes.GoInt -> { var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; } = null;
/**
    // fdMutex.state is organized as follows:
    // 1 bit - whether FD is closed, if set all subsequent lock operations will fail.
    // 1 bit - lock for read operations.
    // 1 bit - lock for write operations.
    // 20 bits - total number of references (read+write+misc).
    // 20 bits - number of outstanding read waiters.
    // 20 bits - number of outstanding write waiters.
    
    
**/
final _mutexClosed : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    // fdMutex.state is organized as follows:
    // 1 bit - whether FD is closed, if set all subsequent lock operations will fail.
    // 1 bit - lock for read operations.
    // 1 bit - lock for write operations.
    // 20 bits - total number of references (read+write+misc).
    // 20 bits - number of outstanding read waiters.
    // 20 bits - number of outstanding write waiters.
    
    
**/
final _mutexRLock : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    // fdMutex.state is organized as follows:
    // 1 bit - whether FD is closed, if set all subsequent lock operations will fail.
    // 1 bit - lock for read operations.
    // 1 bit - lock for write operations.
    // 20 bits - total number of references (read+write+misc).
    // 20 bits - number of outstanding read waiters.
    // 20 bits - number of outstanding write waiters.
    
    
**/
final _mutexWLock : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    // fdMutex.state is organized as follows:
    // 1 bit - whether FD is closed, if set all subsequent lock operations will fail.
    // 1 bit - lock for read operations.
    // 1 bit - lock for write operations.
    // 20 bits - total number of references (read+write+misc).
    // 20 bits - number of outstanding read waiters.
    // 20 bits - number of outstanding write waiters.
    
    
**/
final _mutexRef : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    // fdMutex.state is organized as follows:
    // 1 bit - whether FD is closed, if set all subsequent lock operations will fail.
    // 1 bit - lock for read operations.
    // 1 bit - lock for write operations.
    // 20 bits - total number of references (read+write+misc).
    // 20 bits - number of outstanding read waiters.
    // 20 bits - number of outstanding write waiters.
    
    
**/
final _mutexRefMask : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    // fdMutex.state is organized as follows:
    // 1 bit - whether FD is closed, if set all subsequent lock operations will fail.
    // 1 bit - lock for read operations.
    // 1 bit - lock for write operations.
    // 20 bits - total number of references (read+write+misc).
    // 20 bits - number of outstanding read waiters.
    // 20 bits - number of outstanding write waiters.
    
    
**/
final _mutexRWait : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    // fdMutex.state is organized as follows:
    // 1 bit - whether FD is closed, if set all subsequent lock operations will fail.
    // 1 bit - lock for read operations.
    // 1 bit - lock for write operations.
    // 20 bits - total number of references (read+write+misc).
    // 20 bits - number of outstanding read waiters.
    // 20 bits - number of outstanding write waiters.
    
    
**/
final _mutexRMask : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    // fdMutex.state is organized as follows:
    // 1 bit - whether FD is closed, if set all subsequent lock operations will fail.
    // 1 bit - lock for read operations.
    // 1 bit - lock for write operations.
    // 20 bits - total number of references (read+write+misc).
    // 20 bits - number of outstanding read waiters.
    // 20 bits - number of outstanding write waiters.
    
    
**/
final _mutexWWait : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    // fdMutex.state is organized as follows:
    // 1 bit - whether FD is closed, if set all subsequent lock operations will fail.
    // 1 bit - lock for read operations.
    // 1 bit - lock for write operations.
    // 20 bits - total number of references (read+write+misc).
    // 20 bits - number of outstanding read waiters.
    // 20 bits - number of outstanding write waiters.
    
    
**/
final _mutexWMask : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _overflowMsg : stdgo.GoString = ("" : stdgo.GoString);
/**
    // Darwin and FreeBSD can't read or write 2GB+ files at a time,
    // even on 64-bit systems.
    // The same is true of socket implementations on many systems.
    // See golang.org/issue/7812 and golang.org/issue/16266.
    // Use 1GB instead of, say, 2GB-1, to keep subsequent reads aligned.
    
    
**/
final _maxRW : stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
/**
    // dupCloexecUnsupported indicates whether F_DUPFD_CLOEXEC is supported by the kernel.
    
    
**/
var _dupCloexecUnsupported : stdgo.sync.atomic_.Atomic_.Bool_ = ({} : stdgo.sync.atomic_.Atomic_.Bool_);
/**
    // errNetClosing is the type of the variable ErrNetClosing.
    // This is used to implement the net.Error interface.
    
    
**/
@:structInit @:private @:using(stdgo.internal.poll.Poll.T_errNetClosing_static_extension) class T_errNetClosing {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errNetClosing();
    }
}
/**
    // DeadlineExceededError is returned for an expired deadline.
    
    
**/
@:structInit @:using(stdgo.internal.poll.Poll.DeadlineExceededError_static_extension) class DeadlineExceededError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DeadlineExceededError();
    }
}
/**
    // fdMutex is a specialized synchronization primitive that manages
    // lifetime of an fd and serializes access to Read, Write and Close
    // methods on FD.
    
    
**/
@:structInit @:private @:using(stdgo.internal.poll.Poll.T_fdMutex_static_extension) class T_fdMutex {
    public var _state : stdgo.StdGoTypes.GoUInt64 = 0;
    public var _rsema : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _wsema : stdgo.StdGoTypes.GoUInt32 = 0;
    public function new(?_state:stdgo.StdGoTypes.GoUInt64, ?_rsema:stdgo.StdGoTypes.GoUInt32, ?_wsema:stdgo.StdGoTypes.GoUInt32) {
        if (_state != null) this._state = _state;
        if (_rsema != null) this._rsema = _rsema;
        if (_wsema != null) this._wsema = _wsema;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fdMutex(_state, _rsema, _wsema);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.internal.poll.Poll.T_pollDesc_static_extension) class T_pollDesc {
    public var _fd : stdgo.StdGoTypes.Ref<stdgo.internal.poll.Poll.FD> = (null : stdgo.StdGoTypes.Ref<stdgo.internal.poll.Poll.FD>);
    public var _closing : Bool = false;
    public function new(?_fd:stdgo.StdGoTypes.Ref<stdgo.internal.poll.Poll.FD>, ?_closing:Bool) {
        if (_fd != null) this._fd = _fd;
        if (_closing != null) this._closing = _closing;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pollDesc(_fd, _closing);
    }
}
/**
    // FD is a file descriptor. The net and os packages use this type as a
    // field of a larger type representing a network connection or OS file.
    
    
**/
@:structInit @:using(stdgo.internal.poll.Poll.FD_static_extension) class FD {
    /**
        // Lock sysfd and serialize access to Read and Write methods.
    **/
    public var _fdmu : stdgo.internal.poll.Poll.T_fdMutex = ({} : stdgo.internal.poll.Poll.T_fdMutex);
    /**
        // System file descriptor. Immutable until Close.
    **/
    public var sysfd : stdgo.StdGoTypes.GoInt = 0;
    /**
        // Platform dependent state of the file descriptor.
    **/
    @:embedded
    public var sysFile : stdgo.internal.poll.Poll.SysFile = ({} : stdgo.internal.poll.Poll.SysFile);
    /**
        // I/O poller.
    **/
    public var _pd : stdgo.internal.poll.Poll.T_pollDesc = ({} : stdgo.internal.poll.Poll.T_pollDesc);
    /**
        // Semaphore signaled when file is closed.
    **/
    public var _csema : stdgo.StdGoTypes.GoUInt32 = 0;
    /**
        // Non-zero if this file has been set to blocking mode.
    **/
    public var _isBlocking : stdgo.StdGoTypes.GoUInt32 = 0;
    /**
        // Whether this is a streaming descriptor, as opposed to a
        // packet-based descriptor like a UDP socket. Immutable.
    **/
    public var isStream : Bool = false;
    /**
        // Whether a zero byte read indicates EOF. This is false for a
        // message based socket connection.
    **/
    public var zeroReadIsEOF : Bool = false;
    /**
        // Whether this is a file rather than a network socket.
    **/
    public var _isFile : Bool = false;
    public function new(?_fdmu:stdgo.internal.poll.Poll.T_fdMutex, ?sysfd:stdgo.StdGoTypes.GoInt, ?sysFile:stdgo.internal.poll.Poll.SysFile, ?_pd:stdgo.internal.poll.Poll.T_pollDesc, ?_csema:stdgo.StdGoTypes.GoUInt32, ?_isBlocking:stdgo.StdGoTypes.GoUInt32, ?isStream:Bool, ?zeroReadIsEOF:Bool, ?_isFile:Bool) {
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
/**
    
    
    
**/
@:structInit @:using(stdgo.internal.poll.Poll.SysFile_static_extension) class SysFile {
    /**
        // Writev cache.
    **/
    public var _iovecs : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.syscall.Syscall.Iovec>> = (null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.syscall.Syscall.Iovec>>);
    public function new(?_iovecs:stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.syscall.Syscall.Iovec>>) {
        if (_iovecs != null) this._iovecs = _iovecs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SysFile(_iovecs);
    }
}
/**
    // Return the appropriate closing error based on isFile.
**/
function _errClosing(_isFile:Bool):stdgo.Error throw ":internal.poll._errClosing is not yet implemented";
/**
    // consume removes data from a slice of byte slices, for writev.
**/
function _consume(_v:stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoByte>>>, _n:stdgo.StdGoTypes.GoInt64):Void throw ":internal.poll._consume is not yet implemented";
/**
    // Implemented in runtime package.
**/
function _runtime_Semacquire(_sema:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>):Void throw ":internal.poll._runtime_Semacquire is not yet implemented";
function _runtime_Semrelease(_sema:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>):Void throw ":internal.poll._runtime_Semrelease is not yet implemented";
function _setDeadlineImpl(_fd:stdgo.StdGoTypes.Ref<FD>, _t:stdgo.time.Time.Time, _mode:stdgo.StdGoTypes.GoInt):stdgo.Error throw ":internal.poll._setDeadlineImpl is not yet implemented";
/**
    // IsPollDescriptor reports whether fd is the descriptor being used by the poller.
    // This is only used for testing.
**/
function isPollDescriptor(_fd:stdgo.StdGoTypes.GoUIntptr):Bool throw ":internal.poll.isPollDescriptor is not yet implemented";
/**
    // ignoringEINTR makes a function call and repeats it if it returns
    // an EINTR error. This appears to be required even though we install all
    // signal handlers with SA_RESTART: see #22838, #38033, #38836, #40846.
    // Also #20400 and #36644 are issues in which a signal handler is
    // installed without setting SA_RESTART. None of these are the common case,
    // but there are enough of them that it seems that we can't avoid
    // an EINTR loop.
**/
function _ignoringEINTR(_fn:() -> stdgo.Error):stdgo.Error throw ":internal.poll._ignoringEINTR is not yet implemented";
/**
    // DupCloseOnExec dups fd and marks it close-on-exec.
**/
function dupCloseOnExec(_fd:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } throw ":internal.poll.dupCloseOnExec is not yet implemented";
/**
    // ignoringEINTRIO is like ignoringEINTR, but just for IO calls.
**/
function _ignoringEINTRIO(_fn:(_fd:stdgo.StdGoTypes.GoInt, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>) -> { var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; }, _fd:stdgo.StdGoTypes.GoInt, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw ":internal.poll._ignoringEINTRIO is not yet implemented";
/**
    // dupCloseOnExecOld is the traditional way to dup an fd and
    // set its O_CLOEXEC bit, using two system calls.
**/
function _dupCloseOnExecOld(_fd:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } throw ":internal.poll._dupCloseOnExecOld is not yet implemented";
/**
    // Wrapper around the accept system call that marks the returned file
    // descriptor as nonblocking and close-on-exec.
**/
function _accept(_s:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.syscall.Syscall.Sockaddr; var _2 : stdgo.GoString; var _3 : stdgo.Error; } throw ":internal.poll._accept is not yet implemented";
class T_errNetClosing_asInterface {
    @:keep
    public dynamic function temporary():Bool return __self__.value.temporary();
    @:keep
    public dynamic function timeout():Bool return __self__.value.timeout();
    /**
        // Error returns the error message for ErrNetClosing.
        // Keep this string consistent because of issue #4373:
        // since historically programs have not been able to detect
        // this error, they look for the string.
    **/
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_errNetClosing>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.poll.Poll.T_errNetClosing_asInterface) class T_errNetClosing_static_extension {
    @:keep
    static public function temporary( _e:T_errNetClosing):Bool throw "T_errNetClosing:internal.poll.temporary is not yet implemented";
    @:keep
    static public function timeout( _e:T_errNetClosing):Bool throw "T_errNetClosing:internal.poll.timeout is not yet implemented";
    /**
        // Error returns the error message for ErrNetClosing.
        // Keep this string consistent because of issue #4373:
        // since historically programs have not been able to detect
        // this error, they look for the string.
    **/
    @:keep
    static public function error( _e:T_errNetClosing):stdgo.GoString throw "T_errNetClosing:internal.poll.error is not yet implemented";
}
class DeadlineExceededError_asInterface {
    @:keep
    public dynamic function temporary():Bool return __self__.value.temporary();
    @:keep
    public dynamic function timeout():Bool return __self__.value.timeout();
    /**
        // Implement the net.Error interface.
        // The string is "i/o timeout" because that is what was returned
        // by earlier Go versions. Changing it may break programs that
        // match on error strings.
    **/
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<DeadlineExceededError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.poll.Poll.DeadlineExceededError_asInterface) class DeadlineExceededError_static_extension {
    @:keep
    static public function temporary( _e:stdgo.StdGoTypes.Ref<DeadlineExceededError>):Bool throw "DeadlineExceededError:internal.poll.temporary is not yet implemented";
    @:keep
    static public function timeout( _e:stdgo.StdGoTypes.Ref<DeadlineExceededError>):Bool throw "DeadlineExceededError:internal.poll.timeout is not yet implemented";
    /**
        // Implement the net.Error interface.
        // The string is "i/o timeout" because that is what was returned
        // by earlier Go versions. Changing it may break programs that
        // match on error strings.
    **/
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<DeadlineExceededError>):stdgo.GoString throw "DeadlineExceededError:internal.poll.error is not yet implemented";
}
class T_fdMutex_asInterface {
    /**
        // unlock removes a reference from mu and unlocks mu.
        // It reports whether there is no remaining reference.
    **/
    @:keep
    public dynamic function _rwunlock(_read:Bool):Bool return __self__.value._rwunlock(_read);
    /**
        // lock adds a reference to mu and locks mu.
        // It reports whether mu is available for reading or writing.
    **/
    @:keep
    public dynamic function _rwlock(_read:Bool):Bool return __self__.value._rwlock(_read);
    /**
        // decref removes a reference from mu.
        // It reports whether there is no remaining reference.
    **/
    @:keep
    public dynamic function _decref():Bool return __self__.value._decref();
    /**
        // increfAndClose sets the state of mu to closed.
        // It returns false if the file was already closed.
    **/
    @:keep
    public dynamic function _increfAndClose():Bool return __self__.value._increfAndClose();
    /**
        // incref adds a reference to mu.
        // It reports whether mu is available for reading or writing.
    **/
    @:keep
    public dynamic function _incref():Bool return __self__.value._incref();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fdMutex>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.poll.Poll.T_fdMutex_asInterface) class T_fdMutex_static_extension {
    /**
        // unlock removes a reference from mu and unlocks mu.
        // It reports whether there is no remaining reference.
    **/
    @:keep
    static public function _rwunlock( _mu:stdgo.StdGoTypes.Ref<T_fdMutex>, _read:Bool):Bool throw "T_fdMutex:internal.poll._rwunlock is not yet implemented";
    /**
        // lock adds a reference to mu and locks mu.
        // It reports whether mu is available for reading or writing.
    **/
    @:keep
    static public function _rwlock( _mu:stdgo.StdGoTypes.Ref<T_fdMutex>, _read:Bool):Bool throw "T_fdMutex:internal.poll._rwlock is not yet implemented";
    /**
        // decref removes a reference from mu.
        // It reports whether there is no remaining reference.
    **/
    @:keep
    static public function _decref( _mu:stdgo.StdGoTypes.Ref<T_fdMutex>):Bool throw "T_fdMutex:internal.poll._decref is not yet implemented";
    /**
        // increfAndClose sets the state of mu to closed.
        // It returns false if the file was already closed.
    **/
    @:keep
    static public function _increfAndClose( _mu:stdgo.StdGoTypes.Ref<T_fdMutex>):Bool throw "T_fdMutex:internal.poll._increfAndClose is not yet implemented";
    /**
        // incref adds a reference to mu.
        // It reports whether mu is available for reading or writing.
    **/
    @:keep
    static public function _incref( _mu:stdgo.StdGoTypes.Ref<T_fdMutex>):Bool throw "T_fdMutex:internal.poll._incref is not yet implemented";
}
class T_pollDesc_asInterface {
    @:keep
    public dynamic function _pollable():Bool return __self__.value._pollable();
    @:keep
    public dynamic function _waitCanceled(_mode:stdgo.StdGoTypes.GoInt):Void __self__.value._waitCanceled(_mode);
    @:keep
    public dynamic function _waitWrite(_isFile:Bool):stdgo.Error return __self__.value._waitWrite(_isFile);
    @:keep
    public dynamic function _waitRead(_isFile:Bool):stdgo.Error return __self__.value._waitRead(_isFile);
    @:keep
    public dynamic function _wait(_mode:stdgo.StdGoTypes.GoInt, _isFile:Bool):stdgo.Error return __self__.value._wait(_mode, _isFile);
    @:keep
    public dynamic function _prepareWrite(_isFile:Bool):stdgo.Error return __self__.value._prepareWrite(_isFile);
    @:keep
    public dynamic function _prepareRead(_isFile:Bool):stdgo.Error return __self__.value._prepareRead(_isFile);
    @:keep
    public dynamic function _prepare(_mode:stdgo.StdGoTypes.GoInt, _isFile:Bool):stdgo.Error return __self__.value._prepare(_mode, _isFile);
    @:keep
    public dynamic function _evict():Void __self__.value._evict();
    @:keep
    public dynamic function _close():Void __self__.value._close();
    @:keep
    public dynamic function _init(_fd:stdgo.StdGoTypes.Ref<FD>):stdgo.Error return __self__.value._init(_fd);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_pollDesc>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.poll.Poll.T_pollDesc_asInterface) class T_pollDesc_static_extension {
    @:keep
    static public function _pollable( _pd:stdgo.StdGoTypes.Ref<T_pollDesc>):Bool throw "T_pollDesc:internal.poll._pollable is not yet implemented";
    @:keep
    static public function _waitCanceled( _pd:stdgo.StdGoTypes.Ref<T_pollDesc>, _mode:stdgo.StdGoTypes.GoInt):Void throw "T_pollDesc:internal.poll._waitCanceled is not yet implemented";
    @:keep
    static public function _waitWrite( _pd:stdgo.StdGoTypes.Ref<T_pollDesc>, _isFile:Bool):stdgo.Error throw "T_pollDesc:internal.poll._waitWrite is not yet implemented";
    @:keep
    static public function _waitRead( _pd:stdgo.StdGoTypes.Ref<T_pollDesc>, _isFile:Bool):stdgo.Error throw "T_pollDesc:internal.poll._waitRead is not yet implemented";
    @:keep
    static public function _wait( _pd:stdgo.StdGoTypes.Ref<T_pollDesc>, _mode:stdgo.StdGoTypes.GoInt, _isFile:Bool):stdgo.Error throw "T_pollDesc:internal.poll._wait is not yet implemented";
    @:keep
    static public function _prepareWrite( _pd:stdgo.StdGoTypes.Ref<T_pollDesc>, _isFile:Bool):stdgo.Error throw "T_pollDesc:internal.poll._prepareWrite is not yet implemented";
    @:keep
    static public function _prepareRead( _pd:stdgo.StdGoTypes.Ref<T_pollDesc>, _isFile:Bool):stdgo.Error throw "T_pollDesc:internal.poll._prepareRead is not yet implemented";
    @:keep
    static public function _prepare( _pd:stdgo.StdGoTypes.Ref<T_pollDesc>, _mode:stdgo.StdGoTypes.GoInt, _isFile:Bool):stdgo.Error throw "T_pollDesc:internal.poll._prepare is not yet implemented";
    @:keep
    static public function _evict( _pd:stdgo.StdGoTypes.Ref<T_pollDesc>):Void throw "T_pollDesc:internal.poll._evict is not yet implemented";
    @:keep
    static public function _close( _pd:stdgo.StdGoTypes.Ref<T_pollDesc>):Void throw "T_pollDesc:internal.poll._close is not yet implemented";
    @:keep
    static public function _init( _pd:stdgo.StdGoTypes.Ref<T_pollDesc>, _fd:stdgo.StdGoTypes.Ref<FD>):stdgo.Error throw "T_pollDesc:internal.poll._init is not yet implemented";
}
class FD_asInterface {
    /**
        // Seek wraps syscall.Seek.
    **/
    @:keep
    public dynamic function seek(_offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    /**
        // ReadDirent wraps syscall.ReadDirent.
        // We treat this like an ordinary system call rather than a call
        // that tries to fill the buffer.
    **/
    @:keep
    public dynamic function readDirent(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.readDirent(_buf);
    /**
        // Fchdir wraps syscall.Fchdir.
    **/
    @:keep
    public dynamic function fchdir():stdgo.Error return __self__.value.fchdir();
    /**
        // RawWrite invokes the user-defined function f for a write operation.
    **/
    @:keep
    public dynamic function rawWrite(_f:stdgo.StdGoTypes.GoUIntptr -> Bool):stdgo.Error return __self__.value.rawWrite(_f);
    /**
        // RawRead invokes the user-defined function f for a read operation.
    **/
    @:keep
    public dynamic function rawRead(_f:stdgo.StdGoTypes.GoUIntptr -> Bool):stdgo.Error return __self__.value.rawRead(_f);
    /**
        // WriteOnce is for testing only. It makes a single write call.
    **/
    @:keep
    public dynamic function writeOnce(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeOnce(_p);
    /**
        // WaitWrite waits until data can be read from fd.
    **/
    @:keep
    public dynamic function waitWrite():stdgo.Error return __self__.value.waitWrite();
    /**
        // Dup duplicates the file descriptor.
    **/
    @:keep
    public dynamic function dup():{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return __self__.value.dup();
    /**
        // Fstat wraps syscall.Fstat
    **/
    @:keep
    public dynamic function fstat(_s:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.Stat_t>):stdgo.Error return __self__.value.fstat(_s);
    /**
        // Fchmod wraps syscall.Fchmod.
    **/
    @:keep
    public dynamic function fchmod(_mode:stdgo.StdGoTypes.GoUInt32):stdgo.Error return __self__.value.fchmod(_mode);
    /**
        // Accept wraps the accept network call.
    **/
    @:keep
    public dynamic function accept():{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.syscall.Syscall.Sockaddr; var _2 : stdgo.GoString; var _3 : stdgo.Error; } return __self__.value.accept();
    /**
        // WriteMsgInet6 is WriteMsg specialized for syscall.SockaddrInet6.
    **/
    @:keep
    public dynamic function writeMsgInet6(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _oob:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sa:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } return __self__.value.writeMsgInet6(_p, _oob, _sa);
    /**
        // WriteMsgInet4 is WriteMsg specialized for syscall.SockaddrInet4.
    **/
    @:keep
    public dynamic function writeMsgInet4(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _oob:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sa:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } return __self__.value.writeMsgInet4(_p, _oob, _sa);
    /**
        // WriteMsg wraps the sendmsg network call.
    **/
    @:keep
    public dynamic function writeMsg(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _oob:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sa:stdgo.syscall.Syscall.Sockaddr):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } return __self__.value.writeMsg(_p, _oob, _sa);
    /**
        // WriteTo wraps the sendto network call.
    **/
    @:keep
    public dynamic function writeTo(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sa:stdgo.syscall.Syscall.Sockaddr):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeTo(_p, _sa);
    /**
        // WriteToInet6 wraps the sendto network call for IPv6 addresses.
    **/
    @:keep
    public dynamic function writeToInet6(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sa:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeToInet6(_p, _sa);
    /**
        // WriteToInet4 wraps the sendto network call for IPv4 addresses.
    **/
    @:keep
    public dynamic function writeToInet4(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sa:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeToInet4(_p, _sa);
    /**
        // Pwrite wraps the pwrite system call.
    **/
    @:keep
    public dynamic function pwrite(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.pwrite(_p, _off);
    /**
        // Write implements io.Writer.
    **/
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    /**
        // ReadMsgInet6 is ReadMsg, but specialized for syscall.SockaddrInet6.
    **/
    @:keep
    public dynamic function readMsgInet6(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _oob:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _flags:stdgo.StdGoTypes.GoInt, _sa6:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.StdGoTypes.GoInt; var _3 : stdgo.Error; } return __self__.value.readMsgInet6(_p, _oob, _flags, _sa6);
    /**
        // ReadMsgInet4 is ReadMsg, but specialized for syscall.SockaddrInet4.
    **/
    @:keep
    public dynamic function readMsgInet4(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _oob:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _flags:stdgo.StdGoTypes.GoInt, _sa4:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.StdGoTypes.GoInt; var _3 : stdgo.Error; } return __self__.value.readMsgInet4(_p, _oob, _flags, _sa4);
    /**
        // ReadMsg wraps the recvmsg network call.
    **/
    @:keep
    public dynamic function readMsg(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _oob:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _flags:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.StdGoTypes.GoInt; var _3 : stdgo.syscall.Syscall.Sockaddr; var _4 : stdgo.Error; } return __self__.value.readMsg(_p, _oob, _flags);
    /**
        // ReadFromInet6 wraps the recvfrom network call for IPv6.
    **/
    @:keep
    public dynamic function readFromInet6(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _from:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.readFromInet6(_p, _from);
    /**
        // ReadFromInet4 wraps the recvfrom network call for IPv4.
    **/
    @:keep
    public dynamic function readFromInet4(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _from:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.readFromInet4(_p, _from);
    /**
        // ReadFrom wraps the recvfrom network call.
    **/
    @:keep
    public dynamic function readFrom(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; } return __self__.value.readFrom(_p);
    /**
        // Pread wraps the pread system call.
    **/
    @:keep
    public dynamic function pread(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.pread(_p, _off);
    /**
        // Read implements io.Reader.
    **/
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    /**
        // SetBlocking puts the file into blocking mode.
    **/
    @:keep
    public dynamic function setBlocking():stdgo.Error return __self__.value.setBlocking();
    /**
        // Close closes the FD. The underlying file descriptor is closed by the
        // destroy method when there are no remaining references.
    **/
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    /**
        // Destroy closes the file descriptor. This is called when there are
        // no remaining references.
    **/
    @:keep
    public dynamic function _destroy():stdgo.Error return __self__.value._destroy();
    /**
        // Init initializes the FD. The Sysfd field should already be set.
        // This can be called multiple times on a single FD.
        // The net argument is a network name from the net package (e.g., "tcp"),
        // or "file".
        // Set pollable to true if fd should be managed by runtime netpoll.
    **/
    @:keep
    public dynamic function init(_net:stdgo.GoString, _pollable:Bool):stdgo.Error return __self__.value.init(_net, _pollable);
    /**
        // RawControl invokes the user-defined function f for a non-IO
        // operation.
    **/
    @:keep
    public dynamic function rawControl(_f:stdgo.StdGoTypes.GoUIntptr -> Void):stdgo.Error return __self__.value.rawControl(_f);
    /**
        // Ftruncate wraps syscall.Ftruncate.
    **/
    @:keep
    public dynamic function ftruncate(_size:stdgo.StdGoTypes.GoInt64):stdgo.Error return __self__.value.ftruncate(_size);
    /**
        // Fchown wraps syscall.Fchown.
    **/
    @:keep
    public dynamic function fchown(_uid:stdgo.StdGoTypes.GoInt, _gid:stdgo.StdGoTypes.GoInt):stdgo.Error return __self__.value.fchown(_uid, _gid);
    /**
        // Shutdown wraps syscall.Shutdown.
    **/
    @:keep
    public dynamic function shutdown(_how:stdgo.StdGoTypes.GoInt):stdgo.Error return __self__.value.shutdown(_how);
    /**
        // eofError returns io.EOF when fd is available for reading end of
        // file.
    **/
    @:keep
    public dynamic function _eofError(_n:stdgo.StdGoTypes.GoInt, _err:stdgo.Error):stdgo.Error return __self__.value._eofError(_n, _err);
    /**
        // SetWriteDeadline sets the write deadline associated with fd.
    **/
    @:keep
    public dynamic function setWriteDeadline(_t:stdgo.time.Time.Time):stdgo.Error return __self__.value.setWriteDeadline(_t);
    /**
        // SetReadDeadline sets the read deadline associated with fd.
    **/
    @:keep
    public dynamic function setReadDeadline(_t:stdgo.time.Time.Time):stdgo.Error return __self__.value.setReadDeadline(_t);
    /**
        // SetDeadline sets the read and write deadlines associated with fd.
    **/
    @:keep
    public dynamic function setDeadline(_t:stdgo.time.Time.Time):stdgo.Error return __self__.value.setDeadline(_t);
    /**
        // writeUnlock removes a reference from fd and unlocks fd for writing.
        // It also closes fd when the state of fd is set to closed and there
        // is no remaining reference.
    **/
    @:keep
    public dynamic function _writeUnlock():Void __self__.value._writeUnlock();
    /**
        // writeLock adds a reference to fd and locks fd for writing.
        // It returns an error when fd cannot be used for writing.
    **/
    @:keep
    public dynamic function _writeLock():stdgo.Error return __self__.value._writeLock();
    /**
        // readUnlock removes a reference from fd and unlocks fd for reading.
        // It also closes fd when the state of fd is set to closed and there
        // is no remaining reference.
    **/
    @:keep
    public dynamic function _readUnlock():Void __self__.value._readUnlock();
    /**
        // readLock adds a reference to fd and locks fd for reading.
        // It returns an error when fd cannot be used for reading.
    **/
    @:keep
    public dynamic function _readLock():stdgo.Error return __self__.value._readLock();
    /**
        // decref removes a reference from fd.
        // It also closes fd when the state of fd is set to closed and there
        // is no remaining reference.
    **/
    @:keep
    public dynamic function _decref():stdgo.Error return __self__.value._decref();
    /**
        // incref adds a reference to fd.
        // It returns an error when fd cannot be used.
    **/
    @:keep
    public dynamic function _incref():stdgo.Error return __self__.value._incref();
    /**
        // Fsync wraps syscall.Fsync.
    **/
    @:keep
    public dynamic function fsync():stdgo.Error return __self__.value.fsync();
    @:embedded
    public dynamic function _init():Void __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FD>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.poll.Poll.FD_asInterface) class FD_static_extension {
    /**
        // Seek wraps syscall.Seek.
    **/
    @:keep
    static public function seek( _fd:stdgo.StdGoTypes.Ref<FD>, _offset:stdgo.StdGoTypes.GoInt64, _whence:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } throw "FD:internal.poll.seek is not yet implemented";
    /**
        // ReadDirent wraps syscall.ReadDirent.
        // We treat this like an ordinary system call rather than a call
        // that tries to fill the buffer.
    **/
    @:keep
    static public function readDirent( _fd:stdgo.StdGoTypes.Ref<FD>, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.readDirent is not yet implemented";
    /**
        // Fchdir wraps syscall.Fchdir.
    **/
    @:keep
    static public function fchdir( _fd:stdgo.StdGoTypes.Ref<FD>):stdgo.Error throw "FD:internal.poll.fchdir is not yet implemented";
    /**
        // RawWrite invokes the user-defined function f for a write operation.
    **/
    @:keep
    static public function rawWrite( _fd:stdgo.StdGoTypes.Ref<FD>, _f:stdgo.StdGoTypes.GoUIntptr -> Bool):stdgo.Error throw "FD:internal.poll.rawWrite is not yet implemented";
    /**
        // RawRead invokes the user-defined function f for a read operation.
    **/
    @:keep
    static public function rawRead( _fd:stdgo.StdGoTypes.Ref<FD>, _f:stdgo.StdGoTypes.GoUIntptr -> Bool):stdgo.Error throw "FD:internal.poll.rawRead is not yet implemented";
    /**
        // WriteOnce is for testing only. It makes a single write call.
    **/
    @:keep
    static public function writeOnce( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.writeOnce is not yet implemented";
    /**
        // WaitWrite waits until data can be read from fd.
    **/
    @:keep
    static public function waitWrite( _fd:stdgo.StdGoTypes.Ref<FD>):stdgo.Error throw "FD:internal.poll.waitWrite is not yet implemented";
    /**
        // Dup duplicates the file descriptor.
    **/
    @:keep
    static public function dup( _fd:stdgo.StdGoTypes.Ref<FD>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } throw "FD:internal.poll.dup is not yet implemented";
    /**
        // Fstat wraps syscall.Fstat
    **/
    @:keep
    static public function fstat( _fd:stdgo.StdGoTypes.Ref<FD>, _s:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.Stat_t>):stdgo.Error throw "FD:internal.poll.fstat is not yet implemented";
    /**
        // Fchmod wraps syscall.Fchmod.
    **/
    @:keep
    static public function fchmod( _fd:stdgo.StdGoTypes.Ref<FD>, _mode:stdgo.StdGoTypes.GoUInt32):stdgo.Error throw "FD:internal.poll.fchmod is not yet implemented";
    /**
        // Accept wraps the accept network call.
    **/
    @:keep
    static public function accept( _fd:stdgo.StdGoTypes.Ref<FD>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.syscall.Syscall.Sockaddr; var _2 : stdgo.GoString; var _3 : stdgo.Error; } throw "FD:internal.poll.accept is not yet implemented";
    /**
        // WriteMsgInet6 is WriteMsg specialized for syscall.SockaddrInet6.
    **/
    @:keep
    static public function writeMsgInet6( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _oob:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sa:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } throw "FD:internal.poll.writeMsgInet6 is not yet implemented";
    /**
        // WriteMsgInet4 is WriteMsg specialized for syscall.SockaddrInet4.
    **/
    @:keep
    static public function writeMsgInet4( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _oob:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sa:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } throw "FD:internal.poll.writeMsgInet4 is not yet implemented";
    /**
        // WriteMsg wraps the sendmsg network call.
    **/
    @:keep
    static public function writeMsg( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _oob:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sa:stdgo.syscall.Syscall.Sockaddr):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } throw "FD:internal.poll.writeMsg is not yet implemented";
    /**
        // WriteTo wraps the sendto network call.
    **/
    @:keep
    static public function writeTo( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sa:stdgo.syscall.Syscall.Sockaddr):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.writeTo is not yet implemented";
    /**
        // WriteToInet6 wraps the sendto network call for IPv6 addresses.
    **/
    @:keep
    static public function writeToInet6( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sa:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.writeToInet6 is not yet implemented";
    /**
        // WriteToInet4 wraps the sendto network call for IPv4 addresses.
    **/
    @:keep
    static public function writeToInet4( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _sa:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.writeToInet4 is not yet implemented";
    /**
        // Pwrite wraps the pwrite system call.
    **/
    @:keep
    static public function pwrite( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.pwrite is not yet implemented";
    /**
        // Write implements io.Writer.
    **/
    @:keep
    static public function write( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.write is not yet implemented";
    /**
        // ReadMsgInet6 is ReadMsg, but specialized for syscall.SockaddrInet6.
    **/
    @:keep
    static public function readMsgInet6( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _oob:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _flags:stdgo.StdGoTypes.GoInt, _sa6:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.StdGoTypes.GoInt; var _3 : stdgo.Error; } throw "FD:internal.poll.readMsgInet6 is not yet implemented";
    /**
        // ReadMsgInet4 is ReadMsg, but specialized for syscall.SockaddrInet4.
    **/
    @:keep
    static public function readMsgInet4( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _oob:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _flags:stdgo.StdGoTypes.GoInt, _sa4:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.StdGoTypes.GoInt; var _3 : stdgo.Error; } throw "FD:internal.poll.readMsgInet4 is not yet implemented";
    /**
        // ReadMsg wraps the recvmsg network call.
    **/
    @:keep
    static public function readMsg( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _oob:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _flags:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.StdGoTypes.GoInt; var _3 : stdgo.syscall.Syscall.Sockaddr; var _4 : stdgo.Error; } throw "FD:internal.poll.readMsg is not yet implemented";
    /**
        // ReadFromInet6 wraps the recvfrom network call for IPv6.
    **/
    @:keep
    static public function readFromInet6( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _from:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet6>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.readFromInet6 is not yet implemented";
    /**
        // ReadFromInet4 wraps the recvfrom network call for IPv4.
    **/
    @:keep
    static public function readFromInet4( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _from:stdgo.StdGoTypes.Ref<stdgo.syscall.Syscall.SockaddrInet4>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.readFromInet4 is not yet implemented";
    /**
        // ReadFrom wraps the recvfrom network call.
    **/
    @:keep
    static public function readFrom( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.syscall.Syscall.Sockaddr; var _2 : stdgo.Error; } throw "FD:internal.poll.readFrom is not yet implemented";
    /**
        // Pread wraps the pread system call.
    **/
    @:keep
    static public function pread( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.pread is not yet implemented";
    /**
        // Read implements io.Reader.
    **/
    @:keep
    static public function read( _fd:stdgo.StdGoTypes.Ref<FD>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } throw "FD:internal.poll.read is not yet implemented";
    /**
        // SetBlocking puts the file into blocking mode.
    **/
    @:keep
    static public function setBlocking( _fd:stdgo.StdGoTypes.Ref<FD>):stdgo.Error throw "FD:internal.poll.setBlocking is not yet implemented";
    /**
        // Close closes the FD. The underlying file descriptor is closed by the
        // destroy method when there are no remaining references.
    **/
    @:keep
    static public function close( _fd:stdgo.StdGoTypes.Ref<FD>):stdgo.Error throw "FD:internal.poll.close is not yet implemented";
    /**
        // Destroy closes the file descriptor. This is called when there are
        // no remaining references.
    **/
    @:keep
    static public function _destroy( _fd:stdgo.StdGoTypes.Ref<FD>):stdgo.Error throw "FD:internal.poll._destroy is not yet implemented";
    /**
        // Init initializes the FD. The Sysfd field should already be set.
        // This can be called multiple times on a single FD.
        // The net argument is a network name from the net package (e.g., "tcp"),
        // or "file".
        // Set pollable to true if fd should be managed by runtime netpoll.
    **/
    @:keep
    static public function init( _fd:stdgo.StdGoTypes.Ref<FD>, _net:stdgo.GoString, _pollable:Bool):stdgo.Error throw "FD:internal.poll.init is not yet implemented";
    /**
        // RawControl invokes the user-defined function f for a non-IO
        // operation.
    **/
    @:keep
    static public function rawControl( _fd:stdgo.StdGoTypes.Ref<FD>, _f:stdgo.StdGoTypes.GoUIntptr -> Void):stdgo.Error throw "FD:internal.poll.rawControl is not yet implemented";
    /**
        // Ftruncate wraps syscall.Ftruncate.
    **/
    @:keep
    static public function ftruncate( _fd:stdgo.StdGoTypes.Ref<FD>, _size:stdgo.StdGoTypes.GoInt64):stdgo.Error throw "FD:internal.poll.ftruncate is not yet implemented";
    /**
        // Fchown wraps syscall.Fchown.
    **/
    @:keep
    static public function fchown( _fd:stdgo.StdGoTypes.Ref<FD>, _uid:stdgo.StdGoTypes.GoInt, _gid:stdgo.StdGoTypes.GoInt):stdgo.Error throw "FD:internal.poll.fchown is not yet implemented";
    /**
        // Shutdown wraps syscall.Shutdown.
    **/
    @:keep
    static public function shutdown( _fd:stdgo.StdGoTypes.Ref<FD>, _how:stdgo.StdGoTypes.GoInt):stdgo.Error throw "FD:internal.poll.shutdown is not yet implemented";
    /**
        // eofError returns io.EOF when fd is available for reading end of
        // file.
    **/
    @:keep
    static public function _eofError( _fd:stdgo.StdGoTypes.Ref<FD>, _n:stdgo.StdGoTypes.GoInt, _err:stdgo.Error):stdgo.Error throw "FD:internal.poll._eofError is not yet implemented";
    /**
        // SetWriteDeadline sets the write deadline associated with fd.
    **/
    @:keep
    static public function setWriteDeadline( _fd:stdgo.StdGoTypes.Ref<FD>, _t:stdgo.time.Time.Time):stdgo.Error throw "FD:internal.poll.setWriteDeadline is not yet implemented";
    /**
        // SetReadDeadline sets the read deadline associated with fd.
    **/
    @:keep
    static public function setReadDeadline( _fd:stdgo.StdGoTypes.Ref<FD>, _t:stdgo.time.Time.Time):stdgo.Error throw "FD:internal.poll.setReadDeadline is not yet implemented";
    /**
        // SetDeadline sets the read and write deadlines associated with fd.
    **/
    @:keep
    static public function setDeadline( _fd:stdgo.StdGoTypes.Ref<FD>, _t:stdgo.time.Time.Time):stdgo.Error throw "FD:internal.poll.setDeadline is not yet implemented";
    /**
        // writeUnlock removes a reference from fd and unlocks fd for writing.
        // It also closes fd when the state of fd is set to closed and there
        // is no remaining reference.
    **/
    @:keep
    static public function _writeUnlock( _fd:stdgo.StdGoTypes.Ref<FD>):Void throw "FD:internal.poll._writeUnlock is not yet implemented";
    /**
        // writeLock adds a reference to fd and locks fd for writing.
        // It returns an error when fd cannot be used for writing.
    **/
    @:keep
    static public function _writeLock( _fd:stdgo.StdGoTypes.Ref<FD>):stdgo.Error throw "FD:internal.poll._writeLock is not yet implemented";
    /**
        // readUnlock removes a reference from fd and unlocks fd for reading.
        // It also closes fd when the state of fd is set to closed and there
        // is no remaining reference.
    **/
    @:keep
    static public function _readUnlock( _fd:stdgo.StdGoTypes.Ref<FD>):Void throw "FD:internal.poll._readUnlock is not yet implemented";
    /**
        // readLock adds a reference to fd and locks fd for reading.
        // It returns an error when fd cannot be used for reading.
    **/
    @:keep
    static public function _readLock( _fd:stdgo.StdGoTypes.Ref<FD>):stdgo.Error throw "FD:internal.poll._readLock is not yet implemented";
    /**
        // decref removes a reference from fd.
        // It also closes fd when the state of fd is set to closed and there
        // is no remaining reference.
    **/
    @:keep
    static public function _decref( _fd:stdgo.StdGoTypes.Ref<FD>):stdgo.Error throw "FD:internal.poll._decref is not yet implemented";
    /**
        // incref adds a reference to fd.
        // It returns an error when fd cannot be used.
    **/
    @:keep
    static public function _incref( _fd:stdgo.StdGoTypes.Ref<FD>):stdgo.Error throw "FD:internal.poll._incref is not yet implemented";
    /**
        // Fsync wraps syscall.Fsync.
    **/
    @:keep
    static public function fsync( _fd:stdgo.StdGoTypes.Ref<FD>):stdgo.Error throw "FD:internal.poll.fsync is not yet implemented";
    @:embedded
    public static function _init( __self__:FD) __self__._init();
}
class SysFile_asInterface {
    @:keep
    public dynamic function _destroy(_fd:stdgo.StdGoTypes.GoInt):stdgo.Error return __self__.value._destroy(_fd);
    @:keep
    public dynamic function _init():Void __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SysFile>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.poll.Poll.SysFile_asInterface) class SysFile_static_extension {
    @:keep
    static public function _destroy( _s:stdgo.StdGoTypes.Ref<SysFile>, _fd:stdgo.StdGoTypes.GoInt):stdgo.Error throw "SysFile:internal.poll._destroy is not yet implemented";
    @:keep
    static public function _init( _s:stdgo.StdGoTypes.Ref<SysFile>):Void throw "SysFile:internal.poll._init is not yet implemented";
}
