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
/**
    // Package syscall contains an interface to the low-level operating system
    // primitives. The details vary depending on the underlying system, and
    // by default, godoc will display the syscall documentation for the current
    // system. If you want godoc to display syscall documentation for another
    // system, set $GOOS and $GOARCH to the desired system. For example, if
    // you want to view documentation for freebsd/arm on linux/amd64, set $GOOS
    // to freebsd and $GOARCH to arm.
    // The primary use of syscall is inside other packages that provide a more
    // portable interface to the system, such as "os", "time" and "net".  Use
    // those packages rather than this one if you can.
    // For details of the functions and data types in this package consult
    // the manuals for the appropriate operating system.
    // These calls return err == nil to indicate success; otherwise
    // err is an operating system error describing the failure.
    // On most systems, that error has type syscall.Errno.
    //
    // Deprecated: this package is locked down. Callers should use the
    // corresponding package in the golang.org/x/sys repository instead.
    // That is also where updates required by new systems or versions
    // should be applied. See https://golang.org/s/go1.4-syscall for more
    // information.
**/
private var __go2hxdoc__package : Bool;
/**
    // envs is provided by the runtime. elements are expected to
    // be of the form "key=value". An empty string means deleted
    // (or a duplicate to be ignored).
    
    
**/
private var _envs : Slice<GoString> = (null : Slice<GoString>);
/**
    
    
    
**/
private var _jsProcess = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
private var _jsFS = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
private var _constants = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
private var _uint8Array = ({} : stdgo.syscall.js.Js.Value);
/**
    
    
    
**/
private var _nodeWRONLY = (0 : GoInt);
/**
    
    
    
**/
private var _nodeRDWR = (0 : GoInt);
/**
    
    
    
**/
private var _nodeCREATE = (0 : GoInt);
/**
    
    
    
**/
private var _nodeTRUNC = (0 : GoInt);
/**
    
    
    
**/
private var _nodeAPPEND = (0 : GoInt);
/**
    
    
    
**/
private var _nodeEXCL = (0 : GoInt);
/**
    
    
    
**/
private var _files = (null : GoMap<GoInt, Ref<stdgo.syscall.Syscall.T_jsFile>>);
/**
    
    
    
**/
private var _signals = new GoArray<GoString>(...[for (i in 0 ... 0) ("" : GoString)]);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
private var _errorstr = new GoArray<GoString>(...[for (i in 0 ... 2054) ("" : GoString)]);
/**
    // Do the interface allocations only once for common
    // Errno values.
    
    
**/
private var _errEAGAIN : Error = (null : Error);
/**
    // Do the interface allocations only once for common
    // Errno values.
    
    
**/
private var _errEINVAL : Error = (null : Error);
/**
    // Do the interface allocations only once for common
    // Errno values.
    
    
**/
private var _errENOENT : Error = (null : Error);
/**
    
    
    
**/
private var _errnoByCode = (null : GoMap<GoString, stdgo.syscall.Syscall.Errno>);
/**
    
    
    
**/
private final _asanenabled = null;
/**
    
    
    
**/
private final _isBigEndian = null;
/**
    // envOnce guards initialization by copyenv, which populates env.
    
    
**/
private var _envOnce : stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
/**
    // envLock guards env and envs.
    
    
**/
private var _envLock : stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);
/**
    // env maps from an environment variable to its first occurrence in envs.
    
    
**/
private var _env : GoMap<GoString, GoInt> = (null : GoMap<GoString, GoInt>);
/**
    
    
    
**/
private var _filesMu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
/**
    
    
    
**/
private final _msanenabled = null;
/**
    
    
    
**/
final af_UNSPEC = (0 : GoUInt64);
/**
    
    
    
**/
final af_UNIX = null;
/**
    
    
    
**/
final af_INET = null;
/**
    
    
    
**/
final af_INET6 = null;
/**
    
    
    
**/
final sock_STREAM = (0 : GoUInt64);
/**
    
    
    
**/
final sock_DGRAM = null;
/**
    
    
    
**/
final sock_RAW = null;
/**
    
    
    
**/
final sock_SEQPACKET = null;
/**
    
    
    
**/
final ipproto_IP = (0 : GoUInt64);
/**
    
    
    
**/
final ipproto_IPV4 = (0 : GoUInt64);
/**
    
    
    
**/
final ipproto_IPV6 = (0 : GoUInt64);
/**
    
    
    
**/
final ipproto_TCP = (0 : GoUInt64);
/**
    
    
    
**/
final ipproto_UDP = (0 : GoUInt64);
/**
    
    
    
**/
private final __4 = (0 : GoUInt64);
/**
    
    
    
**/
final ipv6_V6ONLY = null;
/**
    
    
    
**/
final somaxconn = null;
/**
    
    
    
**/
final so_ERROR = null;
/**
    // Misc constants expected by package net but not supported.
    
    
**/
private final __5 = (0 : GoUInt64);
/**
    // Misc constants expected by package net but not supported.
    
    
**/
final f_DUPFD_CLOEXEC = null;
/**
    // Misc constants expected by package net but not supported.
    
    // unsupported
**/
final sys_FCNTL = (0 : GoUInt64);
/**
    // Single-word zero for use when we need a valid pointer to 0 bytes.
    // See mksyscall.pl.
    
    
**/
private var __zero : GoUIntptr = (0 : GoUIntptr);
/**
    
    
    
**/
private final _direntSize = (0 : GoUInt64);
/**
    
    
    
**/
final pathMax = (0 : GoUInt64);
/**
    
    
    
**/
private final __6 : Signal = ((0 : GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
final sigchld = ((0 : GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
final sigint = ((0 : GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
final sigkill = ((0 : GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
final sigtrap = ((0 : GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
final sigquit = ((0 : GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
final sigterm = ((0 : GoInt) : stdgo.syscall.Syscall.Signal);
/**
    
    
    
**/
final stdin = (0 : GoUInt64);
/**
    
    
    
**/
final stdout = (0 : GoUInt64);
/**
    
    
    
**/
final stderr = (0 : GoUInt64);
/**
    
    
    
**/
final o_RDONLY = (0 : GoUInt64);
/**
    
    
    
**/
final o_WRONLY = (0 : GoUInt64);
/**
    
    
    
**/
final o_RDWR = (0 : GoUInt64);
/**
    
    
    
**/
final o_CREAT = (0 : GoUInt64);
/**
    
    
    
**/
final o_CREATE = (0 : GoUInt64);
/**
    
    
    
**/
final o_TRUNC = (0 : GoUInt64);
/**
    
    
    
**/
final o_APPEND = (0 : GoUInt64);
/**
    
    
    
**/
final o_EXCL = (0 : GoUInt64);
/**
    
    
    
**/
final o_SYNC = (0 : GoUInt64);
/**
    
    
    
**/
final o_CLOEXEC = (0 : GoUInt64);
/**
    
    
    
**/
final f_DUPFD = (0 : GoUInt64);
/**
    
    
    
**/
final f_GETFD = (0 : GoUInt64);
/**
    
    
    
**/
final f_SETFD = (0 : GoUInt64);
/**
    
    
    
**/
final f_GETFL = (0 : GoUInt64);
/**
    
    
    
**/
final f_SETFL = (0 : GoUInt64);
/**
    
    
    
**/
final f_GETOWN = (0 : GoUInt64);
/**
    
    
    
**/
final f_SETOWN = (0 : GoUInt64);
/**
    
    
    
**/
final f_GETLK = (0 : GoUInt64);
/**
    
    
    
**/
final f_SETLK = (0 : GoUInt64);
/**
    
    
    
**/
final f_SETLKW = (0 : GoUInt64);
/**
    
    
    
**/
final f_RGETLK = (0 : GoUInt64);
/**
    
    
    
**/
final f_RSETLK = (0 : GoUInt64);
/**
    
    
    
**/
final f_CNVT = (0 : GoUInt64);
/**
    
    
    
**/
final f_RSETLKW = (0 : GoUInt64);
/**
    
    
    
**/
final f_RDLCK = (0 : GoUInt64);
/**
    
    
    
**/
final f_WRLCK = (0 : GoUInt64);
/**
    
    
    
**/
final f_UNLCK = (0 : GoUInt64);
/**
    
    
    
**/
final f_UNLKSYS = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFMT = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFSHM_SYSV = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFSEMA = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFCOND = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFMUTEX = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFSHM = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFBOUNDSOCK = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFSOCKADDR = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFDSOCK = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFSOCK = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFLNK = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFREG = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFBLK = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFDIR = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFCHR = (0 : GoUInt64);
/**
    
    
    
**/
final s_IFIFO = (0 : GoUInt64);
/**
    
    
    
**/
final s_UNSUP = (0 : GoUInt64);
/**
    
    
    
**/
final s_ISUID = (0 : GoUInt64);
/**
    
    
    
**/
final s_ISGID = (0 : GoUInt64);
/**
    
    
    
**/
final s_ISVTX = (0 : GoUInt64);
/**
    
    
    
**/
final s_IREAD = (0 : GoUInt64);
/**
    
    
    
**/
final s_IWRITE = (0 : GoUInt64);
/**
    
    
    
**/
final s_IEXEC = (0 : GoUInt64);
/**
    
    
    
**/
final s_IRWXU = (0 : GoUInt64);
/**
    
    
    
**/
final s_IRUSR = (0 : GoUInt64);
/**
    
    
    
**/
final s_IWUSR = (0 : GoUInt64);
/**
    
    
    
**/
final s_IXUSR = (0 : GoUInt64);
/**
    
    
    
**/
final s_IRWXG = (0 : GoUInt64);
/**
    
    
    
**/
final s_IRGRP = (0 : GoUInt64);
/**
    
    
    
**/
final s_IWGRP = (0 : GoUInt64);
/**
    
    
    
**/
final s_IXGRP = (0 : GoUInt64);
/**
    
    
    
**/
final s_IRWXO = (0 : GoUInt64);
/**
    
    
    
**/
final s_IROTH = (0 : GoUInt64);
/**
    
    
    
**/
final s_IWOTH = (0 : GoUInt64);
/**
    
    
    
**/
final s_IXOTH = (0 : GoUInt64);
/**
    
    
    
**/
var forkLock : stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);
/**
    
    
    
**/
final implementsGetwd = null;
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_null = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_nameservice = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_dup = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_dup2 = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_open = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_close = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_read = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_write = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_lseek = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_stat = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_fstat = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_chmod = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_isatty = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_brk = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_mmap = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_munmap = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_getdents = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_mprotect = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_list_mappings = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_exit = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_getpid = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_sched_yield = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_sysconf = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_gettimeofday = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_clock = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_nanosleep = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_clock_getres = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_clock_gettime = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_mkdir = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_rmdir = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_chdir = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_getcwd = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_unlink = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_imc_makeboundsock = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_imc_accept = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_imc_connect = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_imc_sendmsg = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_imc_recvmsg = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_imc_mem_obj_create = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_imc_socketpair = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_mutex_create = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_mutex_lock = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_mutex_trylock = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_mutex_unlock = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_cond_create = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_cond_wait = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_cond_signal = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_cond_broadcast = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_cond_timed_wait_abs = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_thread_create = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_thread_exit = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_tls_init = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_thread_nice = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_tls_get = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_second_tls_set = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_second_tls_get = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_exception_handler = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_exception_stack = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_exception_clear_flag = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_sem_create = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_sem_wait = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_sem_post = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_sem_get_value = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_dyncode_create = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_dyncode_modify = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_dyncode_delete = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_test_infoleak = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_test_crash = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_test_syscall_1 = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_test_syscall_2 = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_futex_wait_abs = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_futex_wake = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_pread = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_pwrite = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_truncate = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_lstat = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_link = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_rename = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_symlink = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_access = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_readlink = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_utimes = (0 : GoUInt64);
/**
    // These were originally used by Nacl, then later also used by
    // js/wasm. Now that they're only used by js/wasm, these numbers are
    // just arbitrary.
    //
    // TODO: delete? replace with something meaningful?
    
    
**/
private final _sys_get_random_bytes = (0 : GoUInt64);
/**
    // native_client/src/trusted/service_runtime/include/sys/errno.h
    // The errors are mainly copied from Linux.
    
    /|* Operation not permitted *|/
**/
final eperm : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No such file or directory *|/
**/
final enoent : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No such process *|/
**/
final esrch : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Interrupted system call *|/
**/
final eintr : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* I/O error *|/
**/
final eio : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No such device or address *|/
**/
final enxio : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Argument list too long *|/
**/
final e2big : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Exec format error *|/
**/
final enoexec : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Bad file number *|/
**/
final ebadf : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No child processes *|/
**/
final echild : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Try again *|/
**/
final eagain : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Out of memory *|/
**/
final enomem : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Permission denied *|/
**/
final eacces : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Bad address *|/
**/
final efault : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Device or resource busy *|/
**/
final ebusy : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* File exists *|/
**/
final eexist : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Cross-device link *|/
**/
final exdev : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No such device *|/
**/
final enodev : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Not a directory *|/
**/
final enotdir : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Is a directory *|/
**/
final eisdir : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Invalid argument *|/
**/
final einval : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* File table overflow *|/
**/
final enfile : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Too many open files *|/
**/
final emfile : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Not a typewriter *|/
**/
final enotty : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* File too large *|/
**/
final efbig : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No space left on device *|/
**/
final enospc : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Illegal seek *|/
**/
final espipe : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Read-only file system *|/
**/
final erofs : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Too many links *|/
**/
final emlink : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Broken pipe *|/
**/
final epipe : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* File name too long *|/
**/
final enametoolong : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Function not implemented *|/
**/
final enosys : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Quota exceeded *|/
**/
final edquot : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Math arg out of domain of func *|/
**/
final edom : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Math result not representable *|/
**/
final erange : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Deadlock condition *|/
**/
final edeadlk : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No record locks available *|/
**/
final enolck : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Directory not empty *|/
**/
final enotempty : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Too many symbolic links *|/
**/
final eloop : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No message of desired type *|/
**/
final enomsg : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Identifier removed *|/
**/
final eidrm : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Channel number out of range *|/
**/
final echrng : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Level 2 not synchronized *|/
**/
final el2nsync : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Level 3 halted *|/
**/
final el3hlt : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Level 3 reset *|/
**/
final el3rst : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Link number out of range *|/
**/
final elnrng : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Protocol driver not attached *|/
**/
final eunatch : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No CSI structure available *|/
**/
final enocsi : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Level 2 halted *|/
**/
final el2hlt : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Invalid exchange *|/
**/
final ebade : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Invalid request descriptor *|/
**/
final ebadr : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Exchange full *|/
**/
final exfull : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No anode *|/
**/
final enoano : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Invalid request code *|/
**/
final ebadrqc : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Invalid slot *|/
**/
final ebadslt : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* File locking deadlock error *|/
**/
final edeadlock : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Bad font file fmt *|/
**/
final ebfont : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Device not a stream *|/
**/
final enostr : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No data (for no delay io) *|/
**/
final enodata : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Timer expired *|/
**/
final etime : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Out of streams resources *|/
**/
final enosr : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Machine is not on the network *|/
**/
final enonet : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Package not installed *|/
**/
final enopkg : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* The object is remote *|/
**/
final eremote : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* The link has been severed *|/
**/
final enolink : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Advertise error *|/
**/
final eadv : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Srmount error *|/
**/
final esrmnt : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Communication error on send *|/
**/
final ecomm : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Protocol error *|/
**/
final eproto : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Multihop attempted *|/
**/
final emultihop : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Cross mount point (not really error) *|/
**/
final edotdot : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Trying to read unreadable message *|/
**/
final ebadmsg : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Value too large for defined data type *|/
**/
final eoverflow : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Given log. name not unique *|/
**/
final enotuniq : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* f.d. invalid for this operation *|/
**/
final ebadfd : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Remote address changed *|/
**/
final eremchg : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Can't access a needed shared lib *|/
**/
final elibacc : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Accessing a corrupted shared lib *|/
**/
final elibbad : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* .lib section in a.out corrupted *|/
**/
final elibscn : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Attempting to link in too many libs *|/
**/
final elibmax : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Attempting to exec a shared library *|/
**/
final elibexec : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
final eilseq : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
final eusers : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Socket operation on non-socket *|/
**/
final enotsock : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Destination address required *|/
**/
final edestaddrreq : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Message too long *|/
**/
final emsgsize : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Protocol wrong type for socket *|/
**/
final eprototype : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Protocol not available *|/
**/
final enoprotoopt : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Unknown protocol *|/
**/
final eprotonosupport : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Socket type not supported *|/
**/
final esocktnosupport : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Operation not supported on transport endpoint *|/
**/
final eopnotsupp : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Protocol family not supported *|/
**/
final epfnosupport : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Address family not supported by protocol family *|/
**/
final eafnosupport : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Address already in use *|/
**/
final eaddrinuse : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Address not available *|/
**/
final eaddrnotavail : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Network interface is not configured *|/
**/
final enetdown : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Network is unreachable *|/
**/
final enetunreach : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
final enetreset : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Connection aborted *|/
**/
final econnaborted : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Connection reset by peer *|/
**/
final econnreset : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No buffer space available *|/
**/
final enobufs : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Socket is already connected *|/
**/
final eisconn : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Socket is not connected *|/
**/
final enotconn : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Can't send after socket shutdown *|/
**/
final eshutdown : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
final etoomanyrefs : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Connection timed out *|/
**/
final etimedout : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Connection refused *|/
**/
final econnrefused : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Host is down *|/
**/
final ehostdown : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Host is unreachable *|/
**/
final ehostunreach : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Socket already connected *|/
**/
final ealready : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Connection already in progress *|/
**/
final einprogress : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
final estale : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Not supported *|/
**/
final enotsup : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No medium (in tape drive) *|/
**/
final enomedium : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Operation canceled. *|/
**/
final ecanceled : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Inode is remote (not really error) *|/
**/
final elbin : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Inappropriate file type or format *|/
**/
final eftype : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No more files *|/
**/
final enmfile : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    
**/
final eproclim : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* No such host or network path *|/
**/
final enoshare : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Filename exists with different case *|/
**/
final ecaseclash : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    // TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
    
    /|* Operation would block *|/
**/
final ewouldblock : Errno = ((0 : GoUIntptr) : stdgo.syscall.Syscall.Errno);
/**
    
    
    
**/
private final _faketime = null;
/**
    // A RawConn is a raw network connection.
    
    
**/
typedef RawConn = StructType & {
    /**
        // Control invokes f on the underlying connection's file
        // descriptor or handle.
        // The file descriptor fd is guaranteed to remain valid while
        // f executes but not after f returns.
        
        
    **/
    public dynamic function control(_f:(_fd:GoUIntptr) -> Void):Error;
    /**
        // Read invokes f on the underlying connection's file
        // descriptor or handle; f is expected to try to read from the
        // file descriptor.
        // If f returns true, Read returns. Otherwise Read blocks
        // waiting for the connection to be ready for reading and
        // tries again repeatedly.
        // The file descriptor is guaranteed to remain valid while f
        // executes but not after f returns.
        
        
    **/
    public dynamic function read(_f:(_fd:GoUIntptr) -> Bool):Error;
    /**
        // Write is like Read but for writing.
        
        
    **/
    public dynamic function write(_f:(_fd:GoUIntptr) -> Bool):Error;
};
/**
    // Conn is implemented by some types in the net and os packages to provide
    // access to the underlying file descriptor or handle.
    
    
**/
typedef Conn = StructType & {
    /**
        // SyscallConn returns a raw network connection.
        
        
    **/
    public dynamic function syscallConn():{ var _0 : RawConn; var _1 : Error; };
};
/**
    
    
    
**/
@:structInit @:private class T_jsFile {
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
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_jsFile(_path, _entries, _dirIdx, _pos, _seeked);
    }
}
/**
    
    
    
**/
@:structInit class SockaddrInet4 {
    public var port : GoInt = 0;
    public var addr : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) (0 : GoUInt8)]);
    public function new(?port:GoInt, ?addr:GoArray<GoUInt8>) {
        if (port != null) this.port = port;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SockaddrInet4(port, addr);
    }
}
/**
    
    
    
**/
@:structInit class SockaddrInet6 {
    public var port : GoInt = 0;
    public var zoneId : GoUInt32 = 0;
    public var addr : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) (0 : GoUInt8)]);
    public function new(?port:GoInt, ?zoneId:GoUInt32, ?addr:GoArray<GoUInt8>) {
        if (port != null) this.port = port;
        if (zoneId != null) this.zoneId = zoneId;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SockaddrInet6(port, zoneId, addr);
    }
}
/**
    
    
    
**/
@:structInit class SockaddrUnix {
    public var name : GoString = "";
    public function new(?name:GoString) {
        if (name != null) this.name = name;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SockaddrUnix(name);
    }
}
/**
    
    
    
**/
@:structInit class Dirent {
    public var reclen : GoUInt16 = 0;
    public var name : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 256) (0 : GoUInt8)]);
    public function new(?reclen:GoUInt16, ?name:GoArray<GoUInt8>) {
        if (reclen != null) this.reclen = reclen;
        if (name != null) this.name = name;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Dirent(reclen, name);
    }
}
/**
    
    
    
**/
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
    public function __underlying__() return Go.toInterface(this);
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
/**
    // XXX made up
    
    
**/
@:structInit class Rusage {
    public var utime : stdgo.syscall.Syscall.Timeval = ({} : stdgo.syscall.Syscall.Timeval);
    public var stime : stdgo.syscall.Syscall.Timeval = ({} : stdgo.syscall.Syscall.Timeval);
    public function new(?utime:stdgo.syscall.Syscall.Timeval, ?stime:stdgo.syscall.Syscall.Timeval) {
        if (utime != null) this.utime = utime;
        if (stime != null) this.stime = stime;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Rusage(utime, stime);
    }
}
/**
    // XXX made up
    
    
**/
@:structInit class ProcAttr {
    public var dir : GoString = "";
    public var env : Slice<GoString> = (null : Slice<GoString>);
    public var files : Slice<GoUIntptr> = (null : Slice<GoUIntptr>);
    public var sys : Ref<stdgo.syscall.Syscall.SysProcAttr> = (null : Ref<stdgo.syscall.Syscall.SysProcAttr>);
    public function new(?dir:GoString, ?env:Slice<GoString>, ?files:Slice<GoUIntptr>, ?sys:Ref<stdgo.syscall.Syscall.SysProcAttr>) {
        if (dir != null) this.dir = dir;
        if (env != null) this.env = env;
        if (files != null) this.files = files;
        if (sys != null) this.sys = sys;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ProcAttr(dir, env, files, sys);
    }
}
/**
    
    
    
**/
@:structInit class SysProcAttr {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SysProcAttr();
    }
}
/**
    
    
    // dummy
**/
@:structInit class Iovec {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Iovec();
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.syscall.Syscall.Timespec_static_extension) class Timespec {
    public var sec : GoInt64 = 0;
    public var nsec : GoInt64 = 0;
    public function new(?sec:GoInt64, ?nsec:GoInt64) {
        if (sec != null) this.sec = sec;
        if (nsec != null) this.nsec = nsec;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Timespec(sec, nsec);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.syscall.Syscall.Timeval_static_extension) class Timeval {
    public var sec : GoInt64 = 0;
    public var usec : GoInt64 = 0;
    public function new(?sec:GoInt64, ?usec:GoInt64) {
        if (sec != null) this.sec = sec;
        if (usec != null) this.usec = usec;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Timeval(sec, usec);
    }
}
@:follow typedef Sockaddr = AnyInterface;
/**
    // An Errno is an unsigned number describing an error condition.
    // It implements the error interface. The zero Errno is by convention
    // a non-error, so code to convert from Errno to error should use:
    //
    //	err = nil
    //	if errno != 0 {
    //		err = errno
    //	}
    //
    // Errno values can be tested against error values from the os package
    // using errors.Is. For example:
    //
    //	_, _, err := syscall.Syscall(...)
    //	if errors.Is(err, fs.ErrNotExist) ...
**/
@:named @:using(stdgo.syscall.Syscall.Errno_static_extension) typedef Errno = GoUIntptr;
/**
    // A Signal is a number describing a process signal.
    // It implements the os.Signal interface.
**/
@:named @:using(stdgo.syscall.Syscall.Signal_static_extension) typedef Signal = GoInt;
@:named @:using(stdgo.syscall.Syscall.WaitStatus_static_extension) typedef WaitStatus = GoUInt32;
private function _asanRead(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void throw "syscall._asanRead is not yet implemented";
private function _asanWrite(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void throw "syscall._asanWrite is not yet implemented";
/**
    // readInt returns the size-bytes unsigned integer in native byte order at offset off.
**/
private function _readInt(_b:Slice<GoByte>, _off:GoUIntptr, _size:GoUIntptr):{ var _0 : GoUInt64; var _1 : Bool; } throw "syscall._readInt is not yet implemented";
private function _readIntBE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64 throw "syscall._readIntBE is not yet implemented";
private function _readIntLE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64 throw "syscall._readIntLE is not yet implemented";
/**
    // ParseDirent parses up to max directory entries in buf,
    // appending the names to names. It returns the number of
    // bytes consumed from buf, the number of entries added
    // to names, and the new names slice.
**/
function parseDirent(_buf:Slice<GoByte>, _max:GoInt, _names:Slice<GoString>):{ var _0 : GoInt; var _1 : GoInt; var _2 : Slice<GoString>; } throw "syscall.parseDirent is not yet implemented";
private function _runtime_envs():Slice<GoString> throw "syscall._runtime_envs is not yet implemented";
private function _copyenv():Void throw "syscall._copyenv is not yet implemented";
function unsetenv(_key:GoString):Error throw "syscall.unsetenv is not yet implemented";
function getenv(_key:GoString):{ var _0 : GoString; var _1 : Bool; } throw "syscall.getenv is not yet implemented";
function setenv(_key:GoString, _value:GoString):Error throw "syscall.setenv is not yet implemented";
function clearenv():Void throw "syscall.clearenv is not yet implemented";
function environ():Slice<GoString> throw "syscall.environ is not yet implemented";
/**
    // Provided by package runtime.
**/
private function _now():{ var _0 : GoInt64; var _1 : GoInt32; } throw "syscall._now is not yet implemented";
private function _fdToFile(_fd:GoInt):{ var _0 : Ref<T_jsFile>; var _1 : Error; } throw "syscall._fdToFile is not yet implemented";
function open(_path:GoString, _openmode:GoInt, _perm:GoUInt32):{ var _0 : GoInt; var _1 : Error; } throw "syscall.open is not yet implemented";
function close(_fd:GoInt):Error throw "syscall.close is not yet implemented";
function closeOnExec(_fd:GoInt):Void throw "syscall.closeOnExec is not yet implemented";
function mkdir(_path:GoString, _perm:GoUInt32):Error throw "syscall.mkdir is not yet implemented";
function readDirent(_fd:GoInt, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } throw "syscall.readDirent is not yet implemented";
private function _setStat(_st:Ref<Stat_t>, _jsSt:stdgo.syscall.js.Js.Value):Void throw "syscall._setStat is not yet implemented";
function stat(_path:GoString, _st:Ref<Stat_t>):Error throw "syscall.stat is not yet implemented";
function lstat(_path:GoString, _st:Ref<Stat_t>):Error throw "syscall.lstat is not yet implemented";
function fstat(_fd:GoInt, _st:Ref<Stat_t>):Error throw "syscall.fstat is not yet implemented";
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
private function _fsCall(_name:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : stdgo.syscall.js.Js.Value; var _1 : Error; } throw "syscall._fsCall is not yet implemented";
/**
    // checkPath checks that the path is not empty and that it contains no null characters.
**/
private function _checkPath(_path:GoString):Error throw "syscall._checkPath is not yet implemented";
private function _recoverErr(_errPtr:Ref<Error>):Void throw "syscall._recoverErr is not yet implemented";
/**
    // mapJSError maps an error given by Node.js to the appropriate Go error.
**/
private function _mapJSError(_jsErr:stdgo.syscall.js.Js.Value):Error throw "syscall._mapJSError is not yet implemented";
private function _msanRead(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void throw "syscall._msanRead is not yet implemented";
private function _msanWrite(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void throw "syscall._msanWrite is not yet implemented";
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
/**
    // runtimeSetenv and runtimeUnsetenv are provided by the runtime.
**/
private function _runtimeSetenv(_k:GoString, _v:GoString):Void throw "syscall._runtimeSetenv is not yet implemented";
private function _runtimeUnsetenv(_k:GoString):Void throw "syscall._runtimeUnsetenv is not yet implemented";
private function _direntIno(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } throw "syscall._direntIno is not yet implemented";
private function _direntReclen(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } throw "syscall._direntReclen is not yet implemented";
private function _direntNamlen(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } throw "syscall._direntNamlen is not yet implemented";
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
function gettimeofday(_tv:Ref<Timeval>):Error throw "syscall.gettimeofday is not yet implemented";
function kill(_pid:GoInt, _signum:Signal):Error throw "syscall.kill is not yet implemented";
function sendfile(_outfd:GoInt, _infd:GoInt, _offset:Pointer<GoInt64>, _count:GoInt):{ var _0 : GoInt; var _1 : Error; } throw "syscall.sendfile is not yet implemented";
function startProcess(_argv0:GoString, _argv:Slice<GoString>, _attr:Ref<ProcAttr>):{ var _0 : GoInt; var _1 : GoUIntptr; var _2 : Error; } throw "syscall.startProcess is not yet implemented";
function wait4(_pid:GoInt, _wstatus:Pointer<WaitStatus>, _options:GoInt, _rusage:Ref<Rusage>):{ var _0 : GoInt; var _1 : Error; } throw "syscall.wait4 is not yet implemented";
private function _setTimespec(_sec:GoInt64, _nsec:GoInt64):Timespec throw "syscall._setTimespec is not yet implemented";
private function _setTimeval(_sec:GoInt64, _usec:GoInt64):Timeval throw "syscall._setTimeval is not yet implemented";
/**
    // errnoErr returns common boxed Errno values, to prevent
    // allocations at runtime.
**/
private function _errnoErr(_e:Errno):Error throw "syscall._errnoErr is not yet implemented";
private function _faketimeWrite(_fd:GoInt, _p:Slice<GoByte>):GoInt throw "syscall._faketimeWrite is not yet implemented";
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
class Timespec_asInterface {
    /**
        // Nano returns the time stored in ts as nanoseconds.
    **/
    @:keep
    public dynamic function nano():GoInt64 return __self__.value.nano();
    /**
        // Unix returns the time stored in ts as seconds plus nanoseconds.
    **/
    @:keep
    public dynamic function unix():{ var _0 : GoInt64; var _1 : GoInt64; } return __self__.value.unix();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Timespec>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.Syscall.Timespec_asInterface) class Timespec_static_extension {
    /**
        // Nano returns the time stored in ts as nanoseconds.
    **/
    @:keep
    static public function nano( _ts:Ref<Timespec>):GoInt64 throw "syscall.nano is not yet implemented";
    /**
        // Unix returns the time stored in ts as seconds plus nanoseconds.
    **/
    @:keep
    static public function unix( _ts:Ref<Timespec>):{ var _0 : GoInt64; var _1 : GoInt64; } throw "syscall.unix is not yet implemented";
}
class Timeval_asInterface {
    /**
        // Nano returns the time stored in tv as nanoseconds.
    **/
    @:keep
    public dynamic function nano():GoInt64 return __self__.value.nano();
    /**
        // Unix returns the time stored in tv as seconds plus nanoseconds.
    **/
    @:keep
    public dynamic function unix():{ var _0 : GoInt64; var _1 : GoInt64; } return __self__.value.unix();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Timeval>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.Syscall.Timeval_asInterface) class Timeval_static_extension {
    /**
        // Nano returns the time stored in tv as nanoseconds.
    **/
    @:keep
    static public function nano( _tv:Ref<Timeval>):GoInt64 throw "syscall.nano is not yet implemented";
    /**
        // Unix returns the time stored in tv as seconds plus nanoseconds.
    **/
    @:keep
    static public function unix( _tv:Ref<Timeval>):{ var _0 : GoInt64; var _1 : GoInt64; } throw "syscall.unix is not yet implemented";
}
class Errno_asInterface {
    @:keep
    public dynamic function timeout():Bool return __self__.value.timeout();
    @:keep
    public dynamic function temporary():Bool return __self__.value.temporary();
    @:keep
    public dynamic function is_(_target:Error):Bool return __self__.value.is_(_target);
    @:keep
    public dynamic function error():GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Errno>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.Syscall.Errno_asInterface) class Errno_static_extension {
    @:keep
    static public function timeout( _e:Errno):Bool throw "syscall.timeout is not yet implemented";
    @:keep
    static public function temporary( _e:Errno):Bool throw "syscall.temporary is not yet implemented";
    @:keep
    static public function is_( _e:Errno, _target:Error):Bool throw "syscall.is_ is not yet implemented";
    @:keep
    static public function error( _e:Errno):GoString throw "syscall.error is not yet implemented";
}
class Signal_asInterface {
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    @:keep
    public dynamic function signal():Void __self__.value.signal();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Signal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.Syscall.Signal_asInterface) class Signal_static_extension {
    @:keep
    static public function string( _s:Signal):GoString throw "syscall.string is not yet implemented";
    @:keep
    static public function signal( _s:Signal):Void throw "syscall.signal is not yet implemented";
}
class WaitStatus_asInterface {
    @:keep
    public dynamic function trapCause():GoInt return __self__.value.trapCause();
    @:keep
    public dynamic function stopSignal():Signal return __self__.value.stopSignal();
    @:keep
    public dynamic function continued():Bool return __self__.value.continued();
    @:keep
    public dynamic function stopped():Bool return __self__.value.stopped();
    @:keep
    public dynamic function coreDump():Bool return __self__.value.coreDump();
    @:keep
    public dynamic function signal():Signal return __self__.value.signal();
    @:keep
    public dynamic function signaled():Bool return __self__.value.signaled();
    @:keep
    public dynamic function exitStatus():GoInt return __self__.value.exitStatus();
    @:keep
    public dynamic function exited():Bool return __self__.value.exited();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<WaitStatus>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.syscall.Syscall.WaitStatus_asInterface) class WaitStatus_static_extension {
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
