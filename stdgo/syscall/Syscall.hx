package stdgo.syscall;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;

typedef RawConn = StructType & {
	public function control(_f:(_fd:GoUIntptr) -> Void):Error;
	public function read(_f:(_fd:GoUIntptr) -> Bool):Error;
	public function write(_f:(_fd:GoUIntptr) -> Bool):Error;
};

typedef Conn = StructType & {
	public function syscallConn():{var _0:RawConn; var _1:Error;};
};

@:follow typedef Sockaddr = AnyInterface;

@:structInit class T_jsFile {
	public var _path:GoString = (("" : GoString));
	public var _entries:Slice<GoString> = new Slice<GoString>().nil();
	public var _dirIdx:GoInt = ((0 : GoInt));
	public var _pos:GoInt64 = ((0 : GoInt64));
	public var _seeked:Bool = false;

	public function new(?_path:GoString, ?_entries:Slice<GoString>, ?_dirIdx:GoInt, ?_pos:GoInt64, ?_seeked:Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(_path)
			+ " "
			+ Go.string(_entries)
			+ " "
			+ Go.string(_dirIdx)
			+ " "
			+ Go.string(_pos)
			+ " "
			+ Go.string(_seeked)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_jsFile(_path, _entries, _dirIdx, _pos, _seeked);
	}

	public function __set__(__tmp__) {
		this._path = __tmp__._path;
		this._entries = __tmp__._entries;
		this._dirIdx = __tmp__._dirIdx;
		this._pos = __tmp__._pos;
		this._seeked = __tmp__._seeked;
		return this;
	}
}

@:structInit class SockaddrInet4 {
	public var port:GoInt = ((0 : GoInt));
	public var addr:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);

	public function new(?port:GoInt, ?addr:GoArray<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(port) + " " + Go.string(addr) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SockaddrInet4(port, addr);
	}

	public function __set__(__tmp__) {
		this.port = __tmp__.port;
		this.addr = __tmp__.addr;
		return this;
	}
}

@:structInit class SockaddrInet6 {
	public var port:GoInt = ((0 : GoInt));
	public var zoneId:GoUInt32 = ((0 : GoUInt32));
	public var addr:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...16) ((0 : GoUInt8))]);

	public function new(?port:GoInt, ?zoneId:GoUInt32, ?addr:GoArray<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(port) + " " + Go.string(zoneId) + " " + Go.string(addr) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SockaddrInet6(port, zoneId, addr);
	}

	public function __set__(__tmp__) {
		this.port = __tmp__.port;
		this.zoneId = __tmp__.zoneId;
		this.addr = __tmp__.addr;
		return this;
	}
}

@:structInit class SockaddrUnix {
	public var name:GoString = (("" : GoString));

	public function new(?name:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(name) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SockaddrUnix(name);
	}

	public function __set__(__tmp__) {
		this.name = __tmp__.name;
		return this;
	}
}

@:structInit class Dirent {
	public var reclen:GoUInt16 = ((0 : GoUInt16));
	public var name:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...256) ((0 : GoUInt8))]);

	public function new(?reclen:GoUInt16, ?name:GoArray<GoUInt8>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(reclen) + " " + Go.string(name) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Dirent(reclen, name);
	}

	public function __set__(__tmp__) {
		this.reclen = __tmp__.reclen;
		this.name = __tmp__.name;
		return this;
	}
}

@:named class Errno {
	public function timeout():Bool {
		var _e = this.__copy__();
		return _e.__t__ == eagain.__t__ || _e.__t__ == ewouldblock.__t__ || _e.__t__ == etimedout.__t__;
	}

	public function temporary():Bool {
		var _e = this.__copy__();
		return _e.__t__ == eintr.__t__ || _e.__t__ == emfile.__t__ || _e.timeout();
	}

	public function is_(_target:Error):Bool {
		return false;
	}

	public function error():GoString {
		var _e = this.__copy__();
		if (((0 : GoInt)) <= _e.__t__ && _e.__t__ < _errorstr.length) {
			var _s:GoString = _errorstr[_e.__t__];
			if (_s != (("" : GoString))) {
				return _s;
			};
		};
		return (("errno " : GoString)) + stdgo.internal.itoa.Itoa.itoa(_e.__t__);
	}

	public var __t__:GoUIntptr;

	public function new(?t:GoUIntptr) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new Errno(__t__);
}

@:named class Signal {
	public function toString():GoString {
		var _s = this.__copy__();
		if (((0 : GoInt)) <= _s.__t__ && _s.__t__ < _signals.length) {
			var _str:GoString = _signals[_s.__t__];
			if (_str != (("" : GoString))) {
				return _str;
			};
		};
		return (("signal " : GoString)) + stdgo.internal.itoa.Itoa.itoa(_s.__t__);
	}

	public function signal():Void {
		var _s = this.__copy__();
	}

	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__()
		return new Signal(__t__);
}

@:structInit class Stat_t {
	public var dev:GoInt64 = ((0 : GoInt64));
	public var ino:GoUInt64 = ((0 : GoUInt64));
	public var mode:GoUInt32 = ((0 : GoUInt32));
	public var nlink:GoUInt32 = ((0 : GoUInt32));
	public var uid:GoUInt32 = ((0 : GoUInt32));
	public var gid:GoUInt32 = ((0 : GoUInt32));
	public var rdev:GoInt64 = ((0 : GoInt64));
	public var size:GoInt64 = ((0 : GoInt64));
	public var blksize:GoInt32 = ((0 : GoInt32));
	public var blocks:GoInt32 = ((0 : GoInt32));
	public var atime:GoInt64 = ((0 : GoInt64));
	public var atimeNsec:GoInt64 = ((0 : GoInt64));
	public var mtime:GoInt64 = ((0 : GoInt64));
	public var mtimeNsec:GoInt64 = ((0 : GoInt64));
	public var ctime:GoInt64 = ((0 : GoInt64));
	public var ctimeNsec:GoInt64 = ((0 : GoInt64));

	public function new(?dev:GoInt64, ?ino:GoUInt64, ?mode:GoUInt32, ?nlink:GoUInt32, ?uid:GoUInt32, ?gid:GoUInt32, ?rdev:GoInt64, ?size:GoInt64,
			?blksize:GoInt32, ?blocks:GoInt32, ?atime:GoInt64, ?atimeNsec:GoInt64, ?mtime:GoInt64, ?mtimeNsec:GoInt64, ?ctime:GoInt64, ?ctimeNsec:GoInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(dev) + " " + Go.string(ino) + " " + Go.string(mode) + " " + Go.string(nlink) + " " + Go.string(uid) + " " + Go.string(gid)
			+ " " + Go.string(rdev) + " " + Go.string(size) + " " + Go.string(blksize) + " " + Go.string(blocks) + " " + Go.string(atime) + " "
			+ Go.string(atimeNsec) + " " + Go.string(mtime) + " " + Go.string(mtimeNsec) + " " + Go.string(ctime) + " " + Go.string(ctimeNsec) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Stat_t(dev, ino, mode, nlink, uid, gid, rdev, size, blksize, blocks, atime, atimeNsec, mtime, mtimeNsec, ctime, ctimeNsec);
	}

	public function __set__(__tmp__) {
		this.dev = __tmp__.dev;
		this.ino = __tmp__.ino;
		this.mode = __tmp__.mode;
		this.nlink = __tmp__.nlink;
		this.uid = __tmp__.uid;
		this.gid = __tmp__.gid;
		this.rdev = __tmp__.rdev;
		this.size = __tmp__.size;
		this.blksize = __tmp__.blksize;
		this.blocks = __tmp__.blocks;
		this.atime = __tmp__.atime;
		this.atimeNsec = __tmp__.atimeNsec;
		this.mtime = __tmp__.mtime;
		this.mtimeNsec = __tmp__.mtimeNsec;
		this.ctime = __tmp__.ctime;
		this.ctimeNsec = __tmp__.ctimeNsec;
		return this;
	}
}

@:named class WaitStatus {
	public function trapCause():GoInt {
		var _w = this.__copy__();
		return ((0 : GoInt));
	}

	public function stopSignal():Signal {
		var _w = this.__copy__();
		return new Signal(((0 : GoInt)));
	}

	public function continued():Bool {
		var _w = this.__copy__();
		return false;
	}

	public function stopped():Bool {
		var _w = this.__copy__();
		return false;
	}

	public function coreDump():Bool {
		var _w = this.__copy__();
		return false;
	}

	public function signal():Signal {
		var _w = this.__copy__();
		return new Signal(((0 : GoInt)));
	}

	public function signaled():Bool {
		var _w = this.__copy__();
		return false;
	}

	public function exitStatus():GoInt {
		var _w = this.__copy__();
		return ((0 : GoInt));
	}

	public function exited():Bool {
		var _w = this.__copy__();
		return false;
	}

	public var __t__:GoUInt32;

	public function new(?t:GoUInt32) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new WaitStatus(__t__);
}

@:structInit class Rusage {
	public var utime:Timeval = new Timeval();
	public var stime:Timeval = new Timeval();

	public function new(?utime:Timeval, ?stime:Timeval)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(utime) + " " + Go.string(stime) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Rusage(utime, stime);
	}

	public function __set__(__tmp__) {
		this.utime = __tmp__.utime;
		this.stime = __tmp__.stime;
		return this;
	}
}

@:structInit class ProcAttr {
	public var dir:GoString = (("" : GoString));
	public var env:Slice<GoString> = new Slice<GoString>().nil();
	public var files:Slice<GoUIntptr> = new Slice<GoUIntptr>().nil();
	public var sys:Pointer<SysProcAttr> = new Pointer<SysProcAttr>().nil();

	public function new(?dir:GoString, ?env:Slice<GoString>, ?files:Slice<GoUIntptr>, ?sys:Pointer<SysProcAttr>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(dir) + " " + Go.string(env) + " " + Go.string(files) + " " + Go.string(sys) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ProcAttr(dir, env, files, sys);
	}

	public function __set__(__tmp__) {
		this.dir = __tmp__.dir;
		this.env = __tmp__.env;
		this.files = __tmp__.files;
		this.sys = __tmp__.sys;
		return this;
	}
}

