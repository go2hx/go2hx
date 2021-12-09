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

@:structInit class SockaddrInet4 {
	public var port:GoInt = ((0 : GoInt));
	public var addr:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);

	public function new(?port:GoInt, ?addr:GoArray<GoUInt8>) {
		if (port != null)
			this.port = port;
		if (addr != null)
			this.addr = addr;
	}

	public function toString() {
		return "{" + Go.string(port) + " " + Go.string(addr) + "}";
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

	public function new(?port:GoInt, ?zoneId:GoUInt32, ?addr:GoArray<GoUInt8>) {
		if (port != null)
			this.port = port;
		if (zoneId != null)
			this.zoneId = zoneId;
		if (addr != null)
			this.addr = addr;
	}

	public function toString() {
		return "{" + Go.string(port) + " " + Go.string(zoneId) + " " + Go.string(addr) + "}";
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

	public function new(?name:GoString) {
		if (name != null)
			this.name = name;
	}

	public function toString() {
		return "{" + Go.string(name) + "}";
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

	public function new(?reclen:GoUInt16, ?name:GoArray<GoUInt8>) {
		if (reclen != null)
			this.reclen = reclen;
		if (name != null)
			this.name = name;
	}

	public function toString() {
		return "{" + Go.string(reclen) + " " + Go.string(name) + "}";
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
	public function timeout():Bool
		return false;

	public function temporary():Bool
		return false;

	public function is_(_target:Error):Bool
		return false;

	public function error():GoString
		return (("" : GoString));

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
	public function toString():GoString
		return (("" : GoString));

	public function signal():Void
		return;

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
			?blksize:GoInt32, ?blocks:GoInt32, ?atime:GoInt64, ?atimeNsec:GoInt64, ?mtime:GoInt64, ?mtimeNsec:GoInt64, ?ctime:GoInt64, ?ctimeNsec:GoInt64) {
		if (dev != null)
			this.dev = dev;
		if (ino != null)
			this.ino = ino;
		if (mode != null)
			this.mode = mode;
		if (nlink != null)
			this.nlink = nlink;
		if (uid != null)
			this.uid = uid;
		if (gid != null)
			this.gid = gid;
		if (rdev != null)
			this.rdev = rdev;
		if (size != null)
			this.size = size;
		if (blksize != null)
			this.blksize = blksize;
		if (blocks != null)
			this.blocks = blocks;
		if (atime != null)
			this.atime = atime;
		if (atimeNsec != null)
			this.atimeNsec = atimeNsec;
		if (mtime != null)
			this.mtime = mtime;
		if (mtimeNsec != null)
			this.mtimeNsec = mtimeNsec;
		if (ctime != null)
			this.ctime = ctime;
		if (ctimeNsec != null)
			this.ctimeNsec = ctimeNsec;
	}

	public function toString() {
		return "{" + Go.string(dev) + " " + Go.string(ino) + " " + Go.string(mode) + " " + Go.string(nlink) + " " + Go.string(uid) + " " + Go.string(gid)
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
	public function trapCause():GoInt
		return ((0 : GoInt));

	public function stopSignal():Signal
		return new Signal();

	public function continued():Bool
		return false;

	public function stopped():Bool
		return false;

	public function coreDump():Bool
		return false;

	public function signal():Signal
		return new Signal();

	public function signaled():Bool
		return false;

	public function exitStatus():GoInt
		return ((0 : GoInt));

	public function exited():Bool
		return false;

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

	public function new(?utime:Timeval, ?stime:Timeval) {
		if (utime != null)
			this.utime = utime;
		if (stime != null)
			this.stime = stime;
	}

	public function toString() {
		return "{" + Go.string(utime) + " " + Go.string(stime) + "}";
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

	public function new(?dir:GoString, ?env:Slice<GoString>, ?files:Slice<GoUIntptr>, ?sys:Pointer<SysProcAttr>) {
		if (dir != null)
			this.dir = dir;
		if (env != null)
			this.env = env;
		if (files != null)
			this.files = files;
		if (sys != null)
			this.sys = sys;
	}

	public function toString() {
		return "{" + Go.string(dir) + " " + Go.string(env) + " " + Go.string(files) + " " + Go.string(sys) + "}";
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
	public function new() {}

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
	public function new() {}

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
	public function nano():GoInt64
		return ((0 : GoInt64));

	public function unix():{var _0:GoInt64; var _1:GoInt64;}
		return {_0: ((0 : GoInt64)), _1: ((0 : GoInt64))};

	public var sec:GoInt64 = ((0 : GoInt64));
	public var nsec:GoInt64 = ((0 : GoInt64));

	public function new(?sec:GoInt64, ?nsec:GoInt64) {
		if (sec != null)
			this.sec = sec;
		if (nsec != null)
			this.nsec = nsec;
	}

	public function toString() {
		return "{" + Go.string(sec) + " " + Go.string(nsec) + "}";
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
	public function nano():GoInt64
		return ((0 : GoInt64));

	public function unix():{var _0:GoInt64; var _1:GoInt64;}
		return {_0: ((0 : GoInt64)), _1: ((0 : GoInt64))};

	public var sec:GoInt64 = ((0 : GoInt64));
	public var usec:GoInt64 = ((0 : GoInt64));

	public function new(?sec:GoInt64, ?usec:GoInt64) {
		if (sec != null)
			this.sec = sec;
		if (usec != null)
			this.usec = usec;
	}

	public function toString() {
		return "{" + Go.string(sec) + " " + Go.string(usec) + "}";
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

final etimedout:Errno = new Errno(((110 : GoUIntptr)));
final s_IFSHM_SYSV:GoInt64 = ((98304 : GoUnTypedInt));
final elnrng:Errno = new Errno(((48 : GoUIntptr)));
final esocktnosupport:Errno = new Errno(((94 : GoUIntptr)));
final eperm:Errno = new Errno(((1 : GoUIntptr)));
final edeadlk:Errno = new Errno(((35 : GoUIntptr)));
final edeadlock:Errno = edeadlk;
final f_SETFD:GoInt64 = ((2 : GoUnTypedInt));
final eprototype:Errno = new Errno(((91 : GoUIntptr)));
final enolck:Errno = new Errno(((37 : GoUIntptr)));
final s_IROTH:GoInt64 = ((4 : GoUnTypedInt));
final erange:Errno = new Errno(((34 : GoUIntptr)));
final enotty:Errno = new Errno(((25 : GoUIntptr)));
final f_SETLK:GoInt64 = ((8 : GoUnTypedInt));
final sock_RAW = ((1 : GoUnTypedInt)) + (2 : GoUnTypedInt);
final econnaborted:Errno = new Errno(((103 : GoUIntptr)));
final enetreset:Errno = new Errno(((102 : GoUIntptr)));
final s_IFBLK:GoInt64 = ((24576 : GoUnTypedInt));
final exdev:Errno = new Errno(((18 : GoUIntptr)));
final s_ISUID:GoInt64 = ((2048 : GoUnTypedInt));
final epfnosupport:Errno = new Errno(((96 : GoUIntptr)));
final o_EXCL:GoInt64 = ((128 : GoUnTypedInt));
final f_GETFD:GoInt64 = ((1 : GoUnTypedInt));
final elbin:Errno = new Errno(((2048 : GoUIntptr)));
final f_SETFL:GoInt64 = ((4 : GoUnTypedInt));
final emultihop:Errno = new Errno(((72 : GoUIntptr)));
final f_GETLK:GoInt64 = ((7 : GoUnTypedInt));
var forkLock:stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
final eisdir:Errno = new Errno(((21 : GoUIntptr)));
final ebadmsg:Errno = new Errno(((74 : GoUIntptr)));
final s_IFSEMA:GoInt64 = ((94208 : GoUnTypedInt));
final enfile:Errno = new Errno(((23 : GoUIntptr)));
final s_IRWXG:GoInt64 = ((56 : GoUnTypedInt));
final af_INET6 = (3 : GoUnTypedInt);
final enosr:Errno = new Errno(((63 : GoUIntptr)));
final f_SETOWN:GoInt64 = ((6 : GoUnTypedInt));
final enomem:Errno = new Errno(((12 : GoUIntptr)));
final f_RSETLK:GoInt64 = ((11 : GoUnTypedInt));
final etoomanyrefs:Errno = new Errno(((109 : GoUIntptr)));
final econnreset:Errno = new Errno(((104 : GoUIntptr)));
final eintr:Errno = new Errno(((4 : GoUIntptr)));
final eexist:Errno = new Errno(((17 : GoUIntptr)));
final epipe:Errno = new Errno(((32 : GoUIntptr)));
final ecaseclash:Errno = new Errno(((2053 : GoUIntptr)));
final f_GETFL:GoInt64 = ((3 : GoUnTypedInt));
final eftype:Errno = new Errno(((2049 : GoUIntptr)));
final ipproto_UDP:GoInt64 = ((17 : GoUnTypedInt));
final sock_DGRAM = ((1 : GoUnTypedInt)) + (1 : GoUnTypedInt);
final s_IRUSR:GoInt64 = ((256 : GoUnTypedInt));
final enxio:Errno = new Errno(((6 : GoUIntptr)));
final el3rst:Errno = new Errno(((47 : GoUIntptr)));
final o_SYNC:GoInt64 = ((4096 : GoUnTypedInt));
final s_IXGRP:GoInt64 = ((8 : GoUnTypedInt));
final o_CREAT:GoInt64 = ((64 : GoUnTypedInt));
final o_CREATE:GoUnTypedInt = o_CREAT;
final elibscn:Errno = new Errno(((81 : GoUIntptr)));
final ecomm:Errno = new Errno(((70 : GoUIntptr)));
final emlink:Errno = new Errno(((31 : GoUIntptr)));
final e2big:Errno = new Errno(((7 : GoUIntptr)));
final s_IRWXO:GoInt64 = ((7 : GoUnTypedInt));
final eremchg:Errno = new Errno(((78 : GoUIntptr)));
final enobufs:Errno = new Errno(((105 : GoUIntptr)));
final eoverflow:Errno = new Errno(((75 : GoUIntptr)));
final exfull:Errno = new Errno(((54 : GoUIntptr)));
final elibbad:Errno = new Errno(((80 : GoUIntptr)));
final s_IWRITE:GoInt64 = ((128 : GoUnTypedInt));
final s_IFMUTEX:GoInt64 = ((86016 : GoUnTypedInt));
final eaddrnotavail:Errno = new Errno(((99 : GoUIntptr)));
final eloop:Errno = new Errno(((40 : GoUIntptr)));
final s_IFCHR:GoInt64 = ((8192 : GoUnTypedInt));
final ebfont:Errno = new Errno(((59 : GoUIntptr)));
final enotconn:Errno = new Errno(((107 : GoUIntptr)));
final edestaddrreq:Errno = new Errno(((89 : GoUIntptr)));
final s_IRWXU:GoInt64 = ((448 : GoUnTypedInt));
final af_UNIX = (1 : GoUnTypedInt);
final eopnotsupp:Errno = new Errno(((95 : GoUIntptr)));
final enotdir:Errno = new Errno(((20 : GoUIntptr)));
final s_ISGID:GoInt64 = ((1024 : GoUnTypedInt));
final edom:Errno = new Errno(((33 : GoUIntptr)));
final s_IWOTH:GoInt64 = ((2 : GoUnTypedInt));
final stderr:GoInt64 = ((2 : GoUnTypedInt));
final eio:Errno = new Errno(((5 : GoUIntptr)));
final s_UNSUP:GoInt64 = ((126976 : GoUnTypedInt));
final enomedium:Errno = new Errno(((123 : GoUIntptr)));
final el2hlt:Errno = new Errno(((51 : GoUIntptr)));
final o_TRUNC:GoInt64 = ((512 : GoUnTypedInt));
final enotsup:Errno = eopnotsupp;
final eproclim:Errno = new Errno(((2051 : GoUIntptr)));
final efbig:Errno = new Errno(((27 : GoUIntptr)));
final ebadslt:Errno = new Errno(((57 : GoUIntptr)));
final ipproto_IP:GoInt64 = ((0 : GoUnTypedInt));
final elibacc:Errno = new Errno(((79 : GoUIntptr)));
final f_UNLCK:GoInt64 = ((3 : GoUnTypedInt));
final ecanceled:Errno = new Errno(((125 : GoUIntptr)));
final ehostdown:Errno = new Errno(((112 : GoUIntptr)));
final enostr:Errno = new Errno(((60 : GoUIntptr)));
final o_RDWR:GoInt64 = ((2 : GoUnTypedInt));
final elibexec:Errno = new Errno(((83 : GoUIntptr)));
final enopkg:Errno = new Errno(((65 : GoUIntptr)));
final enodata:Errno = new Errno(((61 : GoUIntptr)));
final enametoolong:Errno = new Errno(((36 : GoUIntptr)));
final s_IFMT:GoInt64 = ((126976 : GoUnTypedInt));
final enoexec:Errno = new Errno(((8 : GoUIntptr)));
final s_IFLNK:GoInt64 = ((40960 : GoUnTypedInt));
final f_GETOWN:GoInt64 = ((5 : GoUnTypedInt));
final s_IEXEC:GoInt64 = ((64 : GoUnTypedInt));
final estale:Errno = new Errno(((116 : GoUIntptr)));
final eprotonosupport:Errno = new Errno(((93 : GoUIntptr)));
final s_IFDSOCK:GoInt64 = ((69632 : GoUnTypedInt));
final o_RDONLY:GoInt64 = ((0 : GoUnTypedInt));
final o_WRONLY:GoInt64 = ((1 : GoUnTypedInt));
final s_IFIFO:GoInt64 = ((4096 : GoUnTypedInt));
final enmfile:Errno = new Errno(((2050 : GoUIntptr)));
final enetunreach:Errno = new Errno(((101 : GoUIntptr)));
final enoprotoopt:Errno = new Errno(((92 : GoUIntptr)));
final sock_SEQPACKET = ((1 : GoUnTypedInt)) + (3 : GoUnTypedInt);
final s_IREAD:GoInt64 = ((256 : GoUnTypedInt));
final erofs:Errno = new Errno(((30 : GoUIntptr)));
final s_IWUSR:GoInt64 = ((128 : GoUnTypedInt));
final s_IFSOCKADDR:GoInt64 = ((73728 : GoUnTypedInt));
final s_IFCOND:GoInt64 = ((90112 : GoUnTypedInt));
final eisconn:Errno = new Errno(((106 : GoUIntptr)));
final emsgsize:Errno = new Errno(((90 : GoUIntptr)));
final f_RSETLKW:GoInt64 = ((13 : GoUnTypedInt));
final ealready:Errno = new Errno(((114 : GoUIntptr)));
final eusers:Errno = new Errno(((87 : GoUIntptr)));
final eproto:Errno = new Errno(((71 : GoUIntptr)));
final esrmnt:Errno = new Errno(((69 : GoUIntptr)));
final enosys:Errno = new Errno(((38 : GoUIntptr)));
final espipe:Errno = new Errno(((29 : GoUIntptr)));
final edquot:Errno = new Errno(((122 : GoUIntptr)));
final af_UNSPEC:GoUnTypedInt = (0 : GoUnTypedInt);
final enomsg:Errno = new Errno(((42 : GoUIntptr)));
final f_RGETLK:GoInt64 = ((10 : GoUnTypedInt));
final s_IFDIR:GoInt64 = ((16384 : GoUnTypedInt));
final s_IXOTH:GoInt64 = ((1 : GoUnTypedInt));
final pathMax:GoInt64 = ((256 : GoUnTypedInt));
final s_IRGRP:GoInt64 = ((32 : GoUnTypedInt));
final enetdown:Errno = new Errno(((100 : GoUIntptr)));
final eaddrinuse:Errno = new Errno(((98 : GoUIntptr)));
final eafnosupport:Errno = new Errno(((97 : GoUIntptr)));
final enolink:Errno = new Errno(((67 : GoUIntptr)));
final esrch:Errno = new Errno(((3 : GoUIntptr)));
final sys_FCNTL:GoInt64 = ((500 : GoUnTypedInt));
final o_APPEND:GoInt64 = ((1024 : GoUnTypedInt));
final el3hlt:Errno = new Errno(((46 : GoUIntptr)));
final eidrm:Errno = new Errno(((43 : GoUIntptr)));
final stdout:GoInt64 = ((1 : GoUnTypedInt));
final el2nsync:Errno = new Errno(((45 : GoUIntptr)));
final echild:Errno = new Errno(((10 : GoUIntptr)));
final echrng:Errno = new Errno(((44 : GoUIntptr)));
final eunatch:Errno = new Errno(((49 : GoUIntptr)));
final enonet:Errno = new Errno(((64 : GoUIntptr)));
final ebade:Errno = new Errno(((52 : GoUIntptr)));
final eacces:Errno = new Errno(((13 : GoUIntptr)));
final ebadf:Errno = new Errno(((9 : GoUIntptr)));
final o_CLOEXEC:GoInt64 = ((0 : GoUnTypedInt));
final einprogress:Errno = new Errno(((115 : GoUIntptr)));
final etime:Errno = new Errno(((62 : GoUIntptr)));
final efault:Errno = new Errno(((14 : GoUIntptr)));
final einval:Errno = new Errno(((22 : GoUIntptr)));
final f_WRLCK:GoInt64 = ((2 : GoUnTypedInt));
final eshutdown:Errno = new Errno(((108 : GoUIntptr)));
final f_CNVT:GoInt64 = ((12 : GoUnTypedInt));
final af_INET = (2 : GoUnTypedInt);
final ehostunreach:Errno = new Errno(((113 : GoUIntptr)));
final eilseq:Errno = new Errno(((84 : GoUIntptr)));
final s_IXUSR:GoInt64 = ((64 : GoUnTypedInt));
final enoent:Errno = new Errno(((2 : GoUIntptr)));
final enocsi:Errno = new Errno(((50 : GoUIntptr)));
final enoano:Errno = new Errno(((55 : GoUIntptr)));
final econnrefused:Errno = new Errno(((111 : GoUIntptr)));
final elibmax:Errno = new Errno(((82 : GoUIntptr)));
final ebadrqc:Errno = new Errno(((56 : GoUIntptr)));
final enotempty:Errno = new Errno(((39 : GoUIntptr)));
final s_IFSOCK:GoInt64 = ((49152 : GoUnTypedInt));
final enotsock:Errno = new Errno(((88 : GoUIntptr)));
final eagain:Errno = new Errno(((11 : GoUIntptr)));
final ewouldblock:Errno = eagain;
final s_ISVTX:GoInt64 = ((512 : GoUnTypedInt));
final enoshare:Errno = new Errno(((2052 : GoUIntptr)));
final eremote:Errno = new Errno(((66 : GoUIntptr)));
final ebadr:Errno = new Errno(((53 : GoUIntptr)));
final stdin:GoInt64 = ((0 : GoUnTypedInt));
final ebadfd:Errno = new Errno(((77 : GoUIntptr)));
final enotuniq:Errno = new Errno(((76 : GoUIntptr)));
final ipproto_TCP:GoInt64 = ((6 : GoUnTypedInt));
final s_IFBOUNDSOCK:GoInt64 = ((77824 : GoUnTypedInt));
final f_DUPFD:GoInt64 = ((0 : GoUnTypedInt));
final emfile:Errno = new Errno(((24 : GoUIntptr)));
final s_IFREG:GoInt64 = ((32768 : GoUnTypedInt));
final implementsGetwd:Bool = true;
final f_RDLCK:GoInt64 = ((1 : GoUnTypedInt));
final ipproto_IPV4:GoInt64 = ((4 : GoUnTypedInt));
final edotdot:Errno = new Errno(((73 : GoUIntptr)));
final enodev:Errno = new Errno(((19 : GoUIntptr)));
final ebusy:Errno = new Errno(((16 : GoUIntptr)));
final s_IFSHM:GoInt64 = ((81920 : GoUnTypedInt));
final sock_STREAM:GoUnTypedInt = ((1 : GoUnTypedInt)) + (0 : GoUnTypedInt);
final f_SETLKW:GoInt64 = ((9 : GoUnTypedInt));
final f_UNLKSYS:GoInt64 = ((4 : GoUnTypedInt));
final ipproto_IPV6:GoInt64 = ((41 : GoUnTypedInt));
final s_IWGRP:GoInt64 = ((16 : GoUnTypedInt));
final eadv:Errno = new Errno(((68 : GoUIntptr)));
final enospc:Errno = new Errno(((28 : GoUIntptr)));

/**
	// ParseDirent parses up to max directory entries in buf,
	// appending the names to names. It returns the number of
	// bytes consumed from buf, the number of entries added
	// to names, and the new names slice.
**/
function parseDirent(_buf:Slice<GoByte>, _max:GoInt, _names:Slice<GoString>):{var _0:GoInt; var _1:GoInt; var _2:Slice<GoString>;}
	return {_0: ((0 : GoInt)), _1: ((0 : GoInt)), _2: new Slice<GoString>().nil()};

function unsetenv(_key:GoString):Error
	return ((null : stdgo.Error));

function getenv(_key:GoString):{var _0:GoString; var _1:Bool;}
	return {_0: (("" : GoString)), _1: false};

function setenv(_key:GoString, _value:GoString):Error
	return ((null : stdgo.Error));

function clearenv():Void
	return;

function environ():Slice<GoString>
	return new Slice<GoString>().nil();

function open(_path:GoString, _openmode:GoInt, _perm:GoUInt32):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

function close(_fd:GoInt):Error
	return ((null : stdgo.Error));

function closeOnExec(_fd:GoInt):Void
	return;

function mkdir(_path:GoString, _perm:GoUInt32):Error
	return ((null : stdgo.Error));

function readDirent(_fd:GoInt, _buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

function stat(_path:GoString, _st:Pointer<Stat_t>):Error
	return ((null : stdgo.Error));

function lstat(_path:GoString, _st:Pointer<Stat_t>):Error
	return ((null : stdgo.Error));

function fstat(_fd:GoInt, _st:Pointer<Stat_t>):Error
	return ((null : stdgo.Error));

function unlink(_path:GoString):Error
	return ((null : stdgo.Error));

function rmdir(_path:GoString):Error
	return ((null : stdgo.Error));

function chmod(_path:GoString, _mode:GoUInt32):Error
	return ((null : stdgo.Error));

function fchmod(_fd:GoInt, _mode:GoUInt32):Error
	return ((null : stdgo.Error));

function chown(_path:GoString, _uid:GoInt, _gid:GoInt):Error
	return ((null : stdgo.Error));

function fchown(_fd:GoInt, _uid:GoInt, _gid:GoInt):Error
	return ((null : stdgo.Error));

function lchown(_path:GoString, _uid:GoInt, _gid:GoInt):Error
	return ((null : stdgo.Error));

function utimesNano(_path:GoString, _ts:Slice<Timespec>):Error
	return ((null : stdgo.Error));

function rename(_from:GoString, _to:GoString):Error
	return ((null : stdgo.Error));

function truncate(_path:GoString, _length:GoInt64):Error
	return ((null : stdgo.Error));

function ftruncate(_fd:GoInt, _length:GoInt64):Error
	return ((null : stdgo.Error));

function getcwd(_buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

function chdir(_path:GoString):Error
	return ((null : stdgo.Error));

function fchdir(_fd:GoInt):Error
	return ((null : stdgo.Error));

function readlink(_path:GoString, _buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

function link(_path:GoString, _link:GoString):Error
	return ((null : stdgo.Error));

function symlink(_path:GoString, _link:GoString):Error
	return ((null : stdgo.Error));

function fsync(_fd:GoInt):Error
	return ((null : stdgo.Error));

function read(_fd:GoInt, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

function write(_fd:GoInt, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

function pread(_fd:GoInt, _b:Slice<GoByte>, _offset:GoInt64):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

function pwrite(_fd:GoInt, _b:Slice<GoByte>, _offset:GoInt64):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

function seek(_fd:GoInt, _offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;}
	return {_0: ((0 : GoInt64)), _1: ((null : stdgo.Error))};

function dup(_fd:GoInt):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

function dup2(_fd:GoInt, _newfd:GoInt):Error
	return ((null : stdgo.Error));

function pipe(_fd:Slice<GoInt>):Error
	return ((null : stdgo.Error));

function socket(_proto:GoInt, _sotype:GoInt, _unused:GoInt):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

function bind(_fd:GoInt, _sa:Sockaddr):Error
	return ((null : stdgo.Error));

function stopIO(_fd:GoInt):Error
	return ((null : stdgo.Error));

function listen(_fd:GoInt, _backlog:GoInt):Error
	return ((null : stdgo.Error));

function accept(_fd:GoInt):{var _0:GoInt; var _1:Sockaddr; var _2:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : Sockaddr)), _2: ((null : stdgo.Error))};

function connect(_fd:GoInt, _sa:Sockaddr):Error
	return ((null : stdgo.Error));

function recvfrom(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt):{var _0:GoInt; var _1:Sockaddr; var _2:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : Sockaddr)), _2: ((null : stdgo.Error))};

function sendto(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt, _to:Sockaddr):Error
	return ((null : stdgo.Error));

function recvmsg(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _flags:GoInt):{
	var _0:GoInt;
	var _1:GoInt;
	var _2:GoInt;
	var _3:Sockaddr;
	var _4:Error;
}
	return {
		_0: ((0 : GoInt)),
		_1: ((0 : GoInt)),
		_2: ((0 : GoInt)),
		_3: ((null : Sockaddr)),
		_4: ((null : stdgo.Error))
	};

function sendmsgN(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _to:Sockaddr, _flags:GoInt):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

function getsockoptInt(_fd:GoInt, _level:GoInt, _opt:GoInt):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

function setsockoptInt(_fd:GoInt, _level:GoInt, _opt:GoInt, _value:GoInt):Error
	return ((null : stdgo.Error));

function setReadDeadline(_fd:GoInt, _t:GoInt64):Error
	return ((null : stdgo.Error));

function setWriteDeadline(_fd:GoInt, _t:GoInt64):Error
	return ((null : stdgo.Error));

function shutdown(_fd:GoInt, _how:GoInt):Error
	return ((null : stdgo.Error));

function setNonblock(_fd:GoInt, _nonblocking:Bool):Error
	return ((null : stdgo.Error));

/**
	// StringByteSlice converts a string to a NUL-terminated []byte,
	// If s contains a NUL byte this function panics instead of
	// returning an error.
	//
	// Deprecated: Use ByteSliceFromString instead.
**/
function stringByteSlice(_s:GoString):Slice<GoByte>
	return new Slice<GoUInt8>().nil();

/**
	// ByteSliceFromString returns a NUL-terminated slice of bytes
	// containing the text of s. If s contains a NUL byte at any
	// location, it returns (nil, EINVAL).
**/
function byteSliceFromString(_s:GoString):{var _0:Slice<GoByte>; var _1:Error;}
	return {_0: new Slice<GoUInt8>().nil(), _1: ((null : stdgo.Error))};

/**
	// StringBytePtr returns a pointer to a NUL-terminated array of bytes.
	// If s contains a NUL byte this function panics instead of returning
	// an error.
	//
	// Deprecated: Use BytePtrFromString instead.
**/
function stringBytePtr(_s:GoString):Pointer<GoByte>
	return new Pointer<GoUInt8>().nil();

/**
	// BytePtrFromString returns a pointer to a NUL-terminated array of
	// bytes containing the text of s. If s contains a NUL byte at any
	// location, it returns (nil, EINVAL).
**/
function bytePtrFromString(_s:GoString):{var _0:Pointer<GoByte>; var _1:Error;}
	return {_0: new Pointer<GoUInt8>().nil(), _1: ((null : stdgo.Error))};

function getpagesize():GoInt
	return ((0 : GoInt));

function exit(_code:GoInt):Void
	return;

function syscall(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr):{var _0:GoUIntptr; var _1:GoUIntptr; var _2:Errno;}
	return {_0: ((0 : GoUIntptr)), _1: ((0 : GoUIntptr)), _2: new Errno()};

function syscall6(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr, _a4:GoUIntptr, _a5:GoUIntptr,
		_a6:GoUIntptr):{var _0:GoUIntptr; var _1:GoUIntptr; var _2:Errno;}
	return {_0: ((0 : GoUIntptr)), _1: ((0 : GoUIntptr)), _2: new Errno()};

function rawSyscall(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr):{var _0:GoUIntptr; var _1:GoUIntptr; var _2:Errno;}
	return {_0: ((0 : GoUIntptr)), _1: ((0 : GoUIntptr)), _2: new Errno()};

function rawSyscall6(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr, _a4:GoUIntptr, _a5:GoUIntptr,
		_a6:GoUIntptr):{var _0:GoUIntptr; var _1:GoUIntptr; var _2:Errno;}
	return {_0: ((0 : GoUIntptr)), _1: ((0 : GoUIntptr)), _2: new Errno()};

function sysctl(_key:GoString):{var _0:GoString; var _1:Error;}
	return {_0: (("" : GoString)), _1: ((null : stdgo.Error))};

function getwd():{var _0:GoString; var _1:Error;}
	return {_0: (("" : GoString)), _1: ((null : stdgo.Error))};

function getuid():GoInt
	return ((0 : GoInt));

function getgid():GoInt
	return ((0 : GoInt));

function geteuid():GoInt
	return ((0 : GoInt));

function getegid():GoInt
	return ((0 : GoInt));

function getgroups():{var _0:Slice<GoInt>; var _1:Error;}
	return {_0: new Slice<GoInt>().nil(), _1: ((null : stdgo.Error))};

function getpid():GoInt
	return ((0 : GoInt));

function getppid():GoInt
	return ((0 : GoInt));

function umask(_mask:GoInt):GoInt
	return ((0 : GoInt));

function gettimeofday(_tv:Pointer<Timeval>):Error
	return ((null : stdgo.Error));

function kill(_pid:GoInt, _signum:Signal):Error
	return ((null : stdgo.Error));

function sendfile(_outfd:GoInt, _infd:GoInt, _offset:Pointer<GoInt64>, _count:GoInt):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

function startProcess(_argv0:GoString, _argv:Slice<GoString>, _attr:Pointer<ProcAttr>):{var _0:GoInt; var _1:GoUIntptr; var _2:Error;}
	return {_0: ((0 : GoInt)), _1: ((0 : GoUIntptr)), _2: ((null : stdgo.Error))};

function wait4(_pid:GoInt, _wstatus:Pointer<WaitStatus>, _options:GoInt, _rusage:Pointer<Rusage>):{var _0:GoInt; var _1:Error;}
	return {_0: ((0 : GoInt)), _1: ((null : stdgo.Error))};

/**
	// TimespecToNSec returns the time stored in ts as nanoseconds.
**/
function timespecToNsec(_ts:Timespec):GoInt64
	return ((0 : GoInt64));

/**
	// NsecToTimespec converts a number of nanoseconds into a Timespec.
**/
function nsecToTimespec(_nsec:GoInt64):Timespec
	return new Timespec();

/**
	// TimevalToNsec returns the time stored in tv as nanoseconds.
**/
function timevalToNsec(_tv:Timeval):GoInt64
	return ((0 : GoInt64));

/**
	// NsecToTimeval converts a number of nanoseconds into a Timeval.
**/
function nsecToTimeval(_nsec:GoInt64):Timeval
	return new Timeval();

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

final sigchld = new Signal(20);
