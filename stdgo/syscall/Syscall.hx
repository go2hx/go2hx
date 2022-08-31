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
var _envs : Slice<GoString> = (null : Slice<GoString>);
var _jsProcess : stdgo.syscall.js.Js.Value = ({  } : stdgo.syscall.js.Js.Value);
var _jsFS : stdgo.syscall.js.Js.Value = ({  } : stdgo.syscall.js.Js.Value);
var _constants : stdgo.syscall.js.Js.Value = ({  } : stdgo.syscall.js.Js.Value);
var _uint8Array : stdgo.syscall.js.Js.Value = ({  } : stdgo.syscall.js.Js.Value);
var _nodeWRONLY : GoInt = (0 : GoInt);
var _nodeRDWR : GoInt = (0 : GoInt);
var _nodeCREATE : GoInt = (0 : GoInt);
var _nodeTRUNC : GoInt = (0 : GoInt);
var _nodeAPPEND : GoInt = (0 : GoInt);
var _nodeEXCL : GoInt = (0 : GoInt);
var _files : GoMap<GoInt, Ref<T_jsFile>> = (null : GoMap<GoInt, Ref<T_jsFile>>);
var _signals : GoArray<GoString> = new GoArray<GoString>(...[for (i in 0 ... 0) ("" : GoString)]);
var _errorstr : GoArray<GoString> = new GoArray<GoString>(...[for (i in 0 ... 2054) ("" : GoString)]);
var _errEAGAIN : Error = (null : stdgo.Error);
var _errEINVAL : Error = (null : stdgo.Error);
var _errENOENT : Error = (null : stdgo.Error);
var _errnoByCode : GoMap<GoString, Errno> = (null : GoMap<GoString, Errno>);
var _asanenabled : Bool = null;
var _isBigEndian : Bool = null;
var _envOnce : stdgo.sync.Sync.Once = ({  } : stdgo.sync.Sync.Once);
var _envLock : stdgo.sync.Sync.RWMutex = ({  } : stdgo.sync.Sync.RWMutex);
var _env : GoMap<GoString, GoInt> = (null : GoMap<GoString, GoInt>);
var _filesMu : stdgo.sync.Sync.Mutex = ({  } : stdgo.sync.Sync.Mutex);
var _msanenabled : Bool = null;
var af_UNSPEC : GoInt64 = (0 : GoInt64);
var af_UNIX = null;
var af_INET = null;
var af_INET6 = null;
var sock_STREAM : GoUnTypedInt = null;
var sock_DGRAM = null;
var sock_RAW = null;
var sock_SEQPACKET = null;
var ipproto_IP : GoUnTypedInt = null;
var ipproto_IPV4 : GoUnTypedInt = null;
var ipproto_IPV6 : GoUnTypedInt = null;
var ipproto_TCP : GoUnTypedInt = null;
var ipproto_UDP : GoUnTypedInt = null;
var _0 : GoInt64 = (0 : GoInt64);
var ipv6_V6ONLY = null;
var somaxconn = null;
var so_ERROR = null;
var _1 : GoInt64 = (0 : GoInt64);
var f_DUPFD_CLOEXEC = null;
var sys_FCNTL : GoUnTypedInt = null;
var __zero : GoUIntptr = (0 : GoUIntptr);
var _direntSize : GoUnTypedInt = null;
var pathMax : GoUnTypedInt = null;
var _2 : Signal = ((0 : GoInt) : Signal);
var sigchld : Signal = ((0 : GoInt) : Signal);
var sigint : Signal = ((0 : GoInt) : Signal);
var sigkill : Signal = ((0 : GoInt) : Signal);
var sigtrap : Signal = ((0 : GoInt) : Signal);
var sigquit : Signal = ((0 : GoInt) : Signal);
var sigterm : Signal = ((0 : GoInt) : Signal);
var stdin : GoUnTypedInt = null;
var stdout : GoUnTypedInt = null;
var stderr : GoUnTypedInt = null;
var o_RDONLY : GoUnTypedInt = null;
var o_WRONLY : GoUnTypedInt = null;
var o_RDWR : GoUnTypedInt = null;
var o_CREAT : GoUnTypedInt = null;
var o_CREATE : GoUnTypedInt = null;
var o_TRUNC : GoUnTypedInt = null;
var o_APPEND : GoUnTypedInt = null;
var o_EXCL : GoUnTypedInt = null;
var o_SYNC : GoUnTypedInt = null;
var o_CLOEXEC : GoUnTypedInt = null;
var f_DUPFD : GoUnTypedInt = null;
var f_GETFD : GoUnTypedInt = null;
var f_SETFD : GoUnTypedInt = null;
var f_GETFL : GoUnTypedInt = null;
var f_SETFL : GoUnTypedInt = null;
var f_GETOWN : GoUnTypedInt = null;
var f_SETOWN : GoUnTypedInt = null;
var f_GETLK : GoUnTypedInt = null;
var f_SETLK : GoUnTypedInt = null;
var f_SETLKW : GoUnTypedInt = null;
var f_RGETLK : GoUnTypedInt = null;
var f_RSETLK : GoUnTypedInt = null;
var f_CNVT : GoUnTypedInt = null;
var f_RSETLKW : GoUnTypedInt = null;
var f_RDLCK : GoUnTypedInt = null;
var f_WRLCK : GoUnTypedInt = null;
var f_UNLCK : GoUnTypedInt = null;
var f_UNLKSYS : GoUnTypedInt = null;
var s_IFMT : GoUnTypedInt = null;
var s_IFSHM_SYSV : GoUnTypedInt = null;
var s_IFSEMA : GoUnTypedInt = null;
var s_IFCOND : GoUnTypedInt = null;
var s_IFMUTEX : GoUnTypedInt = null;
var s_IFSHM : GoUnTypedInt = null;
var s_IFBOUNDSOCK : GoUnTypedInt = null;
var s_IFSOCKADDR : GoUnTypedInt = null;
var s_IFDSOCK : GoUnTypedInt = null;
var s_IFSOCK : GoUnTypedInt = null;
var s_IFLNK : GoUnTypedInt = null;
var s_IFREG : GoUnTypedInt = null;
var s_IFBLK : GoUnTypedInt = null;
var s_IFDIR : GoUnTypedInt = null;
var s_IFCHR : GoUnTypedInt = null;
var s_IFIFO : GoUnTypedInt = null;
var s_UNSUP : GoUnTypedInt = null;
var s_ISUID : GoUnTypedInt = null;
var s_ISGID : GoUnTypedInt = null;
var s_ISVTX : GoUnTypedInt = null;
var s_IREAD : GoUnTypedInt = null;
var s_IWRITE : GoUnTypedInt = null;
var s_IEXEC : GoUnTypedInt = null;
var s_IRWXU : GoUnTypedInt = null;
var s_IRUSR : GoUnTypedInt = null;
var s_IWUSR : GoUnTypedInt = null;
var s_IXUSR : GoUnTypedInt = null;
var s_IRWXG : GoUnTypedInt = null;
var s_IRGRP : GoUnTypedInt = null;
var s_IWGRP : GoUnTypedInt = null;
var s_IXGRP : GoUnTypedInt = null;
var s_IRWXO : GoUnTypedInt = null;
var s_IROTH : GoUnTypedInt = null;
var s_IWOTH : GoUnTypedInt = null;
var s_IXOTH : GoUnTypedInt = null;
var forkLock : stdgo.sync.Sync.RWMutex = ({  } : stdgo.sync.Sync.RWMutex);
var implementsGetwd : Bool = null;
var _sys_null : GoUnTypedInt = null;
var _sys_nameservice : GoUnTypedInt = null;
var _sys_dup : GoUnTypedInt = null;
var _sys_dup2 : GoUnTypedInt = null;
var _sys_open : GoUnTypedInt = null;
var _sys_close : GoUnTypedInt = null;
var _sys_read : GoUnTypedInt = null;
var _sys_write : GoUnTypedInt = null;
var _sys_lseek : GoUnTypedInt = null;
var _sys_stat : GoUnTypedInt = null;
var _sys_fstat : GoUnTypedInt = null;
var _sys_chmod : GoUnTypedInt = null;
var _sys_isatty : GoUnTypedInt = null;
var _sys_brk : GoUnTypedInt = null;
var _sys_mmap : GoUnTypedInt = null;
var _sys_munmap : GoUnTypedInt = null;
var _sys_getdents : GoUnTypedInt = null;
var _sys_mprotect : GoUnTypedInt = null;
var _sys_list_mappings : GoUnTypedInt = null;
var _sys_exit : GoUnTypedInt = null;
var _sys_getpid : GoUnTypedInt = null;
var _sys_sched_yield : GoUnTypedInt = null;
var _sys_sysconf : GoUnTypedInt = null;
var _sys_gettimeofday : GoUnTypedInt = null;
var _sys_clock : GoUnTypedInt = null;
var _sys_nanosleep : GoUnTypedInt = null;
var _sys_clock_getres : GoUnTypedInt = null;
var _sys_clock_gettime : GoUnTypedInt = null;
var _sys_mkdir : GoUnTypedInt = null;
var _sys_rmdir : GoUnTypedInt = null;
var _sys_chdir : GoUnTypedInt = null;
var _sys_getcwd : GoUnTypedInt = null;
var _sys_unlink : GoUnTypedInt = null;
var _sys_imc_makeboundsock : GoUnTypedInt = null;
var _sys_imc_accept : GoUnTypedInt = null;
var _sys_imc_connect : GoUnTypedInt = null;
var _sys_imc_sendmsg : GoUnTypedInt = null;
var _sys_imc_recvmsg : GoUnTypedInt = null;
var _sys_imc_mem_obj_create : GoUnTypedInt = null;
var _sys_imc_socketpair : GoUnTypedInt = null;
var _sys_mutex_create : GoUnTypedInt = null;
var _sys_mutex_lock : GoUnTypedInt = null;
var _sys_mutex_trylock : GoUnTypedInt = null;
var _sys_mutex_unlock : GoUnTypedInt = null;
var _sys_cond_create : GoUnTypedInt = null;
var _sys_cond_wait : GoUnTypedInt = null;
var _sys_cond_signal : GoUnTypedInt = null;
var _sys_cond_broadcast : GoUnTypedInt = null;
var _sys_cond_timed_wait_abs : GoUnTypedInt = null;
var _sys_thread_create : GoUnTypedInt = null;
var _sys_thread_exit : GoUnTypedInt = null;
var _sys_tls_init : GoUnTypedInt = null;
var _sys_thread_nice : GoUnTypedInt = null;
var _sys_tls_get : GoUnTypedInt = null;
var _sys_second_tls_set : GoUnTypedInt = null;
var _sys_second_tls_get : GoUnTypedInt = null;
var _sys_exception_handler : GoUnTypedInt = null;
var _sys_exception_stack : GoUnTypedInt = null;
var _sys_exception_clear_flag : GoUnTypedInt = null;
var _sys_sem_create : GoUnTypedInt = null;
var _sys_sem_wait : GoUnTypedInt = null;
var _sys_sem_post : GoUnTypedInt = null;
var _sys_sem_get_value : GoUnTypedInt = null;
var _sys_dyncode_create : GoUnTypedInt = null;
var _sys_dyncode_modify : GoUnTypedInt = null;
var _sys_dyncode_delete : GoUnTypedInt = null;
var _sys_test_infoleak : GoUnTypedInt = null;
var _sys_test_crash : GoUnTypedInt = null;
var _sys_test_syscall_1 : GoUnTypedInt = null;
var _sys_test_syscall_2 : GoUnTypedInt = null;
var _sys_futex_wait_abs : GoUnTypedInt = null;
var _sys_futex_wake : GoUnTypedInt = null;
var _sys_pread : GoUnTypedInt = null;
var _sys_pwrite : GoUnTypedInt = null;
var _sys_truncate : GoUnTypedInt = null;
var _sys_lstat : GoUnTypedInt = null;
var _sys_link : GoUnTypedInt = null;
var _sys_rename : GoUnTypedInt = null;
var _sys_symlink : GoUnTypedInt = null;
var _sys_access : GoUnTypedInt = null;
var _sys_readlink : GoUnTypedInt = null;
var _sys_utimes : GoUnTypedInt = null;
var _sys_get_random_bytes : GoUnTypedInt = null;
var eperm : Errno = ((0 : GoUIntptr) : Errno);
var enoent : Errno = ((0 : GoUIntptr) : Errno);
var esrch : Errno = ((0 : GoUIntptr) : Errno);
var eintr : Errno = ((0 : GoUIntptr) : Errno);
var eio : Errno = ((0 : GoUIntptr) : Errno);
var enxio : Errno = ((0 : GoUIntptr) : Errno);
var e2big : Errno = ((0 : GoUIntptr) : Errno);
var enoexec : Errno = ((0 : GoUIntptr) : Errno);
var ebadf : Errno = ((0 : GoUIntptr) : Errno);
var echild : Errno = ((0 : GoUIntptr) : Errno);
var eagain : Errno = ((0 : GoUIntptr) : Errno);
var enomem : Errno = ((0 : GoUIntptr) : Errno);
var eacces : Errno = ((0 : GoUIntptr) : Errno);
var efault : Errno = ((0 : GoUIntptr) : Errno);
var ebusy : Errno = ((0 : GoUIntptr) : Errno);
var eexist : Errno = ((0 : GoUIntptr) : Errno);
var exdev : Errno = ((0 : GoUIntptr) : Errno);
var enodev : Errno = ((0 : GoUIntptr) : Errno);
var enotdir : Errno = ((0 : GoUIntptr) : Errno);
var eisdir : Errno = ((0 : GoUIntptr) : Errno);
var einval : Errno = ((0 : GoUIntptr) : Errno);
var enfile : Errno = ((0 : GoUIntptr) : Errno);
var emfile : Errno = ((0 : GoUIntptr) : Errno);
var enotty : Errno = ((0 : GoUIntptr) : Errno);
var efbig : Errno = ((0 : GoUIntptr) : Errno);
var enospc : Errno = ((0 : GoUIntptr) : Errno);
var espipe : Errno = ((0 : GoUIntptr) : Errno);
var erofs : Errno = ((0 : GoUIntptr) : Errno);
var emlink : Errno = ((0 : GoUIntptr) : Errno);
var epipe : Errno = ((0 : GoUIntptr) : Errno);
var enametoolong : Errno = ((0 : GoUIntptr) : Errno);
var enosys : Errno = ((0 : GoUIntptr) : Errno);
var edquot : Errno = ((0 : GoUIntptr) : Errno);
var edom : Errno = ((0 : GoUIntptr) : Errno);
var erange : Errno = ((0 : GoUIntptr) : Errno);
var edeadlk : Errno = ((0 : GoUIntptr) : Errno);
var enolck : Errno = ((0 : GoUIntptr) : Errno);
var enotempty : Errno = ((0 : GoUIntptr) : Errno);
var eloop : Errno = ((0 : GoUIntptr) : Errno);
var enomsg : Errno = ((0 : GoUIntptr) : Errno);
var eidrm : Errno = ((0 : GoUIntptr) : Errno);
var echrng : Errno = ((0 : GoUIntptr) : Errno);
var el2nsync : Errno = ((0 : GoUIntptr) : Errno);
var el3hlt : Errno = ((0 : GoUIntptr) : Errno);
var el3rst : Errno = ((0 : GoUIntptr) : Errno);
var elnrng : Errno = ((0 : GoUIntptr) : Errno);
var eunatch : Errno = ((0 : GoUIntptr) : Errno);
var enocsi : Errno = ((0 : GoUIntptr) : Errno);
var el2hlt : Errno = ((0 : GoUIntptr) : Errno);
var ebade : Errno = ((0 : GoUIntptr) : Errno);
var ebadr : Errno = ((0 : GoUIntptr) : Errno);
var exfull : Errno = ((0 : GoUIntptr) : Errno);
var enoano : Errno = ((0 : GoUIntptr) : Errno);
var ebadrqc : Errno = ((0 : GoUIntptr) : Errno);
var ebadslt : Errno = ((0 : GoUIntptr) : Errno);
var edeadlock : Errno = ((0 : GoUIntptr) : Errno);
var ebfont : Errno = ((0 : GoUIntptr) : Errno);
var enostr : Errno = ((0 : GoUIntptr) : Errno);
var enodata : Errno = ((0 : GoUIntptr) : Errno);
var etime : Errno = ((0 : GoUIntptr) : Errno);
var enosr : Errno = ((0 : GoUIntptr) : Errno);
var enonet : Errno = ((0 : GoUIntptr) : Errno);
var enopkg : Errno = ((0 : GoUIntptr) : Errno);
var eremote : Errno = ((0 : GoUIntptr) : Errno);
var enolink : Errno = ((0 : GoUIntptr) : Errno);
var eadv : Errno = ((0 : GoUIntptr) : Errno);
var esrmnt : Errno = ((0 : GoUIntptr) : Errno);
var ecomm : Errno = ((0 : GoUIntptr) : Errno);
var eproto : Errno = ((0 : GoUIntptr) : Errno);
var emultihop : Errno = ((0 : GoUIntptr) : Errno);
var edotdot : Errno = ((0 : GoUIntptr) : Errno);
var ebadmsg : Errno = ((0 : GoUIntptr) : Errno);
var eoverflow : Errno = ((0 : GoUIntptr) : Errno);
var enotuniq : Errno = ((0 : GoUIntptr) : Errno);
var ebadfd : Errno = ((0 : GoUIntptr) : Errno);
var eremchg : Errno = ((0 : GoUIntptr) : Errno);
var elibacc : Errno = ((0 : GoUIntptr) : Errno);
var elibbad : Errno = ((0 : GoUIntptr) : Errno);
var elibscn : Errno = ((0 : GoUIntptr) : Errno);
var elibmax : Errno = ((0 : GoUIntptr) : Errno);
var elibexec : Errno = ((0 : GoUIntptr) : Errno);
var eilseq : Errno = ((0 : GoUIntptr) : Errno);
var eusers : Errno = ((0 : GoUIntptr) : Errno);
var enotsock : Errno = ((0 : GoUIntptr) : Errno);
var edestaddrreq : Errno = ((0 : GoUIntptr) : Errno);
var emsgsize : Errno = ((0 : GoUIntptr) : Errno);
var eprototype : Errno = ((0 : GoUIntptr) : Errno);
var enoprotoopt : Errno = ((0 : GoUIntptr) : Errno);
var eprotonosupport : Errno = ((0 : GoUIntptr) : Errno);
var esocktnosupport : Errno = ((0 : GoUIntptr) : Errno);
var eopnotsupp : Errno = ((0 : GoUIntptr) : Errno);
var epfnosupport : Errno = ((0 : GoUIntptr) : Errno);
var eafnosupport : Errno = ((0 : GoUIntptr) : Errno);
var eaddrinuse : Errno = ((0 : GoUIntptr) : Errno);
var eaddrnotavail : Errno = ((0 : GoUIntptr) : Errno);
var enetdown : Errno = ((0 : GoUIntptr) : Errno);
var enetunreach : Errno = ((0 : GoUIntptr) : Errno);
var enetreset : Errno = ((0 : GoUIntptr) : Errno);
var econnaborted : Errno = ((0 : GoUIntptr) : Errno);
var econnreset : Errno = ((0 : GoUIntptr) : Errno);
var enobufs : Errno = ((0 : GoUIntptr) : Errno);
var eisconn : Errno = ((0 : GoUIntptr) : Errno);
var enotconn : Errno = ((0 : GoUIntptr) : Errno);
var eshutdown : Errno = ((0 : GoUIntptr) : Errno);
var etoomanyrefs : Errno = ((0 : GoUIntptr) : Errno);
var etimedout : Errno = ((0 : GoUIntptr) : Errno);
var econnrefused : Errno = ((0 : GoUIntptr) : Errno);
var ehostdown : Errno = ((0 : GoUIntptr) : Errno);
var ehostunreach : Errno = ((0 : GoUIntptr) : Errno);
var ealready : Errno = ((0 : GoUIntptr) : Errno);
var einprogress : Errno = ((0 : GoUIntptr) : Errno);
var estale : Errno = ((0 : GoUIntptr) : Errno);
var enotsup : Errno = ((0 : GoUIntptr) : Errno);
var enomedium : Errno = ((0 : GoUIntptr) : Errno);
var ecanceled : Errno = ((0 : GoUIntptr) : Errno);
var elbin : Errno = ((0 : GoUIntptr) : Errno);
var eftype : Errno = ((0 : GoUIntptr) : Errno);
var enmfile : Errno = ((0 : GoUIntptr) : Errno);
var eproclim : Errno = ((0 : GoUIntptr) : Errno);
var enoshare : Errno = ((0 : GoUIntptr) : Errno);
var ecaseclash : Errno = ((0 : GoUIntptr) : Errno);
var ewouldblock : Errno = ((0 : GoUIntptr) : Errno);
var _faketime : Bool = null;
typedef RawConn = StructType & {
    public function control(_f:(_fd:GoUIntptr) -> Void):Error;
    public function read(_f:(_fd:GoUIntptr) -> Bool):Error;
    public function write(_f:(_fd:GoUIntptr) -> Bool):Error;
};
typedef Conn = StructType & {
    public function syscallConn():{ var _0 : RawConn; var _1 : Error; };
};
@:structInit private class T_jsFile {
    public var _path : GoString = "";
    public var _entries : Slice<GoString> = (null : Slice<GoString>);
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
    public var addr : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) (0 : GoUInt8)]);
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
    public var addr : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) (0 : GoUInt8)]);
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
    public var name : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 256) (0 : GoUInt8)]);
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
    public var utime : Timeval = ({  } : Timeval);
    public var stime : Timeval = ({  } : Timeval);
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
    public var env : Slice<GoString> = (null : Slice<GoString>);
    public var files : Slice<GoUIntptr> = (null : Slice<GoUIntptr>);
    public var sys : Ref<SysProcAttr> = (null : SysProcAttr);
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
function _asanRead(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void throw "syscall._asanRead is not yet implemented";
function _asanWrite(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void throw "syscall._asanWrite is not yet implemented";
/**
    // readInt returns the size-bytes unsigned integer in native byte order at offset off.
**/
function _readInt(_b:Slice<GoByte>, _off:GoUIntptr, _size:GoUIntptr):{ var _0 : GoUInt64; var _1 : Bool; } throw "syscall._readInt is not yet implemented";
function _readIntBE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64 throw "syscall._readIntBE is not yet implemented";
function _readIntLE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64 throw "syscall._readIntLE is not yet implemented";
/**
    // ParseDirent parses up to max directory entries in buf,
    // appending the names to names. It returns the number of
    // bytes consumed from buf, the number of entries added
    // to names, and the new names slice.
**/
function parseDirent(_buf:Slice<GoByte>, _max:GoInt, _names:Slice<GoString>):{ var _0 : GoInt; var _1 : GoInt; var _2 : Slice<GoString>; } throw "syscall.parseDirent is not yet implemented";
function _runtime_envs():Slice<GoString> throw "syscall._runtime_envs is not yet implemented";
/**
    // setenv_c and unsetenv_c are provided by the runtime but are no-ops
    // if cgo isn't loaded.
**/
function _setenv_c(_k:GoString, _v:GoString):Void throw "syscall._setenv_c is not yet implemented";
function _unsetenv_c(_k:GoString):Void throw "syscall._unsetenv_c is not yet implemented";
function _copyenv():Void throw "syscall._copyenv is not yet implemented";
function unsetenv(_key:GoString):Error throw "syscall.unsetenv is not yet implemented";
function getenv(_key:GoString):{ var _0 : GoString; var _1 : Bool; } throw "syscall.getenv is not yet implemented";
function setenv(_key:GoString, _value:GoString):Error throw "syscall.setenv is not yet implemented";
function clearenv():Void throw "syscall.clearenv is not yet implemented";
function environ():Slice<GoString> throw "syscall.environ is not yet implemented";
/**
    // Provided by package runtime.
**/
function _now():{ var _0 : GoInt64; var _1 : GoInt32; } throw "syscall._now is not yet implemented";
function _fdToFile(_fd:GoInt):{ var _0 : T_jsFile; var _1 : Error; } throw "syscall._fdToFile is not yet implemented";
function open(_path:GoString, _openmode:GoInt, _perm:GoUInt32):{ var _0 : GoInt; var _1 : Error; } throw "syscall.open is not yet implemented";
function close(_fd:GoInt):Error throw "syscall.close is not yet implemented";
function closeOnExec(_fd:GoInt):Void throw "syscall.closeOnExec is not yet implemented";
function mkdir(_path:GoString, _perm:GoUInt32):Error throw "syscall.mkdir is not yet implemented";
function readDirent(_fd:GoInt, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } throw "syscall.readDirent is not yet implemented";
function _setStat(_st:Stat_t, _jsSt:stdgo.syscall.js.Js.Value):Void throw "syscall._setStat is not yet implemented";
function stat(_path:GoString, _st:Stat_t):Error throw "syscall.stat is not yet implemented";
function lstat(_path:GoString, _st:Stat_t):Error throw "syscall.lstat is not yet implemented";
function fstat(_fd:GoInt, _st:Stat_t):Error throw "syscall.fstat is not yet implemented";
function unlink(_path:GoString):Error throw "syscall.unlink is not yet implemented";
function rmdir(_path:GoString):Error throw "syscall.rmdir is not yet implemented";
function chmod(_path:GoString, _mode:GoUInt32):Error throw "syscall.chmod is not yet implemented";
function fchmod(_fd:GoInt, _mode:GoUInt32):Error throw "syscall.fchmod is not yet implemented";
function chown(_path:GoString, _uid:GoInt, _gid:GoInt):Error throw "syscall.chown is not yet implemented";
function fchown(_fd:GoInt, _uid:GoInt, _gid:GoInt):Error throw "syscall.fchown is not yet implemented";
function lchown(_path:GoString, _uid:GoInt, _gid:GoInt):Error throw "syscall.lchown is not yet implemented";
function utimesNano(_path:GoString, _ts:Slice<Timespec>):Error throw "syscall.utimesNano is not yet implemented";
function rename(_from:GoString, _to:GoString):Error throw "syscall.rename is not yet implemented";
function truncate(_path:GoString, _length:GoInt64):Error throw "syscall.truncate is not yet implemented";
function ftruncate(_fd:GoInt, _length:GoInt64):Error throw "syscall.ftruncate is not yet implemented";
function getcwd(_buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } throw "syscall.getcwd is not yet implemented";
function chdir(_path:GoString):Error throw "syscall.chdir is not yet implemented";
function fchdir(_fd:GoInt):Error throw "syscall.fchdir is not yet implemented";
function readlink(_path:GoString, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } throw "syscall.readlink is not yet implemented";
function link(_path:GoString, _link:GoString):Error throw "syscall.link is not yet implemented";
function symlink(_path:GoString, _link:GoString):Error throw "syscall.symlink is not yet implemented";
function fsync(_fd:GoInt):Error throw "syscall.fsync is not yet implemented";
function read(_fd:GoInt, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } throw "syscall.read is not yet implemented";
function write(_fd:GoInt, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } throw "syscall.write is not yet implemented";
function pread(_fd:GoInt, _b:Slice<GoByte>, _offset:GoInt64):{ var _0 : GoInt; var _1 : Error; } throw "syscall.pread is not yet implemented";
function pwrite(_fd:GoInt, _b:Slice<GoByte>, _offset:GoInt64):{ var _0 : GoInt; var _1 : Error; } throw "syscall.pwrite is not yet implemented";
function seek(_fd:GoInt, _offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } throw "syscall.seek is not yet implemented";
function dup(_fd:GoInt):{ var _0 : GoInt; var _1 : Error; } throw "syscall.dup is not yet implemented";
function dup2(_fd:GoInt, _newfd:GoInt):Error throw "syscall.dup2 is not yet implemented";
function pipe(_fd:Slice<GoInt>):Error throw "syscall.pipe is not yet implemented";
function _fsCall(_name:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : stdgo.syscall.js.Js.Value; var _1 : Error; } throw "syscall._fsCall is not yet implemented";
/**
    // checkPath checks that the path is not empty and that it contains no null characters.
**/
function _checkPath(_path:GoString):Error throw "syscall._checkPath is not yet implemented";
function _recoverErr(_errPtr:Error):Void throw "syscall._recoverErr is not yet implemented";
/**
    // mapJSError maps an error given by Node.js to the appropriate Go error
**/
function _mapJSError(_jsErr:stdgo.syscall.js.Js.Value):Error throw "syscall._mapJSError is not yet implemented";
function _msanRead(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void throw "syscall._msanRead is not yet implemented";
function _msanWrite(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void throw "syscall._msanWrite is not yet implemented";
function socket(_proto:GoInt, _sotype:GoInt, _unused:GoInt):{ var _0 : GoInt; var _1 : Error; } throw "syscall.socket is not yet implemented";
function bind(_fd:GoInt, _sa:Sockaddr):Error throw "syscall.bind is not yet implemented";
function stopIO(_fd:GoInt):Error throw "syscall.stopIO is not yet implemented";
function listen(_fd:GoInt, _backlog:GoInt):Error throw "syscall.listen is not yet implemented";
function accept(_fd:GoInt):{ var _0 : GoInt; var _1 : Sockaddr; var _2 : Error; } throw "syscall.accept is not yet implemented";
function connect(_fd:GoInt, _sa:Sockaddr):Error throw "syscall.connect is not yet implemented";
function recvfrom(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt):{ var _0 : GoInt; var _1 : Sockaddr; var _2 : Error; } throw "syscall.recvfrom is not yet implemented";
function sendto(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt, _to:Sockaddr):Error throw "syscall.sendto is not yet implemented";
function recvmsg(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _flags:GoInt):{ var _0 : GoInt; var _1 : GoInt; var _2 : GoInt; var _3 : Sockaddr; var _4 : Error; } throw "syscall.recvmsg is not yet implemented";
function sendmsgN(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _to:Sockaddr, _flags:GoInt):{ var _0 : GoInt; var _1 : Error; } throw "syscall.sendmsgN is not yet implemented";
function getsockoptInt(_fd:GoInt, _level:GoInt, _opt:GoInt):{ var _0 : GoInt; var _1 : Error; } throw "syscall.getsockoptInt is not yet implemented";
function setsockoptInt(_fd:GoInt, _level:GoInt, _opt:GoInt, _value:GoInt):Error throw "syscall.setsockoptInt is not yet implemented";
function setReadDeadline(_fd:GoInt, _t:GoInt64):Error throw "syscall.setReadDeadline is not yet implemented";
function setWriteDeadline(_fd:GoInt, _t:GoInt64):Error throw "syscall.setWriteDeadline is not yet implemented";
function shutdown(_fd:GoInt, _how:GoInt):Error throw "syscall.shutdown is not yet implemented";
function setNonblock(_fd:GoInt, _nonblocking:Bool):Error throw "syscall.setNonblock is not yet implemented";
/**
    // StringByteSlice converts a string to a NUL-terminated []byte,
    // If s contains a NUL byte this function panics instead of
    // returning an error.
    //
    // Deprecated: Use ByteSliceFromString instead.
**/
function stringByteSlice(_s:GoString):Slice<GoByte> throw "syscall.stringByteSlice is not yet implemented";
/**
    // ByteSliceFromString returns a NUL-terminated slice of bytes
    // containing the text of s. If s contains a NUL byte at any
    // location, it returns (nil, EINVAL).
**/
function byteSliceFromString(_s:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } throw "syscall.byteSliceFromString is not yet implemented";
/**
    // StringBytePtr returns a pointer to a NUL-terminated array of bytes.
    // If s contains a NUL byte this function panics instead of returning
    // an error.
    //
    // Deprecated: Use BytePtrFromString instead.
**/
function stringBytePtr(_s:GoString):Pointer<GoByte> throw "syscall.stringBytePtr is not yet implemented";
/**
    // BytePtrFromString returns a pointer to a NUL-terminated array of
    // bytes containing the text of s. If s contains a NUL byte at any
    // location, it returns (nil, EINVAL).
**/
function bytePtrFromString(_s:GoString):{ var _0 : Pointer<GoByte>; var _1 : Error; } throw "syscall.bytePtrFromString is not yet implemented";
function getpagesize():GoInt throw "syscall.getpagesize is not yet implemented";
function exit(_code:GoInt):Void throw "syscall.exit is not yet implemented";
function _direntIno(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } throw "syscall._direntIno is not yet implemented";
function _direntReclen(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } throw "syscall._direntReclen is not yet implemented";
function _direntNamlen(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } throw "syscall._direntNamlen is not yet implemented";
function syscall(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr):{ var _0 : GoUIntptr; var _1 : GoUIntptr; var _2 : Errno; } throw "syscall.syscall is not yet implemented";
function syscall6(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr, _a4:GoUIntptr, _a5:GoUIntptr, _a6:GoUIntptr):{ var _0 : GoUIntptr; var _1 : GoUIntptr; var _2 : Errno; } throw "syscall.syscall6 is not yet implemented";
function rawSyscall(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr):{ var _0 : GoUIntptr; var _1 : GoUIntptr; var _2 : Errno; } throw "syscall.rawSyscall is not yet implemented";
function rawSyscall6(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr, _a4:GoUIntptr, _a5:GoUIntptr, _a6:GoUIntptr):{ var _0 : GoUIntptr; var _1 : GoUIntptr; var _2 : Errno; } throw "syscall.rawSyscall6 is not yet implemented";
function sysctl(_key:GoString):{ var _0 : GoString; var _1 : Error; } throw "syscall.sysctl is not yet implemented";
function getwd():{ var _0 : GoString; var _1 : Error; } throw "syscall.getwd is not yet implemented";
function getuid():GoInt throw "syscall.getuid is not yet implemented";
function getgid():GoInt throw "syscall.getgid is not yet implemented";
function geteuid():GoInt throw "syscall.geteuid is not yet implemented";
function getegid():GoInt throw "syscall.getegid is not yet implemented";
function getgroups():{ var _0 : Slice<GoInt>; var _1 : Error; } throw "syscall.getgroups is not yet implemented";
function getpid():GoInt throw "syscall.getpid is not yet implemented";
function getppid():GoInt throw "syscall.getppid is not yet implemented";
function umask(_mask:GoInt):GoInt throw "syscall.umask is not yet implemented";
function gettimeofday(_tv:Timeval):Error throw "syscall.gettimeofday is not yet implemented";
function kill(_pid:GoInt, _signum:Signal):Error throw "syscall.kill is not yet implemented";
function sendfile(_outfd:GoInt, _infd:GoInt, _offset:Pointer<GoInt64>, _count:GoInt):{ var _0 : GoInt; var _1 : Error; } throw "syscall.sendfile is not yet implemented";
function startProcess(_argv0:GoString, _argv:Slice<GoString>, _attr:ProcAttr):{ var _0 : GoInt; var _1 : GoUIntptr; var _2 : Error; } throw "syscall.startProcess is not yet implemented";
function wait4(_pid:GoInt, _wstatus:Pointer<WaitStatus>, _options:GoInt, _rusage:Rusage):{ var _0 : GoInt; var _1 : Error; } throw "syscall.wait4 is not yet implemented";
function _setTimespec(_sec:GoInt64, _nsec:GoInt64):Timespec throw "syscall._setTimespec is not yet implemented";
function _setTimeval(_sec:GoInt64, _usec:GoInt64):Timeval throw "syscall._setTimeval is not yet implemented";
/**
    // errnoErr returns common boxed Errno values, to prevent
    // allocations at runtime.
**/
function _errnoErr(_e:Errno):Error throw "syscall._errnoErr is not yet implemented";
function _faketimeWrite(_fd:GoInt, _p:Slice<GoByte>):GoInt throw "syscall._faketimeWrite is not yet implemented";
/**
    // TimespecToNSec returns the time stored in ts as nanoseconds.
**/
function timespecToNsec(_ts:Timespec):GoInt64 throw "syscall.timespecToNsec is not yet implemented";
/**
    // NsecToTimespec converts a number of nanoseconds into a Timespec.
**/
function nsecToTimespec(_nsec:GoInt64):Timespec throw "syscall.nsecToTimespec is not yet implemented";
/**
    // TimevalToNsec returns the time stored in tv as nanoseconds.
**/
function timevalToNsec(_tv:Timeval):GoInt64 throw "syscall.timevalToNsec is not yet implemented";
/**
    // NsecToTimeval converts a number of nanoseconds into a Timeval.
**/
function nsecToTimeval(_nsec:GoInt64):Timeval throw "syscall.nsecToTimeval is not yet implemented";
@:keep private class Timespec_static_extension {
    /**
        // Nano returns the time stored in ts as nanoseconds.
    **/
    @:keep
    static public function nano( _ts:Timespec):GoInt64 throw "syscall.nano is not yet implemented";
    /**
        // Unix returns the time stored in ts as seconds plus nanoseconds.
    **/
    @:keep
    static public function unix( _ts:Timespec):{ var _0 : GoInt64; var _1 : GoInt64; } throw "syscall.unix is not yet implemented";
}
private class Timespec_wrapper {
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
    public function __underlying__() return Go.toInterface(this);
    var __self__ : Timespec;
}
@:keep private class Timeval_static_extension {
    /**
        // Nano returns the time stored in tv as nanoseconds.
    **/
    @:keep
    static public function nano( _tv:Timeval):GoInt64 throw "syscall.nano is not yet implemented";
    /**
        // Unix returns the time stored in tv as seconds plus nanoseconds.
    **/
    @:keep
    static public function unix( _tv:Timeval):{ var _0 : GoInt64; var _1 : GoInt64; } throw "syscall.unix is not yet implemented";
}
private class Timeval_wrapper {
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
    public function __underlying__() return Go.toInterface(this);
    var __self__ : Timeval;
}
@:keep private class Errno_static_extension {
    @:keep
    static public function timeout( _e:Errno):Bool throw "syscall.timeout is not yet implemented";
    @:keep
    static public function temporary( _e:Errno):Bool throw "syscall.temporary is not yet implemented";
    @:keep
    static public function is_( _e:Errno, _target:Error):Bool throw "syscall.is_ is not yet implemented";
    @:keep
    static public function error( _e:Errno):GoString throw "syscall.error is not yet implemented";
}
private class Errno_wrapper {
    @:keep
    public var timeout : () -> Bool = null;
    @:keep
    public var temporary : () -> Bool = null;
    @:keep
    public var is_ : Error -> Bool = null;
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : Errno;
}
@:keep private class Signal_static_extension {
    @:keep
    static public function string( _s:Signal):GoString throw "syscall.string is not yet implemented";
    @:keep
    static public function signal( _s:Signal):Void throw "syscall.signal is not yet implemented";
}
private class Signal_wrapper {
    @:keep
    public var string : () -> GoString = null;
    @:keep
    public var signal : () -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(this);
    var __self__ : Signal;
}
@:keep private class WaitStatus_static_extension {
    @:keep
    static public function trapCause( _w:WaitStatus):GoInt throw "syscall.trapCause is not yet implemented";
    @:keep
    static public function stopSignal( _w:WaitStatus):Signal throw "syscall.stopSignal is not yet implemented";
    @:keep
    static public function continued( _w:WaitStatus):Bool throw "syscall.continued is not yet implemented";
    @:keep
    static public function stopped( _w:WaitStatus):Bool throw "syscall.stopped is not yet implemented";
    @:keep
    static public function coreDump( _w:WaitStatus):Bool throw "syscall.coreDump is not yet implemented";
    @:keep
    static public function signal( _w:WaitStatus):Signal throw "syscall.signal is not yet implemented";
    @:keep
    static public function signaled( _w:WaitStatus):Bool throw "syscall.signaled is not yet implemented";
    @:keep
    static public function exitStatus( _w:WaitStatus):GoInt throw "syscall.exitStatus is not yet implemented";
    @:keep
    static public function exited( _w:WaitStatus):Bool throw "syscall.exited is not yet implemented";
}
private class WaitStatus_wrapper {
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
    public function __underlying__() return Go.toInterface(this);
    var __self__ : WaitStatus;
}