@:structInit class SysProcAttr {
	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SysProcAttr();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit class Iovec {
	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Iovec();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit class Timespec {
	public function nano():GoInt64 {
		var _ts = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((_ts.value.sec : GoInt64)) * ((1e+09 : GoInt64)) + ((_ts.value.nsec : GoInt64));
	}

	public function unix():{var _0:GoInt64; var _1:GoInt64;} {
		var _ts = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _sec:GoInt64 = ((0 : GoInt64)), _nsec:GoInt64 = ((0 : GoInt64));
		return {_0: ((_ts.value.sec : GoInt64)), _1: ((_ts.value.nsec : GoInt64))};
	}

	public var sec:GoInt64 = ((0 : GoInt64));
	public var nsec:GoInt64 = ((0 : GoInt64));

	public function new(?sec:GoInt64, ?nsec:GoInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(sec) + " " + Go.string(nsec) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Timespec(sec, nsec);
	}

	public function __set__(__tmp__) {
		this.sec = __tmp__.sec;
		this.nsec = __tmp__.nsec;
		return this;
	}
}

@:structInit class Timeval {
	public function nano():GoInt64 {
		var _tv = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((_tv.value.sec : GoInt64)) * ((1e+09 : GoInt64)) + ((_tv.value.usec : GoInt64)) * ((1000 : GoInt64));
	}

	public function unix():{var _0:GoInt64; var _1:GoInt64;} {
		var _tv = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _sec:GoInt64 = ((0 : GoInt64)), _nsec:GoInt64 = ((0 : GoInt64));
		return {_0: ((_tv.value.sec : GoInt64)), _1: ((_tv.value.usec : GoInt64)) * ((1000 : GoInt64))};
	}

	public var sec:GoInt64 = ((0 : GoInt64));
	public var usec:GoInt64 = ((0 : GoInt64));

	public function new(?sec:GoInt64, ?usec:GoInt64)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(sec) + " " + Go.string(usec) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Timeval(sec, usec);
	}

	public function __set__(__tmp__) {
		this.sec = __tmp__.sec;
		this.usec = __tmp__.usec;
		return this;
	}
}

final eremote:Errno = new Errno(((66 : GoUIntptr)));
final s_IFMUTEX:GoInt64 = ((86016 : GoUnTypedInt));

var _errorstr:GoArray<GoString> = {
	var s = new GoArray<GoString>(...[for (i in 0...2054) ""]);
	s[0] = "Operation not permitted";
	s[1] = "No such file or directory";
	s[2] = "No such process";
	s[3] = "Interrupted system call";
	s[4] = "I/O error";
	s[5] = "No such device or address";
	s[6] = "Argument list too long";
	s[7] = "Exec format error";
	s[8] = "Bad file number";
	s[9] = "No child processes";
	s[10] = "Try again";
	s[11] = "Out of memory";
	s[12] = "Permission denied";
	s[13] = "Bad address";
	s[14] = "Device or resource busy";
	s[15] = "File exists";
	s[16] = "Cross-device link";
	s[17] = "No such device";
	s[18] = "Not a directory";
	s[19] = "Is a directory";
	s[20] = "Invalid argument";
	s[21] = "File table overflow";
	s[22] = "Too many open files";
	s[23] = "Not a typewriter";
	s[24] = "File too large";
	s[25] = "No space left on device";
	s[26] = "Illegal seek";
	s[27] = "Read-only file system";
	s[28] = "Too many links";
	s[29] = "Broken pipe";
	s[30] = "File name too long";
	s[31] = (("not implemented on " : GoString)) + stdgo.runtime.Runtime.goos;
	s[32] = "Quota exceeded";
	s[33] = "Math arg out of domain of func";
	s[34] = "Math result not representable";
	s[35] = "Deadlock condition";
	s[36] = "No record locks available";
	s[37] = "Directory not empty";
	s[38] = "Too many symbolic links";
	s[39] = "No message of desired type";
	s[40] = "Identifier removed";
	s[41] = "Channel number out of range";
	s[42] = "Level 2 not synchronized";
	s[43] = "Level 3 halted";
	s[44] = "Level 3 reset";
	s[45] = "Link number out of range";
	s[46] = "Protocol driver not attached";
	s[47] = "No CSI structure available";
	s[48] = "Level 2 halted";
	s[49] = "Invalid exchange";
	s[50] = "Invalid request descriptor";
	s[51] = "Exchange full";
	s[52] = "No anode";
	s[53] = "Invalid request code";
	s[54] = "Invalid slot";
	s[55] = "Bad font file fmt";
	s[56] = "Device not a stream";
	s[57] = "No data (for no delay io)";
	s[58] = "Timer expired";
	s[59] = "Out of streams resources";
	s[60] = "Machine is not on the network";
	s[61] = "Package not installed";
	s[62] = "The object is remote";
	s[63] = "The link has been severed";
	s[64] = "Advertise error";
	s[65] = "Srmount error";
	s[66] = "Communication error on send";
	s[67] = "Protocol error";
	s[68] = "Multihop attempted";
	s[69] = "Cross mount point (not really error)";
	s[70] = "Trying to read unreadable message";
	s[71] = "Value too large for defined data type";
	s[72] = "Given log. name not unique";
	s[73] = "f.d. invalid for this operation";
	s[74] = "Remote address changed";
	s[75] = "Can\'t access a needed shared lib";
	s[76] = "Accessing a corrupted shared lib";
	s[77] = ".lib section in a.out corrupted";
	s[78] = "Attempting to link in too many libs";
	s[79] = "Attempting to exec a shared library";
	s[80] = "Socket operation on non-socket";
	s[81] = "Destination address required";
	s[82] = "Message too long";
	s[83] = "Protocol wrong type for socket";
	s[84] = "Protocol not available";
	s[85] = "Unknown protocol";
	s[86] = "Socket type not supported";
	s[87] = "Operation not supported on transport endpoint";
	s[88] = "Protocol family not supported";
	s[89] = "Address family not supported by protocol family";
	s[90] = "Address already in use";
	s[91] = "Address not available";
	s[92] = "Network interface is not configured";
	s[93] = "Network is unreachable";
	s[94] = "Connection aborted";
	s[95] = "Connection reset by peer";
	s[96] = "No buffer space available";
	s[97] = "Socket is already connected";
	s[98] = "Socket is not connected";
	s[99] = "Can\'t send after socket shutdown";
	s[100] = "Connection timed out";
	s[101] = "Connection refused";
	s[102] = "Host is down";
	s[103] = "Host is unreachable";
	s[104] = "Socket already connected";
	s[105] = "Connection already in progress";
	s[106] = "No medium (in tape drive)";
	s[107] = "Operation canceled.";
	s[108] = "Inode is remote (not really error)";
	s[109] = "Inappropriate file type or format";
	s[110] = "No more files";
	s[111] = "No such host or network path";
	s[112] = "Filename exists with different case";
	s;
};

final _sys_stat:GoInt64 = ((16 : GoUnTypedInt));
final emsgsize:Errno = new Errno(((90 : GoUIntptr)));
final eio:Errno = new Errno(((5 : GoUIntptr)));
final enosr:Errno = new Errno(((63 : GoUIntptr)));
final sigint:Signal = new Signal((2 : GoUnTypedInt));
final enomedium:Errno = new Errno(((123 : GoUIntptr)));
final o_EXCL:GoInt64 = ((128 : GoUnTypedInt));
final econnaborted:Errno = new Errno(((103 : GoUIntptr)));
final _sys_mutex_lock:GoInt64 = ((71 : GoUnTypedInt));
final f_GETFD:GoInt64 = ((1 : GoUnTypedInt));
final _sys_exception_clear_flag:GoInt64 = ((89 : GoUnTypedInt));
final econnrefused:Errno = new Errno(((111 : GoUIntptr)));
final enodata:Errno = new Errno(((61 : GoUIntptr)));
final elibbad:Errno = new Errno(((80 : GoUIntptr)));
final el3rst:Errno = new Errno(((47 : GoUIntptr)));
final ipproto_UDP:GoInt64 = ((17 : GoUnTypedInt));
final etoomanyrefs:Errno = new Errno(((109 : GoUIntptr)));
final eperm:Errno = new Errno(((1 : GoUIntptr)));
final enoent:Errno = new Errno(((2 : GoUIntptr)));
final esrch:Errno = new Errno(((3 : GoUIntptr)));
final eintr:Errno = new Errno(((4 : GoUIntptr)));
final enxio:Errno = new Errno(((6 : GoUIntptr)));
final e2big:Errno = new Errno(((7 : GoUIntptr)));
final enoexec:Errno = new Errno(((8 : GoUIntptr)));
final ebadf:Errno = new Errno(((9 : GoUIntptr)));
final echild:Errno = new Errno(((10 : GoUIntptr)));
final eagain:Errno = new Errno(((11 : GoUIntptr)));
final enomem:Errno = new Errno(((12 : GoUIntptr)));
final eacces:Errno = new Errno(((13 : GoUIntptr)));
final efault:Errno = new Errno(((14 : GoUIntptr)));
final ebusy:Errno = new Errno(((16 : GoUIntptr)));
final eexist:Errno = new Errno(((17 : GoUIntptr)));
final exdev:Errno = new Errno(((18 : GoUIntptr)));
final enodev:Errno = new Errno(((19 : GoUIntptr)));
final enotdir:Errno = new Errno(((20 : GoUIntptr)));
final eisdir:Errno = new Errno(((21 : GoUIntptr)));
final einval:Errno = new Errno(((22 : GoUIntptr)));
final enfile:Errno = new Errno(((23 : GoUIntptr)));
final emfile:Errno = new Errno(((24 : GoUIntptr)));
final enotty:Errno = new Errno(((25 : GoUIntptr)));
final efbig:Errno = new Errno(((27 : GoUIntptr)));
final enospc:Errno = new Errno(((28 : GoUIntptr)));
final espipe:Errno = new Errno(((29 : GoUIntptr)));
final erofs:Errno = new Errno(((30 : GoUIntptr)));
final emlink:Errno = new Errno(((31 : GoUIntptr)));
final epipe:Errno = new Errno(((32 : GoUIntptr)));
final enametoolong:Errno = new Errno(((36 : GoUIntptr)));
final enosys:Errno = new Errno(((38 : GoUIntptr)));
final edquot:Errno = new Errno(((122 : GoUIntptr)));
final edom:Errno = new Errno(((33 : GoUIntptr)));
final erange:Errno = new Errno(((34 : GoUIntptr)));
final edeadlk:Errno = new Errno(((35 : GoUIntptr)));
final enolck:Errno = new Errno(((37 : GoUIntptr)));
final enotempty:Errno = new Errno(((39 : GoUIntptr)));
final eloop:Errno = new Errno(((40 : GoUIntptr)));
final enomsg:Errno = new Errno(((42 : GoUIntptr)));
final eidrm:Errno = new Errno(((43 : GoUIntptr)));
final echrng:Errno = new Errno(((44 : GoUIntptr)));
final el2nsync:Errno = new Errno(((45 : GoUIntptr)));
final el3hlt:Errno = new Errno(((46 : GoUIntptr)));
final elnrng:Errno = new Errno(((48 : GoUIntptr)));
final eunatch:Errno = new Errno(((49 : GoUIntptr)));
final enocsi:Errno = new Errno(((50 : GoUIntptr)));
final el2hlt:Errno = new Errno(((51 : GoUIntptr)));
final ebade:Errno = new Errno(((52 : GoUIntptr)));
final ebadr:Errno = new Errno(((53 : GoUIntptr)));
final exfull:Errno = new Errno(((54 : GoUIntptr)));
final enoano:Errno = new Errno(((55 : GoUIntptr)));
final ebadrqc:Errno = new Errno(((56 : GoUIntptr)));
final ebadslt:Errno = new Errno(((57 : GoUIntptr)));
final edeadlock:Errno = edeadlk;
final ebfont:Errno = new Errno(((59 : GoUIntptr)));
final enostr:Errno = new Errno(((60 : GoUIntptr)));
final etime:Errno = new Errno(((62 : GoUIntptr)));
final enonet:Errno = new Errno(((64 : GoUIntptr)));
final enopkg:Errno = new Errno(((65 : GoUIntptr)));
final enolink:Errno = new Errno(((67 : GoUIntptr)));
final eadv:Errno = new Errno(((68 : GoUIntptr)));
final esrmnt:Errno = new Errno(((69 : GoUIntptr)));
final ecomm:Errno = new Errno(((70 : GoUIntptr)));
final eproto:Errno = new Errno(((71 : GoUIntptr)));
final emultihop:Errno = new Errno(((72 : GoUIntptr)));
final edotdot:Errno = new Errno(((73 : GoUIntptr)));
final ebadmsg:Errno = new Errno(((74 : GoUIntptr)));
final eoverflow:Errno = new Errno(((75 : GoUIntptr)));
final enotuniq:Errno = new Errno(((76 : GoUIntptr)));
final ebadfd:Errno = new Errno(((77 : GoUIntptr)));
final eremchg:Errno = new Errno(((78 : GoUIntptr)));
final elibacc:Errno = new Errno(((79 : GoUIntptr)));
final elibscn:Errno = new Errno(((81 : GoUIntptr)));
final elibmax:Errno = new Errno(((82 : GoUIntptr)));
final elibexec:Errno = new Errno(((83 : GoUIntptr)));
final eilseq:Errno = new Errno(((84 : GoUIntptr)));
final eusers:Errno = new Errno(((87 : GoUIntptr)));
final enotsock:Errno = new Errno(((88 : GoUIntptr)));
final edestaddrreq:Errno = new Errno(((89 : GoUIntptr)));
final eprototype:Errno = new Errno(((91 : GoUIntptr)));
final enoprotoopt:Errno = new Errno(((92 : GoUIntptr)));
final eprotonosupport:Errno = new Errno(((93 : GoUIntptr)));
final esocktnosupport:Errno = new Errno(((94 : GoUIntptr)));
final eopnotsupp:Errno = new Errno(((95 : GoUIntptr)));
final epfnosupport:Errno = new Errno(((96 : GoUIntptr)));
final eafnosupport:Errno = new Errno(((97 : GoUIntptr)));
final eaddrinuse:Errno = new Errno(((98 : GoUIntptr)));
final eaddrnotavail:Errno = new Errno(((99 : GoUIntptr)));
final enetdown:Errno = new Errno(((100 : GoUIntptr)));
final enetunreach:Errno = new Errno(((101 : GoUIntptr)));
final enetreset:Errno = new Errno(((102 : GoUIntptr)));
final econnreset:Errno = new Errno(((104 : GoUIntptr)));
final enobufs:Errno = new Errno(((105 : GoUIntptr)));
final eisconn:Errno = new Errno(((106 : GoUIntptr)));
final enotconn:Errno = new Errno(((107 : GoUIntptr)));
final eshutdown:Errno = new Errno(((108 : GoUIntptr)));
final etimedout:Errno = new Errno(((110 : GoUIntptr)));
final ehostdown:Errno = new Errno(((112 : GoUIntptr)));
final ehostunreach:Errno = new Errno(((113 : GoUIntptr)));
final ealready:Errno = new Errno(((114 : GoUIntptr)));
final einprogress:Errno = new Errno(((115 : GoUIntptr)));
final estale:Errno = new Errno(((116 : GoUIntptr)));
final enotsup:Errno = eopnotsupp;
final ecanceled:Errno = new Errno(((125 : GoUIntptr)));
final elbin:Errno = new Errno(((2048 : GoUIntptr)));
final eftype:Errno = new Errno(((2049 : GoUIntptr)));
final enmfile:Errno = new Errno(((2050 : GoUIntptr)));
final eproclim:Errno = new Errno(((2051 : GoUIntptr)));
final enoshare:Errno = new Errno(((2052 : GoUIntptr)));
final ecaseclash:Errno = new Errno(((2053 : GoUIntptr)));
final ewouldblock:Errno = eagain;

var _errnoByCode:GoMap<GoString, Errno> = new GoMap<GoString,
	Errno>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
	stdgo.reflect.Reflect.GoType.named("syscall.Errno", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)))),
	{
		key: "EPERM",
		value: eperm
	},
	{key: "ENOENT", value: enoent}, {key: "ESRCH", value: esrch}, {key: "EINTR", value: eintr}, {key: "EIO", value: eio}, {key: "ENXIO", value: enxio},
	{key: "E2BIG", value: e2big}, {key: "ENOEXEC", value: enoexec}, {key: "EBADF", value: ebadf}, {key: "ECHILD", value: echild},
	{key: "EAGAIN", value: eagain}, {key: "ENOMEM", value: enomem}, {key: "EACCES", value: eacces}, {key: "EFAULT", value: efault},
	{key: "EBUSY", value: ebusy}, {key: "EEXIST", value: eexist}, {key: "EXDEV", value: exdev}, {key: "ENODEV", value: enodev},
	{key: "ENOTDIR", value: enotdir}, {key: "EISDIR", value: eisdir}, {key: "EINVAL", value: einval}, {key: "ENFILE", value: enfile},
	{key: "EMFILE", value: emfile}, {key: "ENOTTY", value: enotty}, {key: "EFBIG", value: efbig}, {key: "ENOSPC", value: enospc},
	{key: "ESPIPE", value: espipe}, {key: "EROFS", value: erofs}, {key: "EMLINK", value: emlink}, {key: "EPIPE", value: epipe},
	{key: "ENAMETOOLONG", value: enametoolong}, {key: "ENOSYS", value: enosys}, {key: "EDQUOT", value: edquot}, {key: "EDOM", value: edom},
	{key: "ERANGE", value: erange}, {key: "EDEADLK", value: edeadlk}, {key: "ENOLCK", value: enolck}, {key: "ENOTEMPTY", value: enotempty},
	{key: "ELOOP", value: eloop}, {key: "ENOMSG", value: enomsg}, {key: "EIDRM", value: eidrm}, {key: "ECHRNG", value: echrng},
	{key: "EL2NSYNC", value: el2nsync}, {key: "EL3HLT", value: el3hlt}, {key: "EL3RST", value: el3rst}, {key: "ELNRNG", value: elnrng},
	{key: "EUNATCH", value: eunatch}, {key: "ENOCSI", value: enocsi}, {key: "EL2HLT", value: el2hlt}, {key: "EBADE", value: ebade},
	{key: "EBADR", value: ebadr}, {key: "EXFULL", value: exfull}, {key: "ENOANO", value: enoano}, {key: "EBADRQC", value: ebadrqc},
	{key: "EBADSLT", value: ebadslt}, {key: "EDEADLOCK", value: edeadlock}, {key: "EBFONT", value: ebfont}, {key: "ENOSTR", value: enostr},
	{key: "ENODATA", value: enodata}, {key: "ETIME", value: etime}, {key: "ENOSR", value: enosr}, {key: "ENONET", value: enonet},
	{key: "ENOPKG", value: enopkg}, {key: "EREMOTE", value: eremote}, {key: "ENOLINK", value: enolink}, {key: "EADV", value: eadv},
	{key: "ESRMNT", value: esrmnt}, {key: "ECOMM", value: ecomm}, {key: "EPROTO", value: eproto}, {key: "EMULTIHOP", value: emultihop},
	{key: "EDOTDOT", value: edotdot}, {key: "EBADMSG", value: ebadmsg}, {key: "EOVERFLOW", value: eoverflow}, {key: "ENOTUNIQ", value: enotuniq},
	{key: "EBADFD", value: ebadfd}, {key: "EREMCHG", value: eremchg}, {key: "ELIBACC", value: elibacc}, {key: "ELIBBAD", value: elibbad},
	{key: "ELIBSCN", value: elibscn}, {key: "ELIBMAX", value: elibmax}, {key: "ELIBEXEC", value: elibexec}, {key: "EILSEQ", value: eilseq},
	{key: "EUSERS", value: eusers}, {key: "ENOTSOCK", value: enotsock}, {key: "EDESTADDRREQ", value: edestaddrreq}, {key: "EMSGSIZE", value: emsgsize},
	{key: "EPROTOTYPE", value: eprototype}, {key: "ENOPROTOOPT", value: enoprotoopt}, {key: "EPROTONOSUPPORT", value: eprotonosupport},
	{key: "ESOCKTNOSUPPORT", value: esocktnosupport}, {key: "EOPNOTSUPP", value: eopnotsupp}, {key: "EPFNOSUPPORT", value: epfnosupport},
	{key: "EAFNOSUPPORT", value: eafnosupport}, {key: "EADDRINUSE", value: eaddrinuse}, {key: "EADDRNOTAVAIL", value: eaddrnotavail},
	{key: "ENETDOWN", value: enetdown}, {key: "ENETUNREACH", value: enetunreach}, {key: "ENETRESET", value: enetreset},
	{key: "ECONNABORTED", value: econnaborted}, {key: "ECONNRESET", value: econnreset}, {key: "ENOBUFS", value: enobufs}, {key: "EISCONN", value: eisconn},
	{key: "ENOTCONN", value: enotconn}, {key: "ESHUTDOWN", value: eshutdown}, {key: "ETOOMANYREFS", value: etoomanyrefs},
	{key: "ETIMEDOUT", value: etimedout}, {key: "ECONNREFUSED", value: econnrefused}, {key: "EHOSTDOWN", value: ehostdown},
	{key: "EHOSTUNREACH", value: ehostunreach}, {key: "EALREADY", value: ealready}, {key: "EINPROGRESS", value: einprogress}, {key: "ESTALE", value: estale},
	{key: "ENOTSUP", value: enotsup}, {key: "ENOMEDIUM", value: enomedium}, {key: "ECANCELED", value: ecanceled}, {key: "ELBIN", value: elbin},
	{key: "EFTYPE", value: eftype}, {key: "ENMFILE", value: enmfile}, {key: "EPROCLIM", value: eproclim}, {key: "ENOSHARE", value: enoshare},
	{key: "ECASECLASH", value: ecaseclash}, {key: "EWOULDBLOCK", value: ewouldblock});

