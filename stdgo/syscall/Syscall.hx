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
var forkLock : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
typedef RawConn = StructType & {
    public function control(_f:(_fd:GoUIntptr) -> Void):Error;
    public function read(_f:(_fd:GoUIntptr) -> Bool):Error;
    public function write(_f:(_fd:GoUIntptr) -> Bool):Error;
};
typedef Conn = StructType & {
    public function syscallConn():{ var _0 : RawConn; var _1 : Error; };
};
@:structInit class SockaddrInet4 {
    public var port : GoInt = ((0 : GoInt));
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
    public var port : GoInt = ((0 : GoInt));
    public var zoneId : GoUInt32 = ((0 : GoUInt32));
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
    public var name : GoString = (("" : GoString));
    public function new(?name:GoString) {
        if (name != null) this.name = name;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SockaddrUnix(name);
    }
}
@:structInit class Dirent {
    public var reclen : GoUInt16 = ((0 : GoUInt16));
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
    public var dev : GoInt64 = ((0 : GoInt64));
    public var ino : GoUInt64 = ((0 : GoUInt64));
    public var mode : GoUInt32 = ((0 : GoUInt32));
    public var nlink : GoUInt32 = ((0 : GoUInt32));
    public var uid : GoUInt32 = ((0 : GoUInt32));
    public var gid : GoUInt32 = ((0 : GoUInt32));
    public var rdev : GoInt64 = ((0 : GoInt64));
    public var size : GoInt64 = ((0 : GoInt64));
    public var blksize : GoInt32 = ((0 : GoInt32));
    public var blocks : GoInt32 = ((0 : GoInt32));
    public var atime : GoInt64 = ((0 : GoInt64));
    public var atimeNsec : GoInt64 = ((0 : GoInt64));
    public var mtime : GoInt64 = ((0 : GoInt64));
    public var mtimeNsec : GoInt64 = ((0 : GoInt64));
    public var ctime : GoInt64 = ((0 : GoInt64));
    public var ctimeNsec : GoInt64 = ((0 : GoInt64));
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
    public var dir : GoString = (("" : GoString));
    public var env : Slice<GoString> = ((null : Slice<GoString>));
    public var files : Slice<GoUIntptr> = ((null : Slice<GoUIntptr>));
    public var sys : SysProcAttr = ((null : SysProcAttr));
    public function new(?dir:GoString, ?env:Slice<GoString>, ?files:Slice<GoUIntptr>, ?sys:SysProcAttr) {
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
    @:keep
    public function nano():GoInt64 return ((0 : GoInt64));
    @:keep
    public function unix():{ var _0 : GoInt64; var _1 : GoInt64; } return { _0 : ((0 : GoInt64)), _1 : ((0 : GoInt64)) };
    public var sec : GoInt64 = ((0 : GoInt64));
    public var nsec : GoInt64 = ((0 : GoInt64));
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
    @:keep
    public function nano():GoInt64 return ((0 : GoInt64));
    @:keep
    public function unix():{ var _0 : GoInt64; var _1 : GoInt64; } return { _0 : ((0 : GoInt64)), _1 : ((0 : GoInt64)) };
    public var sec : GoInt64 = ((0 : GoInt64));
    public var usec : GoInt64 = ((0 : GoInt64));
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
function parseDirent(_buf:Slice<GoByte>, _max:GoInt, _names:Slice<GoString>):{ var _0 : GoInt; var _1 : GoInt; var _2 : Slice<GoString>; } return { _0 : ((0 : GoInt)), _1 : ((0 : GoInt)), _2 : ((null : Slice<GoString>)) };
function unsetenv(_key:GoString):Error return ((null : stdgo.Error));
function getenv(_key:GoString):{ var _0 : GoString; var _1 : Bool; } return { _0 : (("" : GoString)), _1 : false };
function setenv(_key:GoString, _value:GoString):Error return ((null : stdgo.Error));
function clearenv():Void return;
function environ():Slice<GoString> return ((null : Slice<GoString>));
function open(_path:GoString, _openmode:GoInt, _perm:GoUInt32):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function close(_fd:GoInt):Error return ((null : stdgo.Error));
function closeOnExec(_fd:GoInt):Void return;
function mkdir(_path:GoString, _perm:GoUInt32):Error return ((null : stdgo.Error));
function readDirent(_fd:GoInt, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
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
function stringByteSlice(_s:GoString):Slice<GoByte> return ((null : Slice<GoUInt8>));
function byteSliceFromString(_s:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
function stringBytePtr(_s:GoString):Pointer<GoByte> return ((null : Pointer<GoUInt8>));
function bytePtrFromString(_s:GoString):{ var _0 : Pointer<GoByte>; var _1 : Error; } return { _0 : ((null : Pointer<GoUInt8>)), _1 : ((null : stdgo.Error)) };
function getpagesize():GoInt return ((0 : GoInt));
function exit(_code:GoInt):Void return;
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
function timespecToNsec(_ts:Timespec):GoInt64 return ((0 : GoInt64));
function nsecToTimespec(_nsec:GoInt64):Timespec return new Timespec();
function timevalToNsec(_tv:Timeval):GoInt64 return ((0 : GoInt64));
function nsecToTimeval(_nsec:GoInt64):Timeval return new Timeval();
@:keep class Timespec_static_extension {

}
class Timespec_wrapper {
    public var __t__ : Timespec;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Timeval_static_extension {

}
class Timeval_wrapper {
    public var __t__ : Timeval;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Errno_static_extension {
    @:keep
    public static function timeout(_e:Errno):Bool return false;
    @:keep
    public static function temporary(_e:Errno):Bool return false;
    @:keep
    public static function is_(_e:Errno, _target:Error):Bool return false;
    @:keep
    public static function error(_e:Errno):GoString return (("" : GoString));
}
class Errno_wrapper {
    @:keep
    public function timeout():Bool return false;
    @:keep
    public function temporary():Bool return false;
    @:keep
    public function is_(_target:Error):Bool return false;
    @:keep
    public function error():GoString return (("" : GoString));
    public var __t__ : Errno;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Signal_static_extension {
    @:keep
    public static function toString(_s:Signal):GoString return (("" : GoString));
    @:keep
    public static function signal(_s:Signal):Void return;
}
class Signal_wrapper {
    @:keep
    public function toString():GoString return (("" : GoString));
    @:keep
    public function signal():Void return;
    public var __t__ : Signal;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class WaitStatus_static_extension {
    @:keep
    public static function trapCause(_w:WaitStatus):GoInt return ((0 : GoInt));
    @:keep
    public static function stopSignal(_w:WaitStatus):Signal return new Signal();
    @:keep
    public static function continued(_w:WaitStatus):Bool return false;
    @:keep
    public static function stopped(_w:WaitStatus):Bool return false;
    @:keep
    public static function coreDump(_w:WaitStatus):Bool return false;
    @:keep
    public static function signal(_w:WaitStatus):Signal return new Signal();
    @:keep
    public static function signaled(_w:WaitStatus):Bool return false;
    @:keep
    public static function exitStatus(_w:WaitStatus):GoInt return ((0 : GoInt));
    @:keep
    public static function exited(_w:WaitStatus):Bool return false;
}
class WaitStatus_wrapper {
    @:keep
    public function trapCause():GoInt return ((0 : GoInt));
    @:keep
    public function stopSignal():Signal return new Signal();
    @:keep
    public function continued():Bool return false;
    @:keep
    public function stopped():Bool return false;
    @:keep
    public function coreDump():Bool return false;
    @:keep
    public function signal():Signal return new Signal();
    @:keep
    public function signaled():Bool return false;
    @:keep
    public function exitStatus():GoInt return ((0 : GoInt));
    @:keep
    public function exited():Bool return false;
    public var __t__ : WaitStatus;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
