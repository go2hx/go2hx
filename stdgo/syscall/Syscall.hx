package stdgo.syscall;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _envs : Slice<GoString> = ((null : Slice<GoString>));
var _jsProcess : stdgo.syscall.js.Js.Value = new stdgo.syscall.js.Js.Value();
var _jsFS : stdgo.syscall.js.Js.Value = new stdgo.syscall.js.Js.Value();
var _constants : stdgo.syscall.js.Js.Value = new stdgo.syscall.js.Js.Value();
var _uint8Array : stdgo.syscall.js.Js.Value = new stdgo.syscall.js.Js.Value();
var _nodeWRONLY : GoInt = ((0 : GoInt));
var _nodeRDWR : GoInt = ((0 : GoInt));
var _nodeCREATE : GoInt = ((0 : GoInt));
var _nodeTRUNC : GoInt = ((0 : GoInt));
var _nodeAPPEND : GoInt = ((0 : GoInt));
var _nodeEXCL : GoInt = ((0 : GoInt));
var _files : GoMap<GoInt, Ref<T_jsFile>> = ((null : GoMap<GoInt, Ref<T_jsFile>>));
var _signals : GoArray<GoString> = new GoArray<GoString>(...[for (i in 0 ... 0) (("" : GoString))]);
var _errorstr : GoArray<GoString> = new GoArray<GoString>(...[for (i in 0 ... 2054) (("" : GoString))]);
var _errEAGAIN : Error = new Errno();
var _errEINVAL : Error = new Errno();
var _errENOENT : Error = new Errno();
var _errnoByCode : GoMap<GoString, Errno> = ((null : GoMap<GoString, Errno>));
var _envOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _envLock : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
var _env : GoMap<GoString, GoInt> = ((null : GoMap<GoString, GoInt>));
var _filesMu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
var __zero : GoUIntptr = ((0 : GoUIntptr));
var forkLock : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
typedef RawConn = StructType & {
    public function control(_f:(_fd:GoUIntptr) -> Void):Error;
    public function read(_f:(_fd:GoUIntptr) -> Bool):Error;
    public function write(_f:(_fd:GoUIntptr) -> Bool):Error;
};
typedef Conn = StructType & {
    public function syscallConn():{ var _0 : RawConn; var _1 : Error; };
};
@:structInit class T_jsFile {
    public var _path : GoString = "";
    public var _entries : Slice<GoString> = ((null : Slice<GoString>));
    public var _dirIdx : GoInt = 0;
    public var _pos : GoInt64 = 0;
    public var _seeked : Bool = false;
    public function new(?_path:GoString, ?_entries:Slice<GoString>, ?_dirIdx:GoInt, ?_pos:GoInt64, ?_seeked:Bool) {
        if (_path != null) this._path = _path;
        if (_entries != null) this._entries = _entries;
        if (_dirIdx != null) this._dirIdx = _dirIdx;
        if (_pos != null) this._pos = _pos;
        if (_seeked != null) this._seeked = _seeked;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_jsFile(_path, _entries, _dirIdx, _pos, _seeked);
    }
}
@:structInit class SockaddrInet4 {
    public var port : GoInt = 0;
    public var addr : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
    public function new(?port:GoInt, ?addr:GoArray<GoUInt8>) {
        if (port != null) this.port = port;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SockaddrInet4(port, addr);
    }
}
@:structInit class SockaddrInet6 {
    public var port : GoInt = 0;
    public var zoneId : GoUInt32 = 0;
    public var addr : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
    public function new(?port:GoInt, ?zoneId:GoUInt32, ?addr:GoArray<GoUInt8>) {
        if (port != null) this.port = port;
        if (zoneId != null) this.zoneId = zoneId;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SockaddrInet6(port, zoneId, addr);
    }
}
@:structInit class SockaddrUnix {
    public var name : GoString = "";
    public function new(?name:GoString) {
        if (name != null) this.name = name;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SockaddrUnix(name);
    }
}
@:structInit class Dirent {
    public var reclen : GoUInt16 = 0;
    public var name : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 256) ((0 : GoUInt8))]);
    public function new(?reclen:GoUInt16, ?name:GoArray<GoUInt8>) {
        if (reclen != null) this.reclen = reclen;
        if (name != null) this.name = name;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Dirent(reclen, name);
    }
}
@:structInit class Stat_t {
    public var dev : GoInt64 = 0;
    public var ino : GoUInt64 = 0;
    public var mode : GoUInt32 = 0;
    public var nlink : GoUInt32 = 0;
    public var uid : GoUInt32 = 0;
    public var gid : GoUInt32 = 0;
    public var rdev : GoInt64 = 0;
    public var size : GoInt64 = 0;
    public var blksize : GoInt32 = 0;
    public var blocks : GoInt32 = 0;
    public var atime : GoInt64 = 0;
    public var atimeNsec : GoInt64 = 0;
    public var mtime : GoInt64 = 0;
    public var mtimeNsec : GoInt64 = 0;
    public var ctime : GoInt64 = 0;
    public var ctimeNsec : GoInt64 = 0;
    public function new(?dev:GoInt64, ?ino:GoUInt64, ?mode:GoUInt32, ?nlink:GoUInt32, ?uid:GoUInt32, ?gid:GoUInt32, ?rdev:GoInt64, ?size:GoInt64, ?blksize:GoInt32, ?blocks:GoInt32, ?atime:GoInt64, ?atimeNsec:GoInt64, ?mtime:GoInt64, ?mtimeNsec:GoInt64, ?ctime:GoInt64, ?ctimeNsec:GoInt64) {
        if (dev != null) this.dev = dev;
        if (ino != null) this.ino = ino;
        if (mode != null) this.mode = mode;
        if (nlink != null) this.nlink = nlink;
        if (uid != null) this.uid = uid;
        if (gid != null) this.gid = gid;
        if (rdev != null) this.rdev = rdev;
        if (size != null) this.size = size;
        if (blksize != null) this.blksize = blksize;
        if (blocks != null) this.blocks = blocks;
        if (atime != null) this.atime = atime;
        if (atimeNsec != null) this.atimeNsec = atimeNsec;
        if (mtime != null) this.mtime = mtime;
        if (mtimeNsec != null) this.mtimeNsec = mtimeNsec;
        if (ctime != null) this.ctime = ctime;
        if (ctimeNsec != null) this.ctimeNsec = ctimeNsec;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Stat_t(
dev,
ino,
mode,
nlink,
uid,
gid,
rdev,
size,
blksize,
blocks,
atime,
atimeNsec,
mtime,
mtimeNsec,
ctime,
ctimeNsec);
    }
}
@:structInit class Rusage {
    public var utime : Timeval = new Timeval();
    public var stime : Timeval = new Timeval();
    public function new(?utime:Timeval, ?stime:Timeval) {
        if (utime != null) this.utime = utime;
        if (stime != null) this.stime = stime;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Rusage(utime, stime);
    }
}
@:structInit class ProcAttr {
    public var dir : GoString = "";
    public var env : Slice<GoString> = ((null : Slice<GoString>));
    public var files : Slice<GoUIntptr> = ((null : Slice<GoUIntptr>));
    public var sys : Ref<SysProcAttr> = ((null : SysProcAttr));
    public function new(?dir:GoString, ?env:Slice<GoString>, ?files:Slice<GoUIntptr>, ?sys:Ref<SysProcAttr>) {
        if (dir != null) this.dir = dir;
        if (env != null) this.env = env;
        if (files != null) this.files = files;
        if (sys != null) this.sys = sys;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ProcAttr(dir, env, files, sys);
    }
}
@:structInit class SysProcAttr {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SysProcAttr();
    }
}
@:structInit class Iovec {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Iovec();
    }
}
@:structInit @:using(stdgo.syscall.Syscall.Timespec_static_extension) class Timespec {
    public var sec : GoInt64 = 0;
    public var nsec : GoInt64 = 0;
    public function new(?sec:GoInt64, ?nsec:GoInt64) {
        if (sec != null) this.sec = sec;
        if (nsec != null) this.nsec = nsec;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Timespec(sec, nsec);
    }
}
@:structInit @:using(stdgo.syscall.Syscall.Timeval_static_extension) class Timeval {
    public var sec : GoInt64 = 0;
    public var usec : GoInt64 = 0;
    public function new(?sec:GoInt64, ?usec:GoInt64) {
        if (sec != null) this.sec = sec;
        if (usec != null) this.usec = usec;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Timeval(sec, usec);
    }
}
@:follow typedef Sockaddr = AnyInterface;
@:named @:using(stdgo.syscall.Syscall.Errno_static_extension) typedef Errno = GoUIntptr;
@:named @:using(stdgo.syscall.Syscall.Signal_static_extension) typedef Signal = GoInt;
@:named @:using(stdgo.syscall.Syscall.WaitStatus_static_extension) typedef WaitStatus = GoUInt32;
function _asanRead(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void return;
function _asanWrite(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void return;
/**
    // readInt returns the size-bytes unsigned integer in native byte order at offset off.
**/
function _readInt(_b:Slice<GoByte>, _off:GoUIntptr, _size:GoUIntptr):{ var _0 : GoUInt64; var _1 : Bool; } return { _0 : ((0 : GoUInt64)), _1 : false };
function _readIntBE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64 return ((0 : GoUInt64));
function _readIntLE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64 return ((0 : GoUInt64));
/**
    // ParseDirent parses up to max directory entries in buf,
    // appending the names to names. It returns the number of
    // bytes consumed from buf, the number of entries added
    // to names, and the new names slice.
**/
function parseDirent(_buf:Slice<GoByte>, _max:GoInt, _names:Slice<GoString>):{ var _0 : GoInt; var _1 : GoInt; var _2 : Slice<GoString>; } return { _0 : ((0 : GoInt)), _1 : ((0 : GoInt)), _2 : ((null : Slice<GoString>)) };
function _runtime_envs():Slice<GoString> return ((null : Slice<GoString>));
/**
    // setenv_c and unsetenv_c are provided by the runtime but are no-ops
    // if cgo isn't loaded.
**/
function _setenv_c(_k:GoString, _v:GoString):Void return;
function _unsetenv_c(_k:GoString):Void return;
function _copyenv():Void return;
function unsetenv(_key:GoString):Error return ((null : stdgo.Error));
function getenv(_key:GoString):{ var _0 : GoString; var _1 : Bool; } return { _0 : (("" : GoString)), _1 : false };
function setenv(_key:GoString, _value:GoString):Error return ((null : stdgo.Error));
function clearenv():Void return;
function environ():Slice<GoString> return ((null : Slice<GoString>));
/**
    // Provided by package runtime.
**/
function _now():{ var _0 : GoInt64; var _1 : GoInt32; } return { _0 : ((0 : GoInt64)), _1 : ((0 : GoInt32)) };
function _fdToFile(_fd:GoInt):{ var _0 : T_jsFile; var _1 : Error; } return { _0 : ((null : T_jsFile)), _1 : ((null : stdgo.Error)) };
function open(_path:GoString, _openmode:GoInt, _perm:GoUInt32):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function close(_fd:GoInt):Error return ((null : stdgo.Error));
function closeOnExec(_fd:GoInt):Void return;
function mkdir(_path:GoString, _perm:GoUInt32):Error return ((null : stdgo.Error));
function readDirent(_fd:GoInt, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function _setStat(_st:Stat_t, _jsSt:stdgo.syscall.js.Js.Value):Void return;
function stat(_path:GoString, _st:Stat_t):Error return ((null : stdgo.Error));
function lstat(_path:GoString, _st:Stat_t):Error return ((null : stdgo.Error));
function fstat(_fd:GoInt, _st:Stat_t):Error return ((null : stdgo.Error));
function unlink(_path:GoString):Error return ((null : stdgo.Error));
function rmdir(_path:GoString):Error return ((null : stdgo.Error));
function chmod(_path:GoString, _mode:GoUInt32):Error return ((null : stdgo.Error));
function fchmod(_fd:GoInt, _mode:GoUInt32):Error return ((null : stdgo.Error));
function chown(_path:GoString, _uid:GoInt, _gid:GoInt):Error return ((null : stdgo.Error));
function fchown(_fd:GoInt, _uid:GoInt, _gid:GoInt):Error return ((null : stdgo.Error));
function lchown(_path:GoString, _uid:GoInt, _gid:GoInt):Error return ((null : stdgo.Error));
function utimesNano(_path:GoString, _ts:Slice<Timespec>):Error return ((null : stdgo.Error));
function rename(_from:GoString, _to:GoString):Error return ((null : stdgo.Error));
function truncate(_path:GoString, _length:GoInt64):Error return ((null : stdgo.Error));
function ftruncate(_fd:GoInt, _length:GoInt64):Error return ((null : stdgo.Error));
function getcwd(_buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function chdir(_path:GoString):Error return ((null : stdgo.Error));
function fchdir(_fd:GoInt):Error return ((null : stdgo.Error));
function readlink(_path:GoString, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function link(_path:GoString, _link:GoString):Error return ((null : stdgo.Error));
function symlink(_path:GoString, _link:GoString):Error return ((null : stdgo.Error));
function fsync(_fd:GoInt):Error return ((null : stdgo.Error));
function read(_fd:GoInt, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function write(_fd:GoInt, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function pread(_fd:GoInt, _b:Slice<GoByte>, _offset:GoInt64):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function pwrite(_fd:GoInt, _b:Slice<GoByte>, _offset:GoInt64):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function seek(_fd:GoInt, _offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } return { _0 : ((0 : GoInt64)), _1 : ((null : stdgo.Error)) };
function dup(_fd:GoInt):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function dup2(_fd:GoInt, _newfd:GoInt):Error return ((null : stdgo.Error));
function pipe(_fd:Slice<GoInt>):Error return ((null : stdgo.Error));
function _fsCall(_name:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : stdgo.syscall.js.Js.Value; var _1 : Error; } return { _0 : new stdgo.syscall.js.Js.Value(), _1 : ((null : stdgo.Error)) };
/**
    // checkPath checks that the path is not empty and that it contains no null characters.
**/
function _checkPath(_path:GoString):Error return ((null : stdgo.Error));
function _recoverErr(_errPtr:Error):Void return;
/**
    // mapJSError maps an error given by Node.js to the appropriate Go error
**/
function _mapJSError(_jsErr:stdgo.syscall.js.Js.Value):Error return ((null : stdgo.Error));
function _msanRead(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void return;
function _msanWrite(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void return;
function socket(_proto:GoInt, _sotype:GoInt, _unused:GoInt):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function bind(_fd:GoInt, _sa:Sockaddr):Error return ((null : stdgo.Error));
function stopIO(_fd:GoInt):Error return ((null : stdgo.Error));
function listen(_fd:GoInt, _backlog:GoInt):Error return ((null : stdgo.Error));
function accept(_fd:GoInt):{ var _0 : GoInt; var _1 : Sockaddr; var _2 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : Sockaddr)), _2 : ((null : stdgo.Error)) };
function connect(_fd:GoInt, _sa:Sockaddr):Error return ((null : stdgo.Error));
function recvfrom(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt):{ var _0 : GoInt; var _1 : Sockaddr; var _2 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : Sockaddr)), _2 : ((null : stdgo.Error)) };
function sendto(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt, _to:Sockaddr):Error return ((null : stdgo.Error));
function recvmsg(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _flags:GoInt):{ var _0 : GoInt; var _1 : GoInt; var _2 : GoInt; var _3 : Sockaddr; var _4 : Error; } return { _0 : ((0 : GoInt)), _1 : ((0 : GoInt)), _2 : ((0 : GoInt)), _3 : ((null : Sockaddr)), _4 : ((null : stdgo.Error)) };
function sendmsgN(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _to:Sockaddr, _flags:GoInt):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function getsockoptInt(_fd:GoInt, _level:GoInt, _opt:GoInt):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function setsockoptInt(_fd:GoInt, _level:GoInt, _opt:GoInt, _value:GoInt):Error return ((null : stdgo.Error));
function setReadDeadline(_fd:GoInt, _t:GoInt64):Error return ((null : stdgo.Error));
function setWriteDeadline(_fd:GoInt, _t:GoInt64):Error return ((null : stdgo.Error));
function shutdown(_fd:GoInt, _how:GoInt):Error return ((null : stdgo.Error));
function setNonblock(_fd:GoInt, _nonblocking:Bool):Error return ((null : stdgo.Error));
/**
    // StringByteSlice converts a string to a NUL-terminated []byte,
    // If s contains a NUL byte this function panics instead of
    // returning an error.
    //
    // Deprecated: Use ByteSliceFromString instead.
**/
function stringByteSlice(_s:GoString):Slice<GoByte> return ((null : Slice<GoUInt8>));
/**
    // ByteSliceFromString returns a NUL-terminated slice of bytes
    // containing the text of s. If s contains a NUL byte at any
    // location, it returns (nil, EINVAL).
**/
function byteSliceFromString(_s:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
/**
    // StringBytePtr returns a pointer to a NUL-terminated array of bytes.
    // If s contains a NUL byte this function panics instead of returning
    // an error.
    //
    // Deprecated: Use BytePtrFromString instead.
**/
function stringBytePtr(_s:GoString):Pointer<GoByte> return ((null : Pointer<GoUInt8>));
/**
    // BytePtrFromString returns a pointer to a NUL-terminated array of
    // bytes containing the text of s. If s contains a NUL byte at any
    // location, it returns (nil, EINVAL).
**/
function bytePtrFromString(_s:GoString):{ var _0 : Pointer<GoByte>; var _1 : Error; } return { _0 : ((null : Pointer<GoUInt8>)), _1 : ((null : stdgo.Error)) };
function getpagesize():GoInt return ((0 : GoInt));
function exit(_code:GoInt):Void return;
function _direntIno(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } return { _0 : ((0 : GoUInt64)), _1 : false };
function _direntReclen(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } return { _0 : ((0 : GoUInt64)), _1 : false };
function _direntNamlen(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } return { _0 : ((0 : GoUInt64)), _1 : false };
function syscall(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr):{ var _0 : GoUIntptr; var _1 : GoUIntptr; var _2 : Errno; } return { _0 : ((0 : GoUIntptr)), _1 : ((0 : GoUIntptr)), _2 : new Errno() };
function syscall6(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr, _a4:GoUIntptr, _a5:GoUIntptr, _a6:GoUIntptr):{ var _0 : GoUIntptr; var _1 : GoUIntptr; var _2 : Errno; } return { _0 : ((0 : GoUIntptr)), _1 : ((0 : GoUIntptr)), _2 : new Errno() };
function rawSyscall(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr):{ var _0 : GoUIntptr; var _1 : GoUIntptr; var _2 : Errno; } return { _0 : ((0 : GoUIntptr)), _1 : ((0 : GoUIntptr)), _2 : new Errno() };
function rawSyscall6(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr, _a4:GoUIntptr, _a5:GoUIntptr, _a6:GoUIntptr):{ var _0 : GoUIntptr; var _1 : GoUIntptr; var _2 : Errno; } return { _0 : ((0 : GoUIntptr)), _1 : ((0 : GoUIntptr)), _2 : new Errno() };
function sysctl(_key:GoString):{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
function getwd():{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
function getuid():GoInt return ((0 : GoInt));
function getgid():GoInt return ((0 : GoInt));
function geteuid():GoInt return ((0 : GoInt));
function getegid():GoInt return ((0 : GoInt));
function getgroups():{ var _0 : Slice<GoInt>; var _1 : Error; } return { _0 : ((null : Slice<GoInt>)), _1 : ((null : stdgo.Error)) };
function getpid():GoInt return ((0 : GoInt));
function getppid():GoInt return ((0 : GoInt));
function umask(_mask:GoInt):GoInt return ((0 : GoInt));
function gettimeofday(_tv:Timeval):Error return ((null : stdgo.Error));
function kill(_pid:GoInt, _signum:Signal):Error return ((null : stdgo.Error));
function sendfile(_outfd:GoInt, _infd:GoInt, _offset:Pointer<GoInt64>, _count:GoInt):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function startProcess(_argv0:GoString, _argv:Slice<GoString>, _attr:ProcAttr):{ var _0 : GoInt; var _1 : GoUIntptr; var _2 : Error; } return { _0 : ((0 : GoInt)), _1 : ((0 : GoUIntptr)), _2 : ((null : stdgo.Error)) };
function wait4(_pid:GoInt, _wstatus:Pointer<WaitStatus>, _options:GoInt, _rusage:Rusage):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function _setTimespec(_sec:GoInt64, _nsec:GoInt64):Timespec return new Timespec();
function _setTimeval(_sec:GoInt64, _usec:GoInt64):Timeval return new Timeval();
/**
    // errnoErr returns common boxed Errno values, to prevent
    // allocations at runtime.
**/
function _errnoErr(_e:Errno):Error return ((null : stdgo.Error));
function _faketimeWrite(_fd:GoInt, _p:Slice<GoByte>):GoInt return ((0 : GoInt));
/**
    // TimespecToNSec returns the time stored in ts as nanoseconds.
**/
function timespecToNsec(_ts:Timespec):GoInt64 return ((0 : GoInt64));
/**
    // NsecToTimespec converts a number of nanoseconds into a Timespec.
**/
function nsecToTimespec(_nsec:GoInt64):Timespec return new Timespec();
/**
    // TimevalToNsec returns the time stored in tv as nanoseconds.
**/
function timevalToNsec(_tv:Timeval):GoInt64 return ((0 : GoInt64));
/**
    // NsecToTimeval converts a number of nanoseconds into a Timeval.
**/
function nsecToTimeval(_nsec:GoInt64):Timeval return new Timeval();
@:keep class Timespec_static_extension {
    /**
        // Nano returns the time stored in ts as nanoseconds.
    **/
    @:keep
    static public function nano( _ts:Timespec):GoInt64 return ((0 : GoInt64));
    /**
        // Unix returns the time stored in ts as seconds plus nanoseconds.
    **/
    @:keep
    static public function unix( _ts:Timespec):{ var _0 : GoInt64; var _1 : GoInt64; } return { _0 : ((0 : GoInt64)), _1 : ((0 : GoInt64)) };
}
class Timespec_wrapper {
    /**
        // Nano returns the time stored in ts as nanoseconds.
    **/
    @:keep
    public var nano : () -> GoInt64 = null;
    /**
        // Unix returns the time stored in ts as seconds plus nanoseconds.
    **/
    @:keep
    public var unix : () -> { var _0 : GoInt64; var _1 : GoInt64; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Timespec;
}
@:keep class Timeval_static_extension {
    /**
        // Nano returns the time stored in tv as nanoseconds.
    **/
    @:keep
    static public function nano( _tv:Timeval):GoInt64 return ((0 : GoInt64));
    /**
        // Unix returns the time stored in tv as seconds plus nanoseconds.
    **/
    @:keep
    static public function unix( _tv:Timeval):{ var _0 : GoInt64; var _1 : GoInt64; } return { _0 : ((0 : GoInt64)), _1 : ((0 : GoInt64)) };
}
class Timeval_wrapper {
    /**
        // Nano returns the time stored in tv as nanoseconds.
    **/
    @:keep
    public var nano : () -> GoInt64 = null;
    /**
        // Unix returns the time stored in tv as seconds plus nanoseconds.
    **/
    @:keep
    public var unix : () -> { var _0 : GoInt64; var _1 : GoInt64; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Timeval;
}
@:keep class Errno_static_extension {
    @:keep
    static public function timeout( _e:Errno):Bool return false;
    @:keep
    static public function temporary( _e:Errno):Bool return false;
    @:keep
    static public function is_( _e:Errno, _target:Error):Bool return false;
    @:keep
    static public function error( _e:Errno):GoString return (("" : GoString));
}
class Errno_wrapper {
    @:keep
    public var timeout : () -> Bool = null;
    @:keep
    public var temporary : () -> Bool = null;
    @:keep
    public var is_ : Error -> Bool = null;
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Errno;
}
@:keep class Signal_static_extension {
    @:keep
    static public function string( _s:Signal):GoString return (("" : GoString));
    @:keep
    static public function signal( _s:Signal):Void return;
}
class Signal_wrapper {
    @:keep
    public var string : () -> GoString = null;
    @:keep
    public var signal : () -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Signal;
}
@:keep class WaitStatus_static_extension {
    @:keep
    static public function trapCause( _w:WaitStatus):GoInt return ((0 : GoInt));
    @:keep
    static public function stopSignal( _w:WaitStatus):Signal return new Signal();
    @:keep
    static public function continued( _w:WaitStatus):Bool return false;
    @:keep
    static public function stopped( _w:WaitStatus):Bool return false;
    @:keep
    static public function coreDump( _w:WaitStatus):Bool return false;
    @:keep
    static public function signal( _w:WaitStatus):Signal return new Signal();
    @:keep
    static public function signaled( _w:WaitStatus):Bool return false;
    @:keep
    static public function exitStatus( _w:WaitStatus):GoInt return ((0 : GoInt));
    @:keep
    static public function exited( _w:WaitStatus):Bool return false;
}
class WaitStatus_wrapper {
    @:keep
    public var trapCause : () -> GoInt = null;
    @:keep
    public var stopSignal : () -> Signal = null;
    @:keep
    public var continued : () -> Bool = null;
    @:keep
    public var stopped : () -> Bool = null;
    @:keep
    public var coreDump : () -> Bool = null;
    @:keep
    public var signal : () -> Signal = null;
    @:keep
    public var signaled : () -> Bool = null;
    @:keep
    public var exitStatus : () -> GoInt = null;
    @:keep
    public var exited : () -> Bool = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : WaitStatus;
}