final f_RGETLK:GoInt64 = ((10 : GoUnTypedInt));
final _sys_sem_post:GoInt64 = ((102 : GoUnTypedInt));
final stdout:GoInt64 = ((1 : GoUnTypedInt));
var _signals:GoArray<GoString> = new GoArray<GoString>().copy();
final sigtrap:Signal = new Signal((4 : GoUnTypedInt));
final _sys_readlink:GoInt64 = ((146 : GoUnTypedInt));
final stderr:GoInt64 = ((2 : GoUnTypedInt));
final f_GETFL:GoInt64 = ((3 : GoUnTypedInt));
final ipproto_IPV4:GoInt64 = ((4 : GoUnTypedInt));
final s_IFIFO:GoInt64 = ((4096 : GoUnTypedInt));
final sys_FCNTL:GoInt64 = ((500 : GoUnTypedInt));
final ipproto_IPV6:GoInt64 = ((41 : GoUnTypedInt));
final pathMax:GoInt64 = ((256 : GoUnTypedInt));
final s_IXGRP:GoInt64 = ((8 : GoUnTypedInt));
final _sys_mprotect:GoInt64 = ((24 : GoUnTypedInt));
final _sys_close:GoInt64 = ((11 : GoUnTypedInt));
final s_IFBOUNDSOCK:GoInt64 = ((77824 : GoUnTypedInt));
final s_IFSEMA:GoInt64 = ((94208 : GoUnTypedInt));
var _uint8Array:stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get("Uint8Array");
final _sys_mkdir:GoInt64 = ((45 : GoUnTypedInt));
final af_UNIX = (1 : GoUnTypedInt);
final f_RSETLKW:GoInt64 = ((13 : GoUnTypedInt));
final _sys_exit:GoInt64 = ((30 : GoUnTypedInt));
final af_UNSPEC:GoUnTypedInt = (0 : GoUnTypedInt);
final _sys_cond_timed_wait_abs:GoInt64 = ((79 : GoUnTypedInt));
final _sys_utimes:GoInt64 = ((147 : GoUnTypedInt));
final s_ISUID:GoInt64 = ((2048 : GoUnTypedInt));
var _jsFS:stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get("fs");
var _constants:stdgo.syscall.js.Js.Value = _jsFS.get("constants");
var _nodeCREATE:GoInt = _constants.get("O_CREAT").int();
final _sys_pread:GoInt64 = ((130 : GoUnTypedInt));
final f_SETFD:GoInt64 = ((2 : GoUnTypedInt));
final sock_STREAM:GoUnTypedInt = ((1 : GoUnTypedInt)) + (0 : GoUnTypedInt);
final _sys_brk:GoInt64 = ((20 : GoUnTypedInt));
var _envs:Slice<GoString> = _runtime_envs();
final sigterm:Signal = new Signal((6 : GoUnTypedInt));
final s_IRGRP:GoInt64 = ((32 : GoUnTypedInt));
final s_IFDSOCK:GoInt64 = ((69632 : GoUnTypedInt));
final f_SETFL:GoInt64 = ((4 : GoUnTypedInt));
var _envOnce:stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
final _sys_tls_init:GoInt64 = ((82 : GoUnTypedInt));
final _sys_isatty:GoInt64 = ((19 : GoUnTypedInt));
final _sys_sysconf:GoInt64 = ((33 : GoUnTypedInt));
final _sys_imc_connect:GoInt64 = ((62 : GoUnTypedInt));
final _sys_sem_wait:GoInt64 = ((101 : GoUnTypedInt));
final o_SYNC:GoInt64 = ((4096 : GoUnTypedInt));
var _filesMu:stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
final _0:GoUnTypedInt = (0 : GoUnTypedInt);
final _1:GoUnTypedInt = (0 : GoUnTypedInt);
final sock_SEQPACKET = ((1 : GoUnTypedInt)) + (3 : GoUnTypedInt);
final _sys_clock:GoInt64 = ((41 : GoUnTypedInt));
final _2:Signal = new Signal((0 : GoUnTypedInt));
final s_IFLNK:GoInt64 = ((40960 : GoUnTypedInt));
final _sys_thread_nice:GoInt64 = ((83 : GoUnTypedInt));
final _sys_cond_broadcast:GoInt64 = ((77 : GoUnTypedInt));
final _sys_gettimeofday:GoInt64 = ((40 : GoUnTypedInt));
final _sys_cond_create:GoInt64 = ((74 : GoUnTypedInt));
final implementsGetwd:Bool = true;
final f_GETLK:GoInt64 = ((7 : GoUnTypedInt));
final _sys_access:GoInt64 = ((145 : GoUnTypedInt));
final f_SETOWN:GoInt64 = ((6 : GoUnTypedInt));
final _sys_tls_get:GoInt64 = ((84 : GoUnTypedInt));
final _sys_lstat:GoInt64 = ((141 : GoUnTypedInt));
final _sys_null:GoInt64 = ((1 : GoUnTypedInt));
final _sys_second_tls_get:GoInt64 = ((86 : GoUnTypedInt));
final s_IWOTH:GoInt64 = ((2 : GoUnTypedInt));
var _errENOENT:Error = enoent;
final sigchld:Signal = new Signal((1 : GoUnTypedInt));
final s_IFCHR:GoInt64 = ((8192 : GoUnTypedInt));
final _sys_imc_recvmsg:GoInt64 = ((64 : GoUnTypedInt));
final _sys_sem_get_value:GoInt64 = ((103 : GoUnTypedInt));
final o_TRUNC:GoInt64 = ((512 : GoUnTypedInt));
final _sys_second_tls_set:GoInt64 = ((85 : GoUnTypedInt));
final s_IFSOCK:GoInt64 = ((49152 : GoUnTypedInt));
final _sys_rename:GoInt64 = ((143 : GoUnTypedInt));
final _sys_rmdir:GoInt64 = ((46 : GoUnTypedInt));
final _sys_munmap:GoInt64 = ((22 : GoUnTypedInt));
final o_CREAT:GoInt64 = ((64 : GoUnTypedInt));
final o_CREATE:GoUnTypedInt = o_CREAT;
final f_RDLCK:GoInt64 = ((1 : GoUnTypedInt));
final o_CLOEXEC:GoInt64 = ((0 : GoUnTypedInt));
final ipproto_IP:GoInt64 = ((0 : GoUnTypedInt));
var _jsProcess:stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get("process");
final _sys_exception_stack:GoInt64 = ((88 : GoUnTypedInt));
final s_ISVTX:GoInt64 = ((512 : GoUnTypedInt));
final _sys_mutex_create:GoInt64 = ((70 : GoUnTypedInt));
final f_UNLKSYS:GoInt64 = ((4 : GoUnTypedInt));
final _direntSize:GoUnTypedInt = ((8 : GoUnTypedInt)) + ((8 : GoUnTypedInt)) + ((2 : GoUnTypedInt)) + ((256 : GoUnTypedInt));
final f_SETLK:GoInt64 = ((8 : GoUnTypedInt));
final _sys_dyncode_create:GoInt64 = ((104 : GoUnTypedInt));
var _errEAGAIN:Error = eagain;
final s_IFREG:GoInt64 = ((32768 : GoUnTypedInt));
final _sys_lseek:GoInt64 = ((14 : GoUnTypedInt));
final _sys_mmap:GoInt64 = ((21 : GoUnTypedInt));
final _sys_test_syscall_1:GoInt64 = ((111 : GoUnTypedInt));
final _sys_read:GoInt64 = ((12 : GoUnTypedInt));
final _sys_clock_getres:GoInt64 = ((43 : GoUnTypedInt));
final _sys_test_syscall_2:GoInt64 = ((112 : GoUnTypedInt));
final ipv6_V6ONLY = (1 : GoUnTypedInt);
final _sys_imc_mem_obj_create:GoInt64 = ((65 : GoUnTypedInt));
var _nodeWRONLY:GoInt = _constants.get("O_WRONLY").int();
final _sys_cond_wait:GoInt64 = ((75 : GoUnTypedInt));
final _sys_sched_yield:GoInt64 = ((32 : GoUnTypedInt));
final _sys_open:GoInt64 = ((10 : GoUnTypedInt));
final f_WRLCK:GoInt64 = ((2 : GoUnTypedInt));
final s_IXOTH:GoInt64 = ((1 : GoUnTypedInt));
final f_DUPFD:GoInt64 = ((0 : GoUnTypedInt));
final _sys_thread_exit:GoInt64 = ((81 : GoUnTypedInt));
final _sys_dup:GoInt64 = ((8 : GoUnTypedInt));
final _sys_imc_makeboundsock:GoInt64 = ((60 : GoUnTypedInt));
final _msanenabled:Bool = false;
final _sys_nameservice:GoInt64 = ((2 : GoUnTypedInt));
final _sys_mutex_unlock:GoInt64 = ((73 : GoUnTypedInt));
final sock_DGRAM = ((1 : GoUnTypedInt)) + (1 : GoUnTypedInt);
final _sys_imc_socketpair:GoInt64 = ((66 : GoUnTypedInt));
final somaxconn = (2 : GoUnTypedInt);
var _nodeRDWR:GoInt = _constants.get("O_RDWR").int();
final _sys_clock_gettime:GoInt64 = ((44 : GoUnTypedInt));
final s_IWUSR:GoInt64 = ((128 : GoUnTypedInt));
final s_IROTH:GoInt64 = ((4 : GoUnTypedInt));
final f_DUPFD_CLOEXEC = (1 : GoUnTypedInt);
final _sys_sem_create:GoInt64 = ((100 : GoUnTypedInt));
final ipproto_TCP:GoInt64 = ((6 : GoUnTypedInt));
final so_ERROR = (3 : GoUnTypedInt);
final s_UNSUP:GoInt64 = ((126976 : GoUnTypedInt));
var forkLock:stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
final _sys_nanosleep:GoInt64 = ((42 : GoUnTypedInt));
final sock_RAW = ((1 : GoUnTypedInt)) + (2 : GoUnTypedInt);
final s_IFSHM_SYSV:GoInt64 = ((98304 : GoUnTypedInt));
final _faketime:Bool = false;
final _sys_pwrite:GoInt64 = ((131 : GoUnTypedInt));
final _sys_get_random_bytes:GoInt64 = ((150 : GoUnTypedInt));
final f_SETLKW:GoInt64 = ((9 : GoUnTypedInt));
final s_IFSHM:GoInt64 = ((81920 : GoUnTypedInt));
final _sys_futex_wait_abs:GoInt64 = ((120 : GoUnTypedInt));
final s_IFBLK:GoInt64 = ((24576 : GoUnTypedInt));
var __zero:GoUIntptr = ((0 : GoUIntptr));
final s_IREAD:GoInt64 = ((256 : GoUnTypedInt));
final s_IXUSR:GoInt64 = ((64 : GoUnTypedInt));
final o_RDWR:GoInt64 = ((2 : GoUnTypedInt));
var _env:GoMap<GoString, GoInt> = new GoMap<GoString,
	GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.basic(int_kind)))).nil();
