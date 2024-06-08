package stdgo._internal.syscall;
private var __go2hxdoc__package : Bool;
final _asanenabled : Bool = false;
final _isBigEndian : Bool = false;
var _envOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
var _envLock : stdgo._internal.sync.Sync.RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
var _env : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
var _filesMu : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
final _msanenabled : Bool = false;
final af_UNSPEC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final af_UNIX = @:invalid_type null;
final af_INET = @:invalid_type null;
final af_INET6 = @:invalid_type null;
final sock_STREAM : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final sock_DGRAM = @:invalid_type null;
final sock_RAW = @:invalid_type null;
final sock_SEQPACKET = @:invalid_type null;
final ipproto_IP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final ipproto_IPV4 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final ipproto_IPV6 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final ipproto_TCP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final ipproto_UDP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final ipv6_V6ONLY = @:invalid_type null;
final somaxconn = @:invalid_type null;
final so_ERROR = @:invalid_type null;
final f_DUPFD_CLOEXEC = @:invalid_type null;
final sys_FCNTL : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var __zero : stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
final _direntSize : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final pathMax : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final sigchld = ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall.Signal);
final sigint = ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall.Signal);
final sigkill = ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall.Signal);
final sigtrap = ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall.Signal);
final sigquit = ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall.Signal);
final sigterm = ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall.Signal);
final stdin : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final stdout : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final stderr : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final o_RDONLY : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final o_WRONLY : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final o_RDWR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final o_CREAT : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final o_CREATE : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final o_TRUNC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final o_APPEND : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final o_EXCL : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final o_SYNC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final o_CLOEXEC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_DUPFD : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_GETFD : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_SETFD : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_GETFL : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_SETFL : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_GETOWN : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_SETOWN : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_GETLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_SETLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_SETLKW : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_RGETLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_RSETLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_CNVT : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_RSETLKW : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_RDLCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_WRLCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_UNLCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final f_UNLKSYS : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFMT : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFSHM_SYSV : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFSEMA : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFCOND : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFMUTEX : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFSHM : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFBOUNDSOCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFSOCKADDR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFDSOCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFSOCK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFLNK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFREG : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFBLK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFDIR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFCHR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IFIFO : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_UNSUP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_ISUID : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_ISGID : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_ISVTX : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IREAD : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IWRITE : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IEXEC : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IRWXU : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IRUSR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IWUSR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IXUSR : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IRWXG : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IRGRP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IWGRP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IXGRP : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IRWXO : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IROTH : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IWOTH : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final s_IXOTH : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var forkLock : stdgo._internal.sync.Sync.RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
final implementsGetwd : Bool = false;
final _sys_null : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_nameservice : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_dup : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_dup2 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_open : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_close : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_read : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_write : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_lseek : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_stat : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_fstat : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_chmod : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_isatty : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_brk : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_mmap : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_munmap : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_getdents : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_mprotect : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_list_mappings : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_exit : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_getpid : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_sched_yield : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_sysconf : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_gettimeofday : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_clock : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_nanosleep : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_clock_getres : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_clock_gettime : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_mkdir : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_rmdir : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_chdir : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_getcwd : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_unlink : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_imc_makeboundsock : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_imc_accept : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_imc_connect : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_imc_sendmsg : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_imc_recvmsg : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_imc_mem_obj_create : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_imc_socketpair : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_mutex_create : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_mutex_lock : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_mutex_trylock : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_mutex_unlock : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_cond_create : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_cond_wait : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_cond_signal : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_cond_broadcast : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_cond_timed_wait_abs : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_thread_create : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_thread_exit : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_tls_init : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_thread_nice : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_tls_get : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_second_tls_set : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_second_tls_get : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_exception_handler : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_exception_stack : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_exception_clear_flag : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_sem_create : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_sem_wait : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_sem_post : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_sem_get_value : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_dyncode_create : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_dyncode_modify : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_dyncode_delete : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_test_infoleak : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_test_crash : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_test_syscall_1 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_test_syscall_2 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_futex_wait_abs : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_futex_wake : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_pread : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_pwrite : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_truncate : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_lstat : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_link : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_rename : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_symlink : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_access : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_readlink : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_utimes : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _sys_get_random_bytes : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final eperm : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enoent : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final esrch : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eintr : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eio : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enxio : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final e2big : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enoexec : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ebadf : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final echild : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eagain : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enomem : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eacces : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final efault : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ebusy : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eexist : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final exdev : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enodev : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enotdir : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eisdir : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final einval : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enfile : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final emfile : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enotty : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final efbig : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enospc : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final espipe : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final erofs : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final emlink : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final epipe : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enametoolong : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enosys : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final edquot : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final edom : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final erange : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final edeadlk : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enolck : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enotempty : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eloop : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enomsg : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eidrm : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final echrng : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final el2nsync : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final el3hlt : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final el3rst : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final elnrng : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eunatch : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enocsi : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final el2hlt : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ebade : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ebadr : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final exfull : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enoano : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ebadrqc : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ebadslt : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final edeadlock : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ebfont : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enostr : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enodata : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final etime : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enosr : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enonet : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enopkg : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eremote : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enolink : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eadv : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final esrmnt : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ecomm : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eproto : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final emultihop : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final edotdot : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ebadmsg : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eoverflow : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enotuniq : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ebadfd : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eremchg : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final elibacc : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final elibbad : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final elibscn : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final elibmax : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final elibexec : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eilseq : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eusers : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enotsock : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final edestaddrreq : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final emsgsize : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eprototype : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enoprotoopt : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eprotonosupport : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final esocktnosupport : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eopnotsupp : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final epfnosupport : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eafnosupport : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eaddrinuse : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eaddrnotavail : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enetdown : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enetunreach : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enetreset : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final econnaborted : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final econnreset : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enobufs : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eisconn : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enotconn : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eshutdown : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final etoomanyrefs : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final etimedout : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final econnrefused : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ehostdown : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ehostunreach : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ealready : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final einprogress : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final estale : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enotsup : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enomedium : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ecanceled : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final elbin : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eftype : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enmfile : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final eproclim : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final enoshare : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ecaseclash : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final ewouldblock : stdgo._internal.syscall.Syscall.Errno = ((0 : stdgo.GoUIntptr) : stdgo._internal.syscall.Syscall.Errno);
final _faketime : Bool = false;
var _envs : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
var _jsProcess : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
var _jsFS : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
var _constants : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
var _uint8Array : stdgo._internal.syscall.js.Js.Value = ({} : stdgo._internal.syscall.js.Js.Value);
var _nodeWRONLY : stdgo.GoInt = (0 : stdgo.GoInt);
var _nodeRDWR : stdgo.GoInt = (0 : stdgo.GoInt);
var _nodeCREATE : stdgo.GoInt = (0 : stdgo.GoInt);
var _nodeTRUNC : stdgo.GoInt = (0 : stdgo.GoInt);
var _nodeAPPEND : stdgo.GoInt = (0 : stdgo.GoInt);
var _nodeEXCL : stdgo.GoInt = (0 : stdgo.GoInt);
var _files : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.syscall.Syscall.T_jsFile>> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.syscall.Syscall.T_jsFile>>);
var _signals : stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(0, 0);
var _errorstr : stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(2054, 2054, ...[for (i in 0 ... 2054) ("" : stdgo.GoString)]);
var _errEAGAIN : stdgo.Error = (null : stdgo.Error);
var _errEINVAL : stdgo.Error = (null : stdgo.Error);
var _errENOENT : stdgo.Error = (null : stdgo.Error);
var _errnoByCode : stdgo.GoMap<stdgo.GoString, stdgo._internal.syscall.Syscall.Errno> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.syscall.Syscall.Errno>);
final __12 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final __13 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final __14 : stdgo._internal.syscall.Syscall.Signal = ((0 : stdgo.GoInt) : stdgo._internal.syscall.Syscall.Signal);
@:keep class RawConn_static_extension {
    static public function write(t:RawConn, _f:(_fd:stdgo.GoUIntptr) -> Bool):stdgo.Error return t.write(_f);
    static public function read(t:RawConn, _f:(_fd:stdgo.GoUIntptr) -> Bool):stdgo.Error return t.read(_f);
    static public function control(t:RawConn, _f:(_fd:stdgo.GoUIntptr) -> Void):stdgo.Error return t.control(_f);
}
typedef RawConn = stdgo.StructType & {
    /**
        Control invokes f on the underlying connection's file
        descriptor or handle.
        The file descriptor fd is guaranteed to remain valid while
        f executes but not after f returns.
        
        
    **/
    public dynamic function control(_f:(_fd:stdgo.GoUIntptr) -> Void):stdgo.Error;
    /**
        Read invokes f on the underlying connection's file
        descriptor or handle; f is expected to try to read from the
        file descriptor.
        If f returns true, Read returns. Otherwise Read blocks
        waiting for the connection to be ready for reading and
        tries again repeatedly.
        The file descriptor is guaranteed to remain valid while f
        executes but not after f returns.
        
        
    **/
    public dynamic function read(_f:(_fd:stdgo.GoUIntptr) -> Bool):stdgo.Error;
    /**
        Write is like Read but for writing.
        
        
    **/
    public dynamic function write(_f:(_fd:stdgo.GoUIntptr) -> Bool):stdgo.Error;
};
@:keep class Conn_static_extension {
    static public function syscallConn(t:Conn):{ var _0 : RawConn; var _1 : stdgo.Error; } return t.syscallConn();
}
typedef Conn = stdgo.StructType & {
    /**
        SyscallConn returns a raw network connection.
        
        
    **/
    public dynamic function syscallConn():{ var _0 : RawConn; var _1 : stdgo.Error; };
};
@:structInit @:private class T_jsFile {
    public var _path : stdgo.GoString = "";
    public var _entries : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _dirIdx : stdgo.GoInt = 0;
    public var _pos : stdgo.GoInt64 = 0;
    public var _seeked : Bool = false;
    public function new(?_path:stdgo.GoString, ?_entries:stdgo.Slice<stdgo.GoString>, ?_dirIdx:stdgo.GoInt, ?_pos:stdgo.GoInt64, ?_seeked:Bool) {
        if (_path != null) this._path = _path;
        if (_entries != null) this._entries = _entries;
        if (_dirIdx != null) this._dirIdx = _dirIdx;
        if (_pos != null) this._pos = _pos;
        if (_seeked != null) this._seeked = _seeked;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_jsFile(_path, _entries, _dirIdx, _pos, _seeked);
    }
}
@:structInit class SockaddrInet4 {
    public var port : stdgo.GoInt = 0;
    public var addr : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
    public function new(?port:stdgo.GoInt, ?addr:stdgo.GoArray<stdgo.GoUInt8>) {
        if (port != null) this.port = port;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SockaddrInet4(port, addr);
    }
}
@:structInit class SockaddrInet6 {
    public var port : stdgo.GoInt = 0;
    public var zoneId : stdgo.GoUInt32 = 0;
    public var addr : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
    public function new(?port:stdgo.GoInt, ?zoneId:stdgo.GoUInt32, ?addr:stdgo.GoArray<stdgo.GoUInt8>) {
        if (port != null) this.port = port;
        if (zoneId != null) this.zoneId = zoneId;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SockaddrInet6(port, zoneId, addr);
    }
}
@:structInit class SockaddrUnix {
    public var name : stdgo.GoString = "";
    public function new(?name:stdgo.GoString) {
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SockaddrUnix(name);
    }
}
@:structInit class Dirent {
    public var reclen : stdgo.GoUInt16 = 0;
    public var name : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt8)]);
    public function new(?reclen:stdgo.GoUInt16, ?name:stdgo.GoArray<stdgo.GoUInt8>) {
        if (reclen != null) this.reclen = reclen;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Dirent(reclen, name);
    }
}
@:structInit class Stat_t {
    public var dev : stdgo.GoInt64 = 0;
    public var ino : stdgo.GoUInt64 = 0;
    public var mode : stdgo.GoUInt32 = 0;
    public var nlink : stdgo.GoUInt32 = 0;
    public var uid : stdgo.GoUInt32 = 0;
    public var gid : stdgo.GoUInt32 = 0;
    public var rdev : stdgo.GoInt64 = 0;
    public var size : stdgo.GoInt64 = 0;
    public var blksize : stdgo.GoInt32 = 0;
    public var blocks : stdgo.GoInt32 = 0;
    public var atime : stdgo.GoInt64 = 0;
    public var atimeNsec : stdgo.GoInt64 = 0;
    public var mtime : stdgo.GoInt64 = 0;
    public var mtimeNsec : stdgo.GoInt64 = 0;
    public var ctime : stdgo.GoInt64 = 0;
    public var ctimeNsec : stdgo.GoInt64 = 0;
    public function new(?dev:stdgo.GoInt64, ?ino:stdgo.GoUInt64, ?mode:stdgo.GoUInt32, ?nlink:stdgo.GoUInt32, ?uid:stdgo.GoUInt32, ?gid:stdgo.GoUInt32, ?rdev:stdgo.GoInt64, ?size:stdgo.GoInt64, ?blksize:stdgo.GoInt32, ?blocks:stdgo.GoInt32, ?atime:stdgo.GoInt64, ?atimeNsec:stdgo.GoInt64, ?mtime:stdgo.GoInt64, ?mtimeNsec:stdgo.GoInt64, ?ctime:stdgo.GoInt64, ?ctimeNsec:stdgo.GoInt64) {
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
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public var utime : stdgo._internal.syscall.Syscall.Timeval = ({} : stdgo._internal.syscall.Syscall.Timeval);
    public var stime : stdgo._internal.syscall.Syscall.Timeval = ({} : stdgo._internal.syscall.Syscall.Timeval);
    public function new(?utime:stdgo._internal.syscall.Syscall.Timeval, ?stime:stdgo._internal.syscall.Syscall.Timeval) {
        if (utime != null) this.utime = utime;
        if (stime != null) this.stime = stime;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rusage(utime, stime);
    }
}
@:structInit class ProcAttr {
    public var dir : stdgo.GoString = "";
    public var env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var files : stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
    public var sys : stdgo.Ref<stdgo._internal.syscall.Syscall.SysProcAttr> = (null : stdgo.Ref<stdgo._internal.syscall.Syscall.SysProcAttr>);
    public function new(?dir:stdgo.GoString, ?env:stdgo.Slice<stdgo.GoString>, ?files:stdgo.Slice<stdgo.GoUIntptr>, ?sys:stdgo.Ref<stdgo._internal.syscall.Syscall.SysProcAttr>) {
        if (dir != null) this.dir = dir;
        if (env != null) this.env = env;
        if (files != null) this.files = files;
        if (sys != null) this.sys = sys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ProcAttr(dir, env, files, sys);
    }
}
@:structInit class SysProcAttr {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SysProcAttr();
    }
}
@:structInit class Iovec {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Iovec();
    }
}
@:structInit @:using(stdgo._internal.syscall.Syscall.Timespec_static_extension) class Timespec {
    public var sec : stdgo.GoInt64 = 0;
    public var nsec : stdgo.GoInt64 = 0;
    public function new(?sec:stdgo.GoInt64, ?nsec:stdgo.GoInt64) {
        if (sec != null) this.sec = sec;
        if (nsec != null) this.nsec = nsec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Timespec(sec, nsec);
    }
}
@:structInit @:using(stdgo._internal.syscall.Syscall.Timeval_static_extension) class Timeval {
    public var sec : stdgo.GoInt64 = 0;
    public var usec : stdgo.GoInt64 = 0;
    public function new(?sec:stdgo.GoInt64, ?usec:stdgo.GoInt64) {
        if (sec != null) this.sec = sec;
        if (usec != null) this.usec = usec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Timeval(sec, usec);
    }
}
@:follow typedef Sockaddr = stdgo.AnyInterface;
@:named @:using(stdgo._internal.syscall.Syscall.Errno_static_extension) typedef Errno = stdgo.GoUIntptr;
@:named @:using(stdgo._internal.syscall.Syscall.Signal_static_extension) typedef Signal = stdgo.GoInt;
@:named @:using(stdgo._internal.syscall.Syscall.WaitStatus_static_extension) typedef WaitStatus = stdgo.GoUInt32;
function _asanRead(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, _len:stdgo.GoInt):Void throw ":syscall._asanRead is not yet implemented";
function _asanWrite(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, _len:stdgo.GoInt):Void throw ":syscall._asanWrite is not yet implemented";
function _readInt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoUIntptr, _size:stdgo.GoUIntptr):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } throw ":syscall._readInt is not yet implemented";
function _readIntBE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):stdgo.GoUInt64 throw ":syscall._readIntBE is not yet implemented";
function _readIntLE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):stdgo.GoUInt64 throw ":syscall._readIntLE is not yet implemented";
function parseDirent(_buf:stdgo.Slice<stdgo.GoByte>, _max:stdgo.GoInt, _names:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Slice<stdgo.GoString>; } throw ":syscall.parseDirent is not yet implemented";
function _runtime_envs():stdgo.Slice<stdgo.GoString> throw ":syscall._runtime_envs is not yet implemented";
function _copyenv():Void throw ":syscall._copyenv is not yet implemented";
function unsetenv(_key:stdgo.GoString):stdgo.Error throw ":syscall.unsetenv is not yet implemented";
function getenv(_key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } throw ":syscall.getenv is not yet implemented";
function setenv(_key:stdgo.GoString, _value:stdgo.GoString):stdgo.Error throw ":syscall.setenv is not yet implemented";
function clearenv():Void throw ":syscall.clearenv is not yet implemented";
function environ_():stdgo.Slice<stdgo.GoString> throw ":syscall.environ_ is not yet implemented";
function _now():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt32; } throw ":syscall._now is not yet implemented";
function _fdToFile(_fd:stdgo.GoInt):{ var _0 : stdgo.Ref<T_jsFile>; var _1 : stdgo.Error; } throw ":syscall._fdToFile is not yet implemented";
function open(_path:stdgo.GoString, _openmode:stdgo.GoInt, _perm:stdgo.GoUInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.open is not yet implemented";
function close(_fd:stdgo.GoInt):stdgo.Error throw ":syscall.close is not yet implemented";
function closeOnExec(_fd:stdgo.GoInt):Void throw ":syscall.closeOnExec is not yet implemented";
function mkdir(_path:stdgo.GoString, _perm:stdgo.GoUInt32):stdgo.Error throw ":syscall.mkdir is not yet implemented";
function readDirent(_fd:stdgo.GoInt, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.readDirent is not yet implemented";
function _setStat(_st:stdgo.Ref<Stat_t>, _jsSt:stdgo._internal.syscall.js.Js.Value):Void throw ":syscall._setStat is not yet implemented";
function stat(_path:stdgo.GoString, _st:stdgo.Ref<Stat_t>):stdgo.Error throw ":syscall.stat is not yet implemented";
function lstat(_path:stdgo.GoString, _st:stdgo.Ref<Stat_t>):stdgo.Error throw ":syscall.lstat is not yet implemented";
function fstat(_fd:stdgo.GoInt, _st:stdgo.Ref<Stat_t>):stdgo.Error throw ":syscall.fstat is not yet implemented";
function unlink(_path:stdgo.GoString):stdgo.Error throw ":syscall.unlink is not yet implemented";
function rmdir(_path:stdgo.GoString):stdgo.Error throw ":syscall.rmdir is not yet implemented";
function chmod(_path:stdgo.GoString, _mode:stdgo.GoUInt32):stdgo.Error throw ":syscall.chmod is not yet implemented";
function fchmod(_fd:stdgo.GoInt, _mode:stdgo.GoUInt32):stdgo.Error throw ":syscall.fchmod is not yet implemented";
function chown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error throw ":syscall.chown is not yet implemented";
function fchown(_fd:stdgo.GoInt, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error throw ":syscall.fchown is not yet implemented";
function lchown(_path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error throw ":syscall.lchown is not yet implemented";
function utimesNano(_path:stdgo.GoString, _ts:stdgo.Slice<Timespec>):stdgo.Error throw ":syscall.utimesNano is not yet implemented";
function rename(_from:stdgo.GoString, _to:stdgo.GoString):stdgo.Error throw ":syscall.rename is not yet implemented";
function truncate(_path:stdgo.GoString, _length:stdgo.GoInt64):stdgo.Error throw ":syscall.truncate is not yet implemented";
function ftruncate(_fd:stdgo.GoInt, _length:stdgo.GoInt64):stdgo.Error throw ":syscall.ftruncate is not yet implemented";
function getcwd(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.getcwd is not yet implemented";
function chdir(_path:stdgo.GoString):stdgo.Error throw ":syscall.chdir is not yet implemented";
function fchdir(_fd:stdgo.GoInt):stdgo.Error throw ":syscall.fchdir is not yet implemented";
function readlink(_path:stdgo.GoString, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.readlink is not yet implemented";
function link(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error throw ":syscall.link is not yet implemented";
function symlink(_path:stdgo.GoString, _link:stdgo.GoString):stdgo.Error throw ":syscall.symlink is not yet implemented";
function fsync(_fd:stdgo.GoInt):stdgo.Error throw ":syscall.fsync is not yet implemented";
function read(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.read is not yet implemented";
function write(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.write is not yet implemented";
function pread(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.pread is not yet implemented";
function pwrite(_fd:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoByte>, _offset:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.pwrite is not yet implemented";
function seek(_fd:stdgo.GoInt, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw ":syscall.seek is not yet implemented";
function dup(_fd:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.dup is not yet implemented";
function dup2(_fd:stdgo.GoInt, _newfd:stdgo.GoInt):stdgo.Error throw ":syscall.dup2 is not yet implemented";
function pipe(_fd:stdgo.Slice<stdgo.GoInt>):stdgo.Error throw ":syscall.pipe is not yet implemented";
function _fsCall(_name:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.syscall.js.Js.Value; var _1 : stdgo.Error; } throw ":syscall._fsCall is not yet implemented";
function _checkPath(_path:stdgo.GoString):stdgo.Error throw ":syscall._checkPath is not yet implemented";
function _recoverErr(_errPtr:stdgo.Ref<stdgo.Error>):Void throw ":syscall._recoverErr is not yet implemented";
function _mapJSError(_jsErr:stdgo._internal.syscall.js.Js.Value):stdgo.Error throw ":syscall._mapJSError is not yet implemented";
function _msanRead(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, _len:stdgo.GoInt):Void throw ":syscall._msanRead is not yet implemented";
function _msanWrite(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, _len:stdgo.GoInt):Void throw ":syscall._msanWrite is not yet implemented";
function socket(_proto:stdgo.GoInt, _sotype:stdgo.GoInt, _unused:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.socket is not yet implemented";
function bind(_fd:stdgo.GoInt, _sa:Sockaddr):stdgo.Error throw ":syscall.bind is not yet implemented";
function stopIO(_fd:stdgo.GoInt):stdgo.Error throw ":syscall.stopIO is not yet implemented";
function listen(_fd:stdgo.GoInt, _backlog:stdgo.GoInt):stdgo.Error throw ":syscall.listen is not yet implemented";
function accept(_fd:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Sockaddr; var _2 : stdgo.Error; } throw ":syscall.accept is not yet implemented";
function connect(_fd:stdgo.GoInt, _sa:Sockaddr):stdgo.Error throw ":syscall.connect is not yet implemented";
function recvfrom(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Sockaddr; var _2 : stdgo.Error; } throw ":syscall.recvfrom is not yet implemented";
function sendto(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt, _to:Sockaddr):stdgo.Error throw ":syscall.sendto is not yet implemented";
function recvmsg(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : Sockaddr; var _4 : stdgo.Error; } throw ":syscall.recvmsg is not yet implemented";
function sendmsgN(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>, _oob:stdgo.Slice<stdgo.GoByte>, _to:Sockaddr, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.sendmsgN is not yet implemented";
function getsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.getsockoptInt is not yet implemented";
function setsockoptInt(_fd:stdgo.GoInt, _level:stdgo.GoInt, _opt:stdgo.GoInt, _value:stdgo.GoInt):stdgo.Error throw ":syscall.setsockoptInt is not yet implemented";
function setReadDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):stdgo.Error throw ":syscall.setReadDeadline is not yet implemented";
function setWriteDeadline(_fd:stdgo.GoInt, _t:stdgo.GoInt64):stdgo.Error throw ":syscall.setWriteDeadline is not yet implemented";
function shutdown(_fd:stdgo.GoInt, _how:stdgo.GoInt):stdgo.Error throw ":syscall.shutdown is not yet implemented";
function setNonblock(_fd:stdgo.GoInt, _nonblocking:Bool):stdgo.Error throw ":syscall.setNonblock is not yet implemented";
function stringByteSlice(_s:stdgo.GoString):stdgo.Slice<stdgo.GoByte> throw ":syscall.stringByteSlice is not yet implemented";
function byteSliceFromString(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } throw ":syscall.byteSliceFromString is not yet implemented";
function stringBytePtr(_s:stdgo.GoString):stdgo.Pointer<stdgo.GoByte> throw ":syscall.stringBytePtr is not yet implemented";
function bytePtrFromString(_s:stdgo.GoString):{ var _0 : stdgo.Pointer<stdgo.GoByte>; var _1 : stdgo.Error; } throw ":syscall.bytePtrFromString is not yet implemented";
function getpagesize():stdgo.GoInt return 4096;
function exit(_code:stdgo.GoInt):Void throw ":syscall.exit is not yet implemented";
function _runtimeSetenv(_k:stdgo.GoString, _v:stdgo.GoString):Void throw ":syscall._runtimeSetenv is not yet implemented";
function _runtimeUnsetenv(_k:stdgo.GoString):Void throw ":syscall._runtimeUnsetenv is not yet implemented";
function _direntIno(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } throw ":syscall._direntIno is not yet implemented";
function _direntReclen(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } throw ":syscall._direntReclen is not yet implemented";
function _direntNamlen(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } throw ":syscall._direntNamlen is not yet implemented";
function syscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : Errno; } throw ":syscall.syscall is not yet implemented";
function syscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : Errno; } throw ":syscall.syscall6 is not yet implemented";
function rawSyscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : Errno; } throw ":syscall.rawSyscall is not yet implemented";
function rawSyscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : Errno; } throw ":syscall.rawSyscall6 is not yet implemented";
function sysctl(_key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":syscall.sysctl is not yet implemented";
function getwd():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":syscall.getwd is not yet implemented";
function getuid():stdgo.GoInt throw ":syscall.getuid is not yet implemented";
function getgid():stdgo.GoInt throw ":syscall.getgid is not yet implemented";
function geteuid():stdgo.GoInt throw ":syscall.geteuid is not yet implemented";
function getegid():stdgo.GoInt throw ":syscall.getegid is not yet implemented";
function getgroups():{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.Error; } throw ":syscall.getgroups is not yet implemented";
function getpid():stdgo.GoInt throw ":syscall.getpid is not yet implemented";
function getppid():stdgo.GoInt throw ":syscall.getppid is not yet implemented";
function umask(_mask:stdgo.GoInt):stdgo.GoInt throw ":syscall.umask is not yet implemented";
function gettimeofday(_tv:stdgo.Ref<Timeval>):stdgo.Error throw ":syscall.gettimeofday is not yet implemented";
function kill(_pid:stdgo.GoInt, _signum:Signal):stdgo.Error throw ":syscall.kill is not yet implemented";
function sendfile(_outfd:stdgo.GoInt, _infd:stdgo.GoInt, _offset:stdgo.Pointer<stdgo.GoInt64>, _count:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.sendfile is not yet implemented";
function startProcess(_argv0:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<ProcAttr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUIntptr; var _2 : stdgo.Error; } throw ":syscall.startProcess is not yet implemented";
function wait4(_pid:stdgo.GoInt, _wstatus:stdgo.Pointer<WaitStatus>, _options:stdgo.GoInt, _rusage:stdgo.Ref<Rusage>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":syscall.wait4 is not yet implemented";
function _setTimespec(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):Timespec throw ":syscall._setTimespec is not yet implemented";
function _setTimeval(_sec:stdgo.GoInt64, _usec:stdgo.GoInt64):Timeval throw ":syscall._setTimeval is not yet implemented";
function _errnoErr(_e:Errno):stdgo.Error throw ":syscall._errnoErr is not yet implemented";
function _faketimeWrite(_fd:stdgo.GoInt, _p:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt throw ":syscall._faketimeWrite is not yet implemented";
function timespecToNsec(_ts:Timespec):stdgo.GoInt64 throw ":syscall.timespecToNsec is not yet implemented";
function nsecToTimespec(_nsec:stdgo.GoInt64):Timespec throw ":syscall.nsecToTimespec is not yet implemented";
function timevalToNsec(_tv:Timeval):stdgo.GoInt64 throw ":syscall.timevalToNsec is not yet implemented";
function nsecToTimeval(_nsec:stdgo.GoInt64):Timeval throw ":syscall.nsecToTimeval is not yet implemented";
class Timespec_asInterface {
    @:keep
    public dynamic function nano():stdgo.GoInt64 return __self__.value.nano();
    @:keep
    public dynamic function unix():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } return __self__.value.unix();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Timespec>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.syscall.Syscall.Timespec_asInterface) class Timespec_static_extension {
    @:keep
    static public function nano( _ts:stdgo.Ref<Timespec>):stdgo.GoInt64 throw "Timespec:syscall.nano is not yet implemented";
    @:keep
    static public function unix( _ts:stdgo.Ref<Timespec>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } throw "Timespec:syscall.unix is not yet implemented";
}
class Timeval_asInterface {
    @:keep
    public dynamic function nano():stdgo.GoInt64 return __self__.value.nano();
    @:keep
    public dynamic function unix():{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } return __self__.value.unix();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Timeval>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.syscall.Syscall.Timeval_asInterface) class Timeval_static_extension {
    @:keep
    static public function nano( _tv:stdgo.Ref<Timeval>):stdgo.GoInt64 throw "Timeval:syscall.nano is not yet implemented";
    @:keep
    static public function unix( _tv:stdgo.Ref<Timeval>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } throw "Timeval:syscall.unix is not yet implemented";
}
class Errno_asInterface {
    @:keep
    public dynamic function timeout():Bool return __self__.value.timeout();
    @:keep
    public dynamic function temporary():Bool return __self__.value.temporary();
    @:keep
    public dynamic function is_(_target:stdgo.Error):Bool return __self__.value.is_(_target);
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Errno>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.syscall.Syscall.Errno_asInterface) class Errno_static_extension {
    @:keep
    static public function timeout( _e:Errno):Bool throw "Errno:syscall.timeout is not yet implemented";
    @:keep
    static public function temporary( _e:Errno):Bool throw "Errno:syscall.temporary is not yet implemented";
    @:keep
    static public function is_( _e:Errno, _target:stdgo.Error):Bool throw "Errno:syscall.is_ is not yet implemented";
    @:keep
    static public function error( _e:Errno):stdgo.GoString throw "Errno:syscall.error is not yet implemented";
}
class Signal_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function signal():Void __self__.value.signal();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Signal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.syscall.Syscall.Signal_asInterface) class Signal_static_extension {
    @:keep
    static public function string( _s:Signal):stdgo.GoString throw "Signal:syscall.string is not yet implemented";
    @:keep
    static public function signal( _s:Signal):Void throw "Signal:syscall.signal is not yet implemented";
}
class WaitStatus_asInterface {
    @:keep
    public dynamic function trapCause():stdgo.GoInt return __self__.value.trapCause();
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
    public dynamic function exitStatus():stdgo.GoInt return __self__.value.exitStatus();
    @:keep
    public dynamic function exited():Bool return __self__.value.exited();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<WaitStatus>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.syscall.Syscall.WaitStatus_asInterface) class WaitStatus_static_extension {
    @:keep
    static public function trapCause( _w:WaitStatus):stdgo.GoInt throw "WaitStatus:syscall.trapCause is not yet implemented";
    @:keep
    static public function stopSignal( _w:WaitStatus):Signal throw "WaitStatus:syscall.stopSignal is not yet implemented";
    @:keep
    static public function continued( _w:WaitStatus):Bool throw "WaitStatus:syscall.continued is not yet implemented";
    @:keep
    static public function stopped( _w:WaitStatus):Bool throw "WaitStatus:syscall.stopped is not yet implemented";
    @:keep
    static public function coreDump( _w:WaitStatus):Bool throw "WaitStatus:syscall.coreDump is not yet implemented";
    @:keep
    static public function signal( _w:WaitStatus):Signal throw "WaitStatus:syscall.signal is not yet implemented";
    @:keep
    static public function signaled( _w:WaitStatus):Bool throw "WaitStatus:syscall.signaled is not yet implemented";
    @:keep
    static public function exitStatus( _w:WaitStatus):stdgo.GoInt throw "WaitStatus:syscall.exitStatus is not yet implemented";
    @:keep
    static public function exited( _w:WaitStatus):Bool throw "WaitStatus:syscall.exited is not yet implemented";
}
