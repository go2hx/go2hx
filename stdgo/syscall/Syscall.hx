package stdgo.syscall;

import stdgo.Error;
import stdgo.StdGoTypes;

final o_RDONLY:GoInt = 0;

@:named class Signal {
	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(__t__);

	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new Signal(__t__);
}

final sigchld:Signal = new Signal((0 : GoUnTypedInt));
final sigint:Signal = new Signal((1 : GoUnTypedInt));
final sigkill:Signal = new Signal((2 : GoUnTypedInt));
final sigtrap:Signal = new Signal((3 : GoUnTypedInt));
final sigquit:Signal = new Signal((4 : GoUnTypedInt));
final sigterm:Signal = new Signal((5 : GoUnTypedInt));

function getuid():GoInt
	return 0;

function geteuid():GoInt
	return 0;

function getgid():GoInt
	return 0;

function getegid():GoInt
	return 0;

function getpid():GoInt
	return 0;

function read(fd:GoInt, buf:Slice<GoByte>):{_0:GoInt, _1:Error} {
	return {_0: 0, _1: null};
}

function getppid():GoInt
	return 0;

function kill(pid:GoInt, signum:Signal):Error
	return null;

function getenv(s:String):{_0:GoString, _1:Bool} {
	var result = Sys.getEnv(s);
	if (result == null)
		return {_0: "", _1: false};
	return {_0: result, _1: true};
}

function open(name:String, mode:GoInt, perm:GoUInt32):{_0:GoInt, _1:Error} {
	return {_0: 0, _1: null};
}

function close(fd:GoInt):Error {
	return null;
}

function seek(fd:GoInt, offset:GoInt64, whence:GoInt):{_0:GoInt64, _1:Error} {
	return {_0: 0, _1: null};
}

@:named class Errno {
	public var __t__:GoUIntptr;

	public function new(?t:GoUIntptr) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(__t__);

	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new Errno(__t__);

	public function error():GoString {
		return "";
	}

	public function is_(_target:Error):Bool {
		return false;
	}

	public function temporary():Bool {
		var _e = this;
		return _e.__t__ == eintr.__t__ || _e.__t__ == emfile.__t__ || _e.timeout();
	}

	public function timeout():Bool {
		var _e = this;
		return _e.__t__ == eagain.__t__ || _e.__t__ == ewouldblock.__t__ || _e.__t__ == etimedout.__t__;
	}
}

final eperm:Errno = new Errno(((1 : GoUIntptr)));
final enoent:Errno = new Errno(((2 : GoUIntptr)));
final esrch:Errno = new Errno(((3 : GoUIntptr)));
final eintr:Errno = new Errno(((4 : GoUIntptr)));
final eio:Errno = new Errno(((5 : GoUIntptr)));
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
final el3rst:Errno = new Errno(((47 : GoUIntptr)));
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
final ebfont:Errno = new Errno(((59 : GoUIntptr)));
final enostr:Errno = new Errno(((60 : GoUIntptr)));
final enodata:Errno = new Errno(((61 : GoUIntptr)));
final etime:Errno = new Errno(((62 : GoUIntptr)));
final enosr:Errno = new Errno(((63 : GoUIntptr)));
final enonet:Errno = new Errno(((64 : GoUIntptr)));
final enopkg:Errno = new Errno(((65 : GoUIntptr)));
final eremote:Errno = new Errno(((66 : GoUIntptr)));
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
final elibbad:Errno = new Errno(((80 : GoUIntptr)));
final elibscn:Errno = new Errno(((81 : GoUIntptr)));
final elibmax:Errno = new Errno(((82 : GoUIntptr)));
final elibexec:Errno = new Errno(((83 : GoUIntptr)));
final eilseq:Errno = new Errno(((84 : GoUIntptr)));
final eusers:Errno = new Errno(((87 : GoUIntptr)));
final enotsock:Errno = new Errno(((88 : GoUIntptr)));
final edestaddrreq:Errno = new Errno(((89 : GoUIntptr)));
final emsgsize:Errno = new Errno(((90 : GoUIntptr)));
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
final econnaborted:Errno = new Errno(((103 : GoUIntptr)));
final econnreset:Errno = new Errno(((104 : GoUIntptr)));
final enobufs:Errno = new Errno(((105 : GoUIntptr)));
final eisconn:Errno = new Errno(((106 : GoUIntptr)));
final enotconn:Errno = new Errno(((107 : GoUIntptr)));
final eshutdown:Errno = new Errno(((108 : GoUIntptr)));
final etoomanyrefs:Errno = new Errno(((109 : GoUIntptr)));
final etimedout:Errno = new Errno(((110 : GoUIntptr)));
final econnrefused:Errno = new Errno(((111 : GoUIntptr)));
final ehostdown:Errno = new Errno(((112 : GoUIntptr)));
final ehostunreach:Errno = new Errno(((113 : GoUIntptr)));
final ealready:Errno = new Errno(((114 : GoUIntptr)));
final einprogress:Errno = new Errno(((115 : GoUIntptr)));
final estale:Errno = new Errno(((116 : GoUIntptr)));
final enomedium:Errno = new Errno(((123 : GoUIntptr)));
final ecanceled:Errno = new Errno(((125 : GoUIntptr)));
final elbin:Errno = new Errno(((2048 : GoUIntptr)));
final eftype:Errno = new Errno(((2049 : GoUIntptr)));
final enmfile:Errno = new Errno(((2050 : GoUIntptr)));
final eproclim:Errno = new Errno(((2051 : GoUIntptr)));
final enoshare:Errno = new Errno(((2052 : GoUIntptr)));
final ecaseclash:Errno = new Errno(((2053 : GoUIntptr)));
final edeadlock:Errno = edeadlk;
final enotsup:Errno = eopnotsupp;
final ewouldblock:Errno = eagain;