final sigkill:Signal = new Signal((3 : GoUnTypedInt));
final o_WRONLY:GoInt64 = ((1 : GoUnTypedInt));
final _sys_cond_signal:GoInt64 = ((76 : GoUnTypedInt));
final _sys_write:GoInt64 = ((13 : GoUnTypedInt));
final _isBigEndian:Bool = false;
final _sys_exception_handler:GoInt64 = ((87 : GoUnTypedInt));
final s_IRWXG:GoInt64 = ((56 : GoUnTypedInt));
final _sys_link:GoInt64 = ((142 : GoUnTypedInt));
final _sys_symlink:GoInt64 = ((144 : GoUnTypedInt));
final _sys_mutex_trylock:GoInt64 = ((72 : GoUnTypedInt));
final f_GETOWN:GoInt64 = ((5 : GoUnTypedInt));
final s_IWRITE:GoInt64 = ((128 : GoUnTypedInt));
final _sys_test_infoleak:GoInt64 = ((109 : GoUnTypedInt));
final s_IRWXO:GoInt64 = ((7 : GoUnTypedInt));
final s_IRUSR:GoInt64 = ((256 : GoUnTypedInt));
final stdin:GoInt64 = ((0 : GoUnTypedInt));
final _sys_dyncode_modify:GoInt64 = ((105 : GoUnTypedInt));
final o_APPEND:GoInt64 = ((1024 : GoUnTypedInt));
final s_IFDIR:GoInt64 = ((16384 : GoUnTypedInt));
final s_IEXEC:GoInt64 = ((64 : GoUnTypedInt));
final _sys_truncate:GoInt64 = ((140 : GoUnTypedInt));
final af_INET = (2 : GoUnTypedInt);
final s_IRWXU:GoInt64 = ((448 : GoUnTypedInt));
var _nodeAPPEND:GoInt = _constants.get("O_APPEND").int();
final f_RSETLK:GoInt64 = ((11 : GoUnTypedInt));
final f_CNVT:GoInt64 = ((12 : GoUnTypedInt));
final sigquit:Signal = new Signal((5 : GoUnTypedInt));
final _sys_futex_wake:GoInt64 = ((121 : GoUnTypedInt));
final f_UNLCK:GoInt64 = ((3 : GoUnTypedInt));
final _sys_fstat:GoInt64 = ((17 : GoUnTypedInt));
final _sys_chmod:GoInt64 = ((18 : GoUnTypedInt));
var _nodeTRUNC:GoInt = _constants.get("O_TRUNC").int();
var _nodeEXCL:GoInt = _constants.get("O_EXCL").int();
final s_IFSOCKADDR:GoInt64 = ((73728 : GoUnTypedInt));
final _sys_test_crash:GoInt64 = ((110 : GoUnTypedInt));
var _errEINVAL:Error = einval;
final _sys_imc_accept:GoInt64 = ((61 : GoUnTypedInt));
final _sys_unlink:GoInt64 = ((49 : GoUnTypedInt));
final _sys_getpid:GoInt64 = ((31 : GoUnTypedInt));

var _files:GoMap<GoInt, Pointer<T_jsFile>> = new GoMap<GoInt,
	Pointer<T_jsFile>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(int_kind),
	stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("syscall.jsFile", [],
		stdgo.reflect.Reflect.GoType.named("syscall.jsFile", [],
			stdgo.reflect.Reflect.GoType.structType([
				{
					name: "_path",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(string_kind)
				},
				{
					name: "_entries",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))
				},
				{
					name: "_dirIdx",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int_kind)
				},
				{
					name: "_pos",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(int64_kind)
				},
				{
					name: "_seeked",
					embedded: false,
					tag: "",
					type: stdgo.reflect.Reflect.GoType.basic(bool_kind)
				}
			])))))),
	{key: ((0 : GoInt)), value: Go.pointer(new T_jsFile())}, {key: ((1 : GoInt)), value: Go.pointer(new T_jsFile())},
	{key: ((2 : GoInt)), value: Go.pointer(new T_jsFile())});

var _envLock:stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
final _sys_dyncode_delete:GoInt64 = ((106 : GoUnTypedInt));
final _sys_dup2:GoInt64 = ((9 : GoUnTypedInt));
final o_RDONLY:GoInt64 = ((0 : GoUnTypedInt));
final _sys_getcwd:GoInt64 = ((48 : GoUnTypedInt));
final s_IFCOND:GoInt64 = ((90112 : GoUnTypedInt));
final af_INET6 = (3 : GoUnTypedInt);
final _sys_thread_create:GoInt64 = ((80 : GoUnTypedInt));
final _sys_list_mappings:GoInt64 = ((25 : GoUnTypedInt));
final s_IWGRP:GoInt64 = ((16 : GoUnTypedInt));
final s_ISGID:GoInt64 = ((1024 : GoUnTypedInt));
final _sys_chdir:GoInt64 = ((47 : GoUnTypedInt));
final s_IFMT:GoInt64 = ((126976 : GoUnTypedInt));
final _sys_getdents:GoInt64 = ((23 : GoUnTypedInt));
final _sys_imc_sendmsg:GoInt64 = ((63 : GoUnTypedInt));

/**
	// readInt returns the size-bytes unsigned integer in native byte order at offset off.
**/
function _readInt(_b:Slice<GoByte>, _off:GoUIntptr, _size:GoUIntptr):{var _0:GoUInt64; var _1:Bool;} {
	var _u:GoUInt64 = ((0 : GoUInt64)), _ok:Bool = false;
	if (_b.length < (((_off + _size) : GoInt))) {
		return {_0: ((0 : GoUInt64)), _1: false};
	};
	if (_isBigEndian) {
		return {_0: _readIntBE(_b.__slice__(_off), _size), _1: true};
	};
	return {_0: _readIntLE(_b.__slice__(_off), _size), _1: true};
}

function _readIntBE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64 {
	if (_size == ((1 : GoUIntptr))) {
		return ((_b[((0 : GoInt))] : GoUInt64));
	} else if (_size == ((2 : GoUIntptr))) {
		_b[((1 : GoInt))];
		return ((_b[((1 : GoInt))] : GoUInt64)) | (((_b[((0 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt)));
	} else if (_size == ((4 : GoUIntptr))) {
		_b[((3 : GoInt))];
		return
			((_b[((3 : GoInt))] : GoUInt64)) | (((_b[((2 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt)));
	} else if (_size == ((8 : GoUIntptr))) {
		_b[((7 : GoInt))];
		return
			((_b[((7 : GoInt))] : GoUInt64)) | (((_b[((6 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((5 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((4 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt)));
	} else {
		throw "syscall: readInt with unsupported size";
	};
}

function _readIntLE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64 {
	if (_size == ((1 : GoUIntptr))) {
		return ((_b[((0 : GoInt))] : GoUInt64));
	} else if (_size == ((2 : GoUIntptr))) {
		_b[((1 : GoInt))];
		return ((_b[((0 : GoInt))] : GoUInt64)) | (((_b[((1 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt)));
	} else if (_size == ((4 : GoUIntptr))) {
		_b[((3 : GoInt))];
		return
			((_b[((0 : GoInt))] : GoUInt64)) | (((_b[((1 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt)));
	} else if (_size == ((8 : GoUIntptr))) {
		_b[((7 : GoInt))];
		return
			((_b[((0 : GoInt))] : GoUInt64)) | (((_b[((1 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_b[((4 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_b[((5 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_b[((6 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_b[((7 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt)));
	} else {
		throw "syscall: readInt with unsupported size";
	};
}

/**
	// ParseDirent parses up to max directory entries in buf,
	// appending the names to names. It returns the number of
	// bytes consumed from buf, the number of entries added
	// to names, and the new names slice.
**/
function parseDirent(_buf:Slice<GoByte>, _max:GoInt, _names:Slice<GoString>):{var _0:GoInt; var _1:GoInt; var _2:Slice<GoString>;} {
	var _consumed:GoInt = ((0 : GoInt)),
		_count:GoInt = ((0 : GoInt)),
		_newnames:Slice<GoString> = new Slice<GoString>().nil();
	var _origlen:GoInt = _buf.length;
	_count = ((0 : GoInt));
	while (_max != ((0 : GoInt)) && _buf.length > ((0 : GoInt))) {
		var __tmp__ = _direntReclen(_buf),
			_reclen:GoUInt64 = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok || _reclen > ((_buf.length : GoUInt64))) {
			return {_0: _origlen, _1: _count, _2: _names};
		};
		var _rec:Slice<GoUInt8> = _buf.__slice__(0, _reclen);
		_buf = _buf.__slice__(_reclen);
		var __tmp__ = _direntIno(_rec),
			_ino:GoUInt64 = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok) {
			break;
		};
		if (_ino == ((0 : GoUInt64))) {
			continue;
		};
		final _namoff:GoUInt64 = ((stdgo.unsafe.Unsafe.offsetof(Go.toInterface(new Dirent().name)) : GoUInt64));
		var __tmp__ = _direntNamlen(_rec),
			_namlen:GoUInt64 = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok || _namoff + _namlen > ((_rec.length : GoUInt64))) {
			break;
		};
		var _name:Slice<GoUInt8> = _rec.__slice__(_namoff, _namoff + _namlen);
		{
			var _i;
			var _c;
			for (_obj in _name.keyValueIterator()) {
				_i = _obj.key;
				_c = _obj.value;
				if (_c == ((0 : GoUInt8))) {
					_name = _name.__slice__(0, _i);
					break;
				};
			};
		};
		if (((_name : GoString)) == (("." : GoString)) || ((_name : GoString)) == ((".." : GoString))) {
			continue;
		};
		_max--;
		_count++;
		_names = _names.__append__(((_name : GoString)));
	};
	return {_0: _origlen - _buf.length, _1: _count, _2: _names};
}

function _runtime_envs():Slice<GoString>
	throw "not implemeneted";

/**
	// setenv_c and unsetenv_c are provided by the runtime but are no-ops
	// if cgo isn't loaded.
**/
function _setenv_c(_k:GoString, _v:GoString):Void {}

function _unsetenv_c(_k:GoString):Void {}

function _copyenv():Void {
	_env = new GoMap<GoString, GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.basic(int_kind))));
	{
		var _i;
		var _s;
		for (_obj in _envs.keyValueIterator()) {
			_i = _obj.key;
			_s = _obj.value;
			{
				var _j:GoInt = ((0 : GoInt));
				Go.cfor(_j < _s.length, _j++, {
					if (_s[_j] == (("=".code : GoRune))) {
						var _key:GoString = _s.__slice__(0, _j);
						{
							var __tmp__ = _env.exists(_key) ? {value: _env[_key], ok: true} : {value: _env.defaultValue(), ok: false},
								_:GoInt = __tmp__.value,
								_ok:Bool = __tmp__.ok;
							if (!_ok) {
								_env[_key] = _i;
							} else {
								_envs[_i] = "";
							};
						};
						break;
					};
				});
			};
		};
	};
}

function unsetenv(_key:GoString):Error {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	_envOnce.do_(_copyenv);
	try {
		_envLock.lock();
		deferstack.unshift(() -> _envLock.unlock());
		{
			var __tmp__ = _env.exists(_key) ? {value: _env[_key], ok: true} : {value: _env.defaultValue(), ok: false},
				_i:GoInt = __tmp__.value,
				_ok:Bool = __tmp__.ok;
			if (_ok) {
				_envs[_i] = "";
				_env.remove(_key);
			};
		};
		_unsetenv_c(_key);
		{
			for (defer in deferstack) {
				defer();
			};
			return ((null : stdgo.Error));
		};
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return ((null : stdgo.Error));
		};
	};
}

function getenv(_key:GoString):{var _0:GoString; var _1:Bool;} {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	var _value:GoString = (("" : GoString)), _found:Bool = false;
	_envOnce.do_(_copyenv);
	try {
		if (_key.length == ((0 : GoInt))) {
			return {_0: "", _1: false};
		};
		_envLock.rlock();
		deferstack.unshift(() -> _envLock.runlock());
		var __tmp__ = _env.exists(_key) ? {value: _env[_key], ok: true} : {value: _env.defaultValue(), ok: false},
			_i:GoInt = __tmp__.value,
			_ok:Bool = __tmp__.ok;
		if (!_ok) {
			{
				for (defer in deferstack) {
					defer();
				};
				return {_0: "", _1: false};
			};
		};
		var _s:GoString = _envs[_i];
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _s.length, _i++, {
				if (_s[_i] == (("=".code : GoRune))) {
					{
						for (defer in deferstack) {
							defer();
						};
						return {_0: _s.__slice__(_i + ((1 : GoInt))), _1: true};
					};
				};
			});
		};
		{
			for (defer in deferstack) {
				defer();
			};
			return {_0: "", _1: false};
		};
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return {_0: _value, _1: _found};
		};
	};
}

function setenv(_key:GoString, _value:GoString):Error {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	_envOnce.do_(_copyenv);
	try {
		if (_key.length == ((0 : GoInt))) {
			return einval;
		};
		{
			var _i:GoInt = ((0 : GoInt));
			Go.cfor(_i < _key.length, _i++, {
				if (_key[_i] == (("=".code : GoRune)) || _key[_i] == ((0 : GoUInt8))) {
					return einval;
				};
			});
		};
		if (stdgo.runtime.Runtime.goos != (("plan9" : GoString))) {
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _value.length, _i++, {
					if (_value[_i] == ((0 : GoUInt8))) {
						return einval;
					};
				});
			};
		};
		_envLock.lock();
		deferstack.unshift(() -> _envLock.unlock());
		var __tmp__ = _env.exists(_key) ? {value: _env[_key], ok: true} : {value: _env.defaultValue(), ok: false},
			_i:GoInt = __tmp__.value,
			_ok:Bool = __tmp__.ok;
		var _kv:GoString = _key + (("=" : GoString)) + _value;
		if (_ok) {
			_envs[_i] = _kv;
		} else {
			_i = _envs.length;
			_envs = _envs.__append__(_kv);
		};
		_env[_key] = _i;
		_setenv_c(_key, _value);
		{
			for (defer in deferstack) {
				defer();
			};
			return ((null : stdgo.Error));
		};
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return ((null : stdgo.Error));
		};
	};
}

function clearenv():Void {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	try {
		_envOnce.do_(_copyenv);
		_envLock.lock();
		deferstack.unshift(() -> _envLock.unlock());
		{
			var _k;
			for (_obj in _env.keyValueIterator()) {
				_k = _obj.key;
				_unsetenv_c(_k);
			};
		};
		_env = new GoMap<GoString, GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
			stdgo.reflect.Reflect.GoType.basic(int_kind))));
		_envs = new Slice<GoString>();
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return;
		};
	};
}

function environ():Slice<GoString> {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	_envOnce.do_(_copyenv);
	try {
		_envLock.rlock();
		deferstack.unshift(() -> _envLock.runlock());
		var _a:Slice<GoString> = new Slice<GoString>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).setCap(((_envs.length : GoInt))
			.toBasic());
		for (_env in _envs) {
			if (_env != (("" : GoString))) {
				_a = _a.__append__(_env);
			};
		};
		{
			for (defer in deferstack) {
				defer();
			};
			return _a;
		};
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return new Slice<GoString>().nil();
		};
	};
}

/**
	// Provided by package runtime.
**/
function _now():{var _0:GoInt64; var _1:GoInt32;}
	throw "not implemeneted";

function _fdToFile(_fd:GoInt):{var _0:Pointer<T_jsFile>; var _1:Error;} {
	_filesMu.lock();
	var __tmp__ = _files.exists(_fd) ? {value: _files[_fd], ok: true} : {value: _files.defaultValue(), ok: false},
		_f:Pointer<T_jsFile> = __tmp__.value,
		_ok:Bool = __tmp__.ok;
	_filesMu.unlock();
	if (!_ok) {
		return {_0: new Pointer<T_jsFile>().nil(), _1: ebadf};
	};
	return {_0: _f, _1: ((null : stdgo.Error))};
}

function open(_path:GoString, _openmode:GoInt, _perm:GoUInt32):{var _0:GoInt; var _1:Error;} {
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return {_0: ((0 : GoInt)), _1: _err};
		};
	};
	var _flags:GoInt = ((0 : GoInt));
	if (_openmode & o_WRONLY != ((0 : GoInt))) {
		_flags = _flags | (_nodeWRONLY);
	};
	if (_openmode & o_RDWR != ((0 : GoInt))) {
		_flags = _flags | (_nodeRDWR);
	};
	if (_openmode & o_CREATE != ((0 : GoInt))) {
		_flags = _flags | (_nodeCREATE);
	};
	if (_openmode & o_TRUNC != ((0 : GoInt))) {
		_flags = _flags | (_nodeTRUNC);
	};
	if (_openmode & o_APPEND != ((0 : GoInt))) {
		_flags = _flags | (_nodeAPPEND);
	};
	if (_openmode & o_EXCL != ((0 : GoInt))) {
		_flags = _flags | (_nodeEXCL);
	};
	if (_openmode & o_SYNC != ((0 : GoInt))) {
		return {_0: ((0 : GoInt)), _1: stdgo.errors.Errors.new_("syscall.Open: O_SYNC is not supported by js/wasm")};
	};
	var __tmp__ = _fsCall("open", Go.toInterface(_path), Go.toInterface(_flags), Go.toInterface(_perm)),
		_jsFD:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: ((0 : GoInt)), _1: _err};
	};
	var _fd:GoInt = _jsFD.int();
	var _entries:Slice<GoString> = new Slice<GoString>().nil();
	{
		var __tmp__ = _fsCall("fstat", Go.toInterface(_fd)),
			_stat:stdgo.syscall.js.Js.Value = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err == null && _stat.call("isDirectory").bool()) {
			var __tmp__ = _fsCall("readdir", Go.toInterface(_path)),
				_dir:stdgo.syscall.js.Js.Value = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: ((0 : GoInt)), _1: _err};
			};
			_entries = new Slice<GoString>(...[for (i in 0...((_dir.length() : GoInt)).toBasic()) (("" : GoString))]);
			{
				var _i;
				for (_obj in _entries.keyValueIterator()) {
					_i = _obj.key;
					_entries[_i] = _dir.index(_i).toString();
				};
			};
		};
	};
	if (_path[((0 : GoInt))] != (("/".code : GoRune))) {
		var _cwd:GoString = _jsProcess.call("cwd").toString();
		_path = _cwd + (("/" : GoString)) + _path;
	};
	var _f:Pointer<T_jsFile> = Go.pointer((({
		_path: _path,
		_entries: _entries,
		_dirIdx: 0,
		_pos: 0,
		_seeked: false
	} : T_jsFile)));
	_filesMu.lock();
	_files[_fd] = _f;
	_filesMu.unlock();
	return {_0: _fd, _1: ((null : stdgo.Error))};
}

function close(_fd:GoInt):Error {
	_filesMu.lock();
	_files.remove(_fd);
	_filesMu.unlock();
	var __tmp__ = _fsCall("close", Go.toInterface(_fd)),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function closeOnExec(_fd:GoInt):Void {}

function mkdir(_path:GoString, _perm:GoUInt32):Error {
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return _err;
		};
	};
	var __tmp__ = _fsCall("mkdir", Go.toInterface(_path), Go.toInterface(_perm)),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function readDirent(_fd:GoInt, _buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
	var __tmp__ = _fdToFile(_fd),
		_f:Pointer<T_jsFile> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: ((0 : GoInt)), _1: _err};
	};
	if ((_f.value._entries == null || _f.value._entries.isNil())) {
		return {_0: ((0 : GoInt)), _1: einval};
	};
	var _n:GoInt = ((0 : GoInt));
	while (_f.value._dirIdx < _f.value._entries.length) {
		var _entry:GoString = _f.value._entries[_f.value._dirIdx];
		var _l:GoInt = ((2 : GoInt)) + _entry.length;
		if (_l > _buf.length) {
			break;
		};
		_buf[((0 : GoInt))] = ((_l : GoByte));
		_buf[((1 : GoInt))] = (((_l >> ((8 : GoUnTypedInt))) : GoByte));
		Go.copy(_buf.__slice__(((2 : GoInt))), _entry);
		_buf = _buf.__slice__(_l);
		_n = _n + (_l);
		_f.value._dirIdx++;
	};
	return {_0: _n, _1: ((null : stdgo.Error))};
}

function _setStat(_st:Pointer<Stat_t>, _jsSt:stdgo.syscall.js.Js.Value):Void {
	_st.value.dev = ((_jsSt.get("dev").int() : GoInt64));
	_st.value.ino = ((_jsSt.get("ino").int() : GoUInt64));
	_st.value.mode = ((_jsSt.get("mode").int() : GoUInt32));
	_st.value.nlink = ((_jsSt.get("nlink").int() : GoUInt32));
	_st.value.uid = ((_jsSt.get("uid").int() : GoUInt32));
	_st.value.gid = ((_jsSt.get("gid").int() : GoUInt32));
	_st.value.rdev = ((_jsSt.get("rdev").int() : GoInt64));
	_st.value.size = ((_jsSt.get("size").int() : GoInt64));
	_st.value.blksize = ((_jsSt.get("blksize").int() : GoInt32));
	_st.value.blocks = ((_jsSt.get("blocks").int() : GoInt32));
	var _atime:GoInt64 = ((_jsSt.get("atimeMs").int() : GoInt64));
	_st.value.atime = _atime / ((1000 : GoInt64));
	_st.value.atimeNsec = (_atime % ((1000 : GoInt64))) * ((1000000 : GoInt64));
	var _mtime:GoInt64 = ((_jsSt.get("mtimeMs").int() : GoInt64));
	_st.value.mtime = _mtime / ((1000 : GoInt64));
	_st.value.mtimeNsec = (_mtime % ((1000 : GoInt64))) * ((1000000 : GoInt64));
	var _ctime:GoInt64 = ((_jsSt.get("ctimeMs").int() : GoInt64));
	_st.value.ctime = _ctime / ((1000 : GoInt64));
	_st.value.ctimeNsec = (_ctime % ((1000 : GoInt64))) * ((1000000 : GoInt64));
}

function stat(_path:GoString, _st:Pointer<Stat_t>):Error {
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return _err;
		};
	};
	var __tmp__ = _fsCall("stat", Go.toInterface(_path)),
		_jsSt:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return _err;
	};
	_setStat(_st, _jsSt);
	return ((null : stdgo.Error));
}

function lstat(_path:GoString, _st:Pointer<Stat_t>):Error {
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return _err;
		};
	};
	var __tmp__ = _fsCall("lstat", Go.toInterface(_path)),
		_jsSt:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return _err;
	};
	_setStat(_st, _jsSt);
	return ((null : stdgo.Error));
}

function fstat(_fd:GoInt, _st:Pointer<Stat_t>):Error {
	var __tmp__ = _fsCall("fstat", Go.toInterface(_fd)),
		_jsSt:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return _err;
	};
	_setStat(_st, _jsSt);
	return ((null : stdgo.Error));
}

function unlink(_path:GoString):Error {
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return _err;
		};
	};
	var __tmp__ = _fsCall("unlink", Go.toInterface(_path)),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function rmdir(_path:GoString):Error {
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return _err;
		};
	};
	var __tmp__ = _fsCall("rmdir", Go.toInterface(_path)),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function chmod(_path:GoString, _mode:GoUInt32):Error {
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return _err;
		};
	};
	var __tmp__ = _fsCall("chmod", Go.toInterface(_path), Go.toInterface(_mode)),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function fchmod(_fd:GoInt, _mode:GoUInt32):Error {
	var __tmp__ = _fsCall("fchmod", Go.toInterface(_fd), Go.toInterface(_mode)),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function chown(_path:GoString, _uid:GoInt, _gid:GoInt):Error {
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return _err;
		};
	};
	var __tmp__ = _fsCall("chown", Go.toInterface(_path), Go.toInterface(((_uid : GoUInt32))), Go.toInterface(((_gid : GoUInt32)))),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function fchown(_fd:GoInt, _uid:GoInt, _gid:GoInt):Error {
	var __tmp__ = _fsCall("fchown", Go.toInterface(_fd), Go.toInterface(((_uid : GoUInt32))), Go.toInterface(((_gid : GoUInt32)))),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function lchown(_path:GoString, _uid:GoInt, _gid:GoInt):Error {
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return _err;
		};
	};
	if (_jsFS.get("lchown").isUndefined()) {
		return enosys;
	};
	var __tmp__ = _fsCall("lchown", Go.toInterface(_path), Go.toInterface(((_uid : GoUInt32))), Go.toInterface(((_gid : GoUInt32)))),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function utimesNano(_path:GoString, _ts:Slice<Timespec>):Error {
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return _err;
		};
	};
	if (_ts.length != ((2 : GoInt))) {
		return einval;
	};
	var _atime:GoInt64 = _ts[((0 : GoInt))].sec;
	var _mtime:GoInt64 = _ts[((1 : GoInt))].sec;
	var __tmp__ = _fsCall("utimes", Go.toInterface(_path), Go.toInterface(_atime), Go.toInterface(_mtime)),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function rename(_from:GoString, _to:GoString):Error {
	{
		var _err:stdgo.Error = _checkPath(_from);
		if (_err != null) {
			return _err;
		};
	};
	{
		var _err:stdgo.Error = _checkPath(_to);
		if (_err != null) {
			return _err;
		};
	};
	var __tmp__ = _fsCall("rename", Go.toInterface(_from), Go.toInterface(_to)),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function truncate(_path:GoString, _length:GoInt64):Error {
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return _err;
		};
	};
	var __tmp__ = _fsCall("truncate", Go.toInterface(_path), Go.toInterface(_length)),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function ftruncate(_fd:GoInt, _length:GoInt64):Error {
	var __tmp__ = _fsCall("ftruncate", Go.toInterface(_fd), Go.toInterface(_length)),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function getcwd(_buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	{
		var a0 = Go.pointer(_err);
		deferstack.unshift(() -> _recoverErr(a0));
	};
	try {
		var _cwd:GoString = _jsProcess.call("cwd").toString();
		_n = Go.copy(_buf, _cwd);
		{
			for (defer in deferstack) {
				defer();
			};
			return {_0: _n, _1: _err};
		};
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return {_0: _n, _1: _err};
		};
	};
}

function chdir(_path:GoString):Error {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	var _err:Error = ((null : stdgo.Error));
	try {
		{
			var _err:stdgo.Error = _checkPath(_path);
			if (_err != null) {
				return _err;
			};
		};
		{
			var a0 = Go.pointer(_err);
			deferstack.unshift(() -> _recoverErr(a0));
		};
		_jsProcess.call("chdir", Go.toInterface(_path));
		{
			for (defer in deferstack) {
				defer();
			};
			return _err;
		};
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return _err;
		};
	};
}

function fchdir(_fd:GoInt):Error {
	var __tmp__ = _fdToFile(_fd),
		_f:Pointer<T_jsFile> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return _err;
	};
	return chdir(_f.value._path);
}

function readlink(_path:GoString, _buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
	var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return {_0: ((0 : GoInt)), _1: _err};
		};
	};
	var __tmp__ = _fsCall("readlink", Go.toInterface(_path)),
		_dst:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: ((0 : GoInt)), _1: _err};
	};
	_n = Go.copy(_buf, _dst.toString());
	return {_0: _n, _1: ((null : stdgo.Error))};
}

function link(_path:GoString, _link:GoString):Error {
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return _err;
		};
	};
	{
		var _err:stdgo.Error = _checkPath(_link);
		if (_err != null) {
			return _err;
		};
	};
	var __tmp__ = _fsCall("link", Go.toInterface(_path), Go.toInterface(_link)),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function symlink(_path:GoString, _link:GoString):Error {
	{
		var _err:stdgo.Error = _checkPath(_path);
		if (_err != null) {
			return _err;
		};
	};
	{
		var _err:stdgo.Error = _checkPath(_link);
		if (_err != null) {
			return _err;
		};
	};
	var __tmp__ = _fsCall("symlink", Go.toInterface(_path), Go.toInterface(_link)),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function fsync(_fd:GoInt):Error {
	var __tmp__ = _fsCall("fsync", Go.toInterface(_fd)),
		_:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

function read(_fd:GoInt, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
	var __tmp__ = _fdToFile(_fd),
		_f:Pointer<T_jsFile> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: ((0 : GoInt)), _1: _err};
	};
	if (_f.value._seeked) {
		var __tmp__ = pread(_fd, _b, _f.value._pos),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		_f.value._pos = _f.value._pos + (((_n : GoInt64)));
		return {_0: _n, _1: _err};
	};
	var _buf:stdgo.syscall.js.Js.Value = _uint8Array.new_(Go.toInterface(_b.length));
	var __tmp__ = _fsCall("read", Go.toInterface(_fd), Go.toInterface(_buf), Go.toInterface(((0 : GoInt))), Go.toInterface(_b.length), ((null : Sockaddr))),
		_n:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: ((0 : GoInt)), _1: _err};
	};
	stdgo.syscall.js.Js.copyBytesToGo(_b, _buf);
	var _n2:GoInt = _n.int();
	_f.value._pos = _f.value._pos + (((_n2 : GoInt64)));
	return {_0: _n2, _1: _err};
}

function write(_fd:GoInt, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
	var __tmp__ = _fdToFile(_fd),
		_f:Pointer<T_jsFile> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: ((0 : GoInt)), _1: _err};
	};
	if (_f.value._seeked) {
		var __tmp__ = pwrite(_fd, _b, _f.value._pos),
			_n:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		_f.value._pos = _f.value._pos + (((_n : GoInt64)));
		return {_0: _n, _1: _err};
	};
	if (_faketime && (_fd == ((1 : GoInt)) || _fd == ((2 : GoInt)))) {
		var _n:GoInt = _faketimeWrite(_fd, _b);
		if (_n < ((0 : GoInt))) {
			return {_0: ((0 : GoInt)), _1: _errnoErr(new Errno(-_n))};
		};
		return {_0: _n, _1: ((null : stdgo.Error))};
	};
	var _buf:stdgo.syscall.js.Js.Value = _uint8Array.new_(Go.toInterface(_b.length));
	stdgo.syscall.js.Js.copyBytesToJS(_buf, _b);
	var __tmp__ = _fsCall("write", Go.toInterface(_fd), Go.toInterface(_buf), Go.toInterface(((0 : GoInt))), Go.toInterface(_b.length), ((null : Sockaddr))),
		_n:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: ((0 : GoInt)), _1: _err};
	};
	var _n2:GoInt = _n.int();
	_f.value._pos = _f.value._pos + (((_n2 : GoInt64)));
	return {_0: _n2, _1: _err};
}

function pread(_fd:GoInt, _b:Slice<GoByte>, _offset:GoInt64):{var _0:GoInt; var _1:Error;} {
	var _buf:stdgo.syscall.js.Js.Value = _uint8Array.new_(Go.toInterface(_b.length));
	var __tmp__ = _fsCall("read", Go.toInterface(_fd), Go.toInterface(_buf), Go.toInterface(((0 : GoInt))), Go.toInterface(_b.length),
		Go.toInterface(_offset)),
		_n:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: ((0 : GoInt)), _1: _err};
	};
	stdgo.syscall.js.Js.copyBytesToGo(_b, _buf);
	return {_0: _n.int(), _1: ((null : stdgo.Error))};
}

function pwrite(_fd:GoInt, _b:Slice<GoByte>, _offset:GoInt64):{var _0:GoInt; var _1:Error;} {
	var _buf:stdgo.syscall.js.Js.Value = _uint8Array.new_(Go.toInterface(_b.length));
	stdgo.syscall.js.Js.copyBytesToJS(_buf, _b);
	var __tmp__ = _fsCall("write", Go.toInterface(_fd), Go.toInterface(_buf), Go.toInterface(((0 : GoInt))), Go.toInterface(_b.length),
		Go.toInterface(_offset)),
		_n:stdgo.syscall.js.Js.Value = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: ((0 : GoInt)), _1: _err};
	};
	return {_0: _n.int(), _1: ((null : stdgo.Error))};
}

function seek(_fd:GoInt, _offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;} {
	var __tmp__ = _fdToFile(_fd),
		_f:Pointer<T_jsFile> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: ((0 : GoInt64)), _1: _err};
	};
	var _newPos:GoInt64 = ((0 : GoInt64));
	if (_whence == ((0 : GoInt))) {
		_newPos = _offset;
	} else if (_whence == ((1 : GoInt))) {
		_newPos = _f.value._pos + _offset;
	} else if (_whence == ((2 : GoInt))) {
		var _st:Stat_t = new Stat_t();
		{
			var _err:stdgo.Error = fstat(_fd, Go.pointer(_st));
			if (_err != null) {
				return {_0: ((0 : GoInt64)), _1: _err};
			};
		};
		_newPos = _st.size + _offset;
	} else {
		return {_0: ((0 : GoInt64)), _1: _errnoErr(einval)};
	};
	if (_newPos < ((0 : GoInt64))) {
		return {_0: ((0 : GoInt64)), _1: _errnoErr(einval)};
	};
	_f.value._seeked = true;
	_f.value._dirIdx = ((0 : GoInt));
	_f.value._pos = _newPos;
	return {_0: _newPos, _1: ((null : stdgo.Error))};
}

function dup(_fd:GoInt):{var _0:GoInt; var _1:Error;} {
	return {_0: ((0 : GoInt)), _1: enosys};
}

function dup2(_fd:GoInt, _newfd:GoInt):Error {
	return enosys;
}

function pipe(_fd:Slice<GoInt>):Error {
	return enosys;
}

@:structInit class T_callResult__fsCall_0 {
	public var _val:stdgo.syscall.js.Js.Value = ((null : stdgo.syscall.js.Js.Value));
	public var _err:stdgo.Error = ((null : stdgo.Error));

	public function new(?_val:stdgo.syscall.js.Js.Value, ?_err:stdgo.Error)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_val) + " " + Go.string(_err) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_callResult__fsCall_0(_val, _err);
	}

	public function __set__(__tmp__) {
		this._val = __tmp__._val;
		this._err = __tmp__._err;
		return this;
	}
}

function _fsCall(_name:GoString, _args:haxe.Rest<AnyInterface>):{var _0:stdgo.syscall.js.Js.Value; var _1:Error;} {
	var _args = new Slice<AnyInterface>(..._args);
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	{};
	var _c:Chan<T_callResult__fsCall_0> = new Chan<T_callResult__fsCall_0>(((((1 : GoInt)) : GoInt)).toBasic(), () -> new T_callResult__fsCall_0());
	try {
		var _f:stdgo.syscall.js.Js.Func = stdgo.syscall.js.Js.funcOf(function(_this:stdgo.syscall.js.Js.Value,
				_args:Slice<stdgo.syscall.js.Js.Value>):AnyInterface {
			var _res:T_callResult__fsCall_0 = new T_callResult__fsCall_0();
			if (_args.length >= ((1 : GoInt))) {
				{
					var _jsErr:stdgo.syscall.js.Js.Value = _args[((0 : GoInt))];
					if (!_jsErr.isNull()) {
						_res._err = _mapJSError(_jsErr);
					};
				};
			};
			_res._val = stdgo.syscall.js.Js.undefined();
			if (_args.length >= ((2 : GoInt))) {
				_res._val = _args[((1 : GoInt))];
			};
			_c.send(_res);
			return ((null : Sockaddr));
		});
		deferstack.unshift(() -> _f.release());
		_jsFS.call(_name, ..._args.__append__(Go.toInterface(_f)).toArray());
		var _res:T_callResult__fsCall_0 = _c.get();
		{
			for (defer in deferstack) {
				defer();
			};
			return {_0: _res._val, _1: _res._err};
		};
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return {_0: ((null : stdgo.syscall.js.Js.Value)), _1: ((null : stdgo.Error))};
		};
	};
}

/**
	// checkPath checks that the path is not empty and that it contains no null characters.
**/
function _checkPath(_path:GoString):Error {
	if (_path == (("" : GoString))) {
		return einval;
	};
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _path.length, _i++, {
			if (_path[_i] == (("\u{0000}".code : GoRune))) {
				return einval;
			};
		});
	};
	return ((null : stdgo.Error));
}

function _recoverErr(_errPtr:Pointer<Error>):Void {}

/**
	// mapJSError maps an error given by Node.js to the appropriate Go error
**/
function _mapJSError(_jsErr:stdgo.syscall.js.Js.Value):Error {
	return null;
}

function _msanRead(_addr:stdgo.unsafe.Unsafe.Pointer_, _len:GoInt):Void {}
function _msanWrite(_addr:stdgo.unsafe.Unsafe.Pointer_, _len:GoInt):Void {}

function socket(_proto:GoInt, _sotype:GoInt, _unused:GoInt):{var _0:GoInt; var _1:Error;} {
	var _fd:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	return {_0: ((0 : GoInt)), _1: enosys};
}

function bind(_fd:GoInt, _sa:Sockaddr):Error {
	return enosys;
}

function stopIO(_fd:GoInt):Error {
	return enosys;
}

function listen(_fd:GoInt, _backlog:GoInt):Error {
	return enosys;
}

function accept(_fd:GoInt):{var _0:GoInt; var _1:Sockaddr; var _2:Error;} {
	var _newfd:GoInt = ((0 : GoInt)),
		_sa:Sockaddr = ((null : Sockaddr)),
		_err:Error = ((null : stdgo.Error));
	return {_0: ((0 : GoInt)), _1: ((null : Sockaddr)), _2: enosys};
}

function connect(_fd:GoInt, _sa:Sockaddr):Error {
	return enosys;
}

function recvfrom(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt):{var _0:GoInt; var _1:Sockaddr; var _2:Error;} {
	var _n:GoInt = ((0 : GoInt)),
		_from:Sockaddr = ((null : Sockaddr)),
		_err:Error = ((null : stdgo.Error));
	return {_0: ((0 : GoInt)), _1: ((null : Sockaddr)), _2: enosys};
}

function sendto(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt, _to:Sockaddr):Error {
	return enosys;
}

function recvmsg(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _flags:GoInt):{
	var _0:GoInt;
	var _1:GoInt;
	var _2:GoInt;
	var _3:Sockaddr;
	var _4:Error;
} {
	var _n:GoInt = ((0 : GoInt)),
		_oobn:GoInt = ((0 : GoInt)),
		_recvflags:GoInt = ((0 : GoInt)),
		_from:Sockaddr = ((null : Sockaddr)),
		_err:Error = ((null : stdgo.Error));
	return {
		_0: ((0 : GoInt)),
		_1: ((0 : GoInt)),
		_2: ((0 : GoInt)),
		_3: ((null : Sockaddr)),
		_4: enosys
	};
}

function sendmsgN(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _to:Sockaddr, _flags:GoInt):{var _0:GoInt; var _1:Error;} {
	var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	return {_0: ((0 : GoInt)), _1: enosys};
}

function getsockoptInt(_fd:GoInt, _level:GoInt, _opt:GoInt):{var _0:GoInt; var _1:Error;} {
	var _value:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	return {_0: ((0 : GoInt)), _1: enosys};
}

function setsockoptInt(_fd:GoInt, _level:GoInt, _opt:GoInt, _value:GoInt):Error {
	return ((null : stdgo.Error));
}

function setReadDeadline(_fd:GoInt, _t:GoInt64):Error {
	return enosys;
}

function setWriteDeadline(_fd:GoInt, _t:GoInt64):Error {
	return enosys;
}

function shutdown(_fd:GoInt, _how:GoInt):Error {
	return enosys;
}

function setNonblock(_fd:GoInt, _nonblocking:Bool):Error {
	return ((null : stdgo.Error));
}

/**
	// StringByteSlice converts a string to a NUL-terminated []byte,
	// If s contains a NUL byte this function panics instead of
	// returning an error.
	//
	// Deprecated: Use ByteSliceFromString instead.
**/
function stringByteSlice(_s:GoString):Slice<GoByte> {
	var __tmp__ = byteSliceFromString(_s),
		_a:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		throw "syscall: string with NUL passed to StringByteSlice";
	};
	return _a;
}

/**
	// ByteSliceFromString returns a NUL-terminated slice of bytes
	// containing the text of s. If s contains a NUL byte at any
	// location, it returns (nil, EINVAL).
**/
function byteSliceFromString(_s:GoString):{var _0:Slice<GoByte>; var _1:Error;} {
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			if (_s[_i] == ((0 : GoUInt8))) {
				return {_0: new Slice<GoUInt8>().nil(), _1: einval};
			};
		});
	};
	var _a:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_s.length + ((1 : GoInt)):GoInt)).toBasic()) ((0 : GoUInt8))]);
	Go.copy(_a, _s);
	return {_0: _a, _1: ((null : stdgo.Error))};
}

/**
	// StringBytePtr returns a pointer to a NUL-terminated array of bytes.
	// If s contains a NUL byte this function panics instead of returning
	// an error.
	//
	// Deprecated: Use BytePtrFromString instead.
**/
function stringBytePtr(_s:GoString):Pointer<GoByte> {
	return Go.pointer(stringByteSlice(_s)[((0 : GoInt))]);
}

/**
	// BytePtrFromString returns a pointer to a NUL-terminated array of
	// bytes containing the text of s. If s contains a NUL byte at any
	// location, it returns (nil, EINVAL).
**/
function bytePtrFromString(_s:GoString):{var _0:Pointer<GoByte>; var _1:Error;} {
	var __tmp__ = byteSliceFromString(_s),
		_a:Slice<GoUInt8> = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: new Pointer<GoUInt8>().nil(), _1: _err};
	};
	return {_0: Go.pointer(_a[((0 : GoInt))]), _1: ((null : stdgo.Error))};
}

function getpagesize():GoInt
	throw "not implemeneted";

function exit(_code:GoInt):Void {}

function _direntIno(_buf:Slice<GoByte>):{var _0:GoUInt64; var _1:Bool;} {
	return {_0: ((1 : GoUInt64)), _1: true};
}

function _direntReclen(_buf:Slice<GoByte>):{var _0:GoUInt64; var _1:Bool;} {
	return _readInt(_buf, stdgo.unsafe.Unsafe.offsetof(Go.toInterface(new Dirent().reclen)), stdgo.unsafe.Unsafe.sizeof(Go.toInterface(new Dirent().reclen)));
}

function _direntNamlen(_buf:Slice<GoByte>):{var _0:GoUInt64; var _1:Bool;} {
	var __tmp__ = _direntReclen(_buf),
		_reclen:GoUInt64 = __tmp__._0,
		_ok:Bool = __tmp__._1;
	if (!_ok) {
		return {_0: ((0 : GoUInt64)), _1: false};
	};
	return {_0: _reclen - ((stdgo.unsafe.Unsafe.offsetof(Go.toInterface(new Dirent().name)) : GoUInt64)), _1: true};
}

function syscall(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr):{var _0:GoUIntptr; var _1:GoUIntptr; var _2:Errno;} {
	var _r1:GoUIntptr = ((0 : GoUIntptr)),
		_r2:GoUIntptr = ((0 : GoUIntptr)),
		_err:Errno = new Errno();
	return {_0: ((0 : GoUIntptr)), _1: ((0 : GoUIntptr)), _2: enosys};
}

function syscall6(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr, _a4:GoUIntptr, _a5:GoUIntptr,
		_a6:GoUIntptr):{var _0:GoUIntptr; var _1:GoUIntptr; var _2:Errno;} {
	var _r1:GoUIntptr = ((0 : GoUIntptr)),
		_r2:GoUIntptr = ((0 : GoUIntptr)),
		_err:Errno = new Errno();
	return {_0: ((0 : GoUIntptr)), _1: ((0 : GoUIntptr)), _2: enosys};
}

function rawSyscall(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr):{var _0:GoUIntptr; var _1:GoUIntptr; var _2:Errno;} {
	var _r1:GoUIntptr = ((0 : GoUIntptr)),
		_r2:GoUIntptr = ((0 : GoUIntptr)),
		_err:Errno = new Errno();
	return {_0: ((0 : GoUIntptr)), _1: ((0 : GoUIntptr)), _2: enosys};
}

function rawSyscall6(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr, _a4:GoUIntptr, _a5:GoUIntptr,
		_a6:GoUIntptr):{var _0:GoUIntptr; var _1:GoUIntptr; var _2:Errno;} {
	var _r1:GoUIntptr = ((0 : GoUIntptr)),
		_r2:GoUIntptr = ((0 : GoUIntptr)),
		_err:Errno = new Errno();
	return {_0: ((0 : GoUIntptr)), _1: ((0 : GoUIntptr)), _2: enosys};
}

function sysctl(_key:GoString):{var _0:GoString; var _1:Error;} {
	if (_key == (("kern.hostname" : GoString))) {
		return {_0: "js", _1: ((null : stdgo.Error))};
	};
	return {_0: "", _1: enosys};
}

function getwd():{var _0:GoString; var _1:Error;} {
	var _wd:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
	var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...256) ((0 : GoUInt8))]);
	var __tmp__ = getcwd(_buf.__slice__(((0 : GoInt)))),
		_n:GoInt = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	if (_err != null) {
		return {_0: "", _1: _err};
	};
	return {_0: ((_buf.__slice__(0, _n) : GoString)), _1: ((null : stdgo.Error))};
}

function getuid():GoInt {
	return _jsProcess.call("getuid").int();
}

function getgid():GoInt {
	return _jsProcess.call("getgid").int();
}

function geteuid():GoInt {
	return _jsProcess.call("geteuid").int();
}

function getegid():GoInt {
	return _jsProcess.call("getegid").int();
}

function getgroups():{var _0:Slice<GoInt>; var _1:Error;} {
	var recover_exception:Error = null;
	var deferstack:Array<Void->Void> = [];
	var _groups:Slice<GoInt> = new Slice<GoInt>().nil(),
		_err:Error = ((null : stdgo.Error));
	{
		var a0 = Go.pointer(_err);
		deferstack.unshift(() -> _recoverErr(a0));
	};
	try {
		var _array:stdgo.syscall.js.Js.Value = _jsProcess.call("getgroups");
		_groups = new Slice<GoInt>(...[for (i in 0...((_array.length() : GoInt)).toBasic()) ((0 : GoInt))]);
		{
			var _i;
			for (_obj in _groups.keyValueIterator()) {
				_i = _obj.key;
				_groups[_i] = _array.index(_i).int();
			};
		};
		{
			for (defer in deferstack) {
				defer();
			};
			return {_0: _groups, _1: ((null : stdgo.Error))};
		};
		for (defer in deferstack) {
			defer();
		};
	} catch (e) {
		recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
		{
			for (defer in deferstack) {
				defer();
			};
			if (recover_exception != null)
				throw recover_exception;
			return {_0: _groups, _1: _err};
		};
	};
}

function getpid():GoInt {
	return _jsProcess.get("pid").int();
}

function getppid():GoInt {
	return _jsProcess.get("ppid").int();
}

function umask(_mask:GoInt):GoInt {
	var _oldmask:GoInt = ((0 : GoInt));
	return _jsProcess.call("umask", Go.toInterface(_mask)).int();
}

function gettimeofday(_tv:Pointer<Timeval>):Error {
	return enosys;
}

function kill(_pid:GoInt, _signum:Signal):Error {
	return enosys;
}

function sendfile(_outfd:GoInt, _infd:GoInt, _offset:Pointer<GoInt64>, _count:GoInt):{var _0:GoInt; var _1:Error;} {
	var _written:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	return {_0: ((0 : GoInt)), _1: enosys};
}

function startProcess(_argv0:GoString, _argv:Slice<GoString>, _attr:Pointer<ProcAttr>):{var _0:GoInt; var _1:GoUIntptr; var _2:Error;} {
	var _pid:GoInt = ((0 : GoInt)),
		_handle:GoUIntptr = ((0 : GoUIntptr)),
		_err:Error = ((null : stdgo.Error));
	return {_0: ((0 : GoInt)), _1: ((0 : GoUIntptr)), _2: enosys};
}

function wait4(_pid:GoInt, _wstatus:Pointer<WaitStatus>, _options:GoInt, _rusage:Pointer<Rusage>):{var _0:GoInt; var _1:Error;} {
	var _wpid:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
	return {_0: ((0 : GoInt)), _1: enosys};
}

function _setTimespec(_sec:GoInt64, _nsec:GoInt64):Timespec {
	return (({sec: _sec, nsec: _nsec} : Timespec)).__copy__();
}

function _setTimeval(_sec:GoInt64, _usec:GoInt64):Timeval {
	return (({sec: _sec, usec: _usec} : Timeval)).__copy__();
}

/**
	// errnoErr returns common boxed Errno values, to prevent
	// allocations at runtime.
**/
function _errnoErr(_e:Errno):Error {
	if (_e.__t__ == ((0 : GoUIntptr))) {
		return ((null : stdgo.Error));
	} else if (_e.__t__ == eagain.__t__) {
		return _errEAGAIN;
	} else if (_e.__t__ == einval.__t__) {
		return _errEINVAL;
	} else if (_e.__t__ == enoent.__t__) {
		return _errENOENT;
	};
	return _e;
}

function _faketimeWrite(_fd:GoInt, _p:Slice<GoByte>):GoInt {
	throw "not implemented";
}

/**
	// TimespecToNSec returns the time stored in ts as nanoseconds.
**/
function timespecToNsec(_ts:Timespec):GoInt64 {
	return _ts.nano();
}

/**
	// NsecToTimespec converts a number of nanoseconds into a Timespec.
**/
function nsecToTimespec(_nsec:GoInt64):Timespec {
	var _sec:GoInt64 = _nsec / ((1e+09 : GoInt64));
	_nsec = _nsec % ((1e+09 : GoInt64));
	if (_nsec < ((0 : GoInt64))) {
		_nsec = _nsec + (((1e+09 : GoInt64)));
		_sec--;
	};
	return _setTimespec(_sec, _nsec).__copy__();
}

/**
	// TimevalToNsec returns the time stored in tv as nanoseconds.
**/
function timevalToNsec(_tv:Timeval):GoInt64 {
	return _tv.nano();
}

/**
	// NsecToTimeval converts a number of nanoseconds into a Timeval.
**/
function nsecToTimeval(_nsec:GoInt64):Timeval {
	_nsec = _nsec + (((999 : GoInt64)));
	var _usec:GoInt64 = _nsec % ((1e+09 : GoInt64)) / ((1000 : GoInt64));
	var _sec:GoInt64 = _nsec / ((1e+09 : GoInt64));
	if (_usec < ((0 : GoInt64))) {
		_usec = _usec + (((1e+06 : GoInt64)));
		_sec--;
	};
	return _setTimeval(_sec, _usec).__copy__();
}

class Errno_extension_fields {
	public function error(__tmp__):GoString
		return __tmp__.error();

	public function is_(__tmp__, _target:Error):Bool
		return __tmp__.is_(_target);

	public function temporary(__tmp__):Bool
		return __tmp__.temporary();

	public function timeout(__tmp__):Bool
		return __tmp__.timeout();
}

class Signal_extension_fields {
	public function signal(__tmp__):Void
		__tmp__.signal();

	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class WaitStatus_extension_fields {
	public function exited(__tmp__):Bool
		return __tmp__.exited();

	public function exitStatus(__tmp__):GoInt
		return __tmp__.exitStatus();

	public function signaled(__tmp__):Bool
		return __tmp__.signaled();

	public function signal(__tmp__):Signal
		return __tmp__.signal();

	public function coreDump(__tmp__):Bool
		return __tmp__.coreDump();

	public function stopped(__tmp__):Bool
		return __tmp__.stopped();

	public function continued(__tmp__):Bool
		return __tmp__.continued();

	public function stopSignal(__tmp__):Signal
		return __tmp__.stopSignal();

	public function trapCause(__tmp__):GoInt
		return __tmp__.trapCause();
}

class Timespec_extension_fields {
	public function unix(__tmp__):{var _0:GoInt64; var _1:GoInt64;}
		return __tmp__.unix();

	public function nano(__tmp__):GoInt64
		return __tmp__.nano();
}

class Timeval_extension_fields {
	public function unix(__tmp__):{var _0:GoInt64; var _1:GoInt64;}
		return __tmp__.unix();

	public function nano(__tmp__):GoInt64
		return __tmp__.nano();
}
