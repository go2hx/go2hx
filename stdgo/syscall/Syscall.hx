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
	// envs is provided by the runtime. elements are expected to
	// be of the form "key=value". An empty string means deleted
	// (or a duplicate to be ignored).
**/
var _envs:Slice<GoString> = (null : Slice<GoString>);

var _jsProcess:stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
var _jsFS:stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
var _constants:stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
var _uint8Array:stdgo.syscall.js.Js.Value = ({} : stdgo.syscall.js.Js.Value);
var _nodeWRONLY:GoInt = (0 : GoInt);
var _nodeRDWR:GoInt = (0 : GoInt);
var _nodeCREATE:GoInt = (0 : GoInt);
var _nodeTRUNC:GoInt = (0 : GoInt);
var _nodeAPPEND:GoInt = (0 : GoInt);
var _nodeEXCL:GoInt = (0 : GoInt);
var _files:GoMap<GoInt, Ref<T_jsFile>> = (null : GoMap<GoInt, Ref<T_jsFile>>);
var _signals:GoArray<GoString> = new GoArray<GoString>(...[for (i in 0...0) ("" : GoString)]);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
var _errorstr:GoArray<GoString> = new GoArray<GoString>(...[for (i in 0...2054) ("" : GoString)]);

/**
	// Do the interface allocations only once for common
	// Errno values.
**/
var _errEAGAIN:Error = (null : stdgo.Error);

/**
	// Do the interface allocations only once for common
	// Errno values.
**/
var _errEINVAL:Error = (null : stdgo.Error);

/**
	// Do the interface allocations only once for common
	// Errno values.
**/
var _errENOENT:Error = (null : stdgo.Error);

var _errnoByCode:GoMap<GoString, Errno> = (null : GoMap<GoString, Errno>);
final _asanenabled = null;
final _isBigEndian = null;

/**
	// envOnce guards initialization by copyenv, which populates env.
**/
var _envOnce:stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);

/**
	// envLock guards env and envs.
**/
var _envLock:stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);

/**
	// env maps from an environment variable to its first occurrence in envs.
**/
var _env:GoMap<GoString, GoInt> = (null : GoMap<GoString, GoInt>);

var _filesMu:stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
final _msanenabled = null;
final af_UNSPEC:GoUnTypedInt = (0 : GoUnTypedInt);
final af_UNIX = null;
final af_INET = null;
final af_INET6 = null;
final sock_STREAM:GoUnTypedInt = (0 : GoUnTypedInt);
final sock_DGRAM = null;
final sock_RAW = null;
final sock_SEQPACKET = null;
final ipproto_IP:GoUnTypedInt = (0 : GoUnTypedInt);
final ipproto_IPV4:GoUnTypedInt = (0 : GoUnTypedInt);
final ipproto_IPV6:GoUnTypedInt = (0 : GoUnTypedInt);
final ipproto_TCP:GoUnTypedInt = (0 : GoUnTypedInt);
final ipproto_UDP:GoUnTypedInt = (0 : GoUnTypedInt);
final _0:GoUnTypedInt = (0 : GoUnTypedInt);
final ipv6_V6ONLY = null;
final somaxconn = null;
final so_ERROR = null;

/**
	// Misc constants expected by package net but not supported.
**/
final _1:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// Misc constants expected by package net but not supported.
**/
final f_DUPFD_CLOEXEC = null;

/**
	// Misc constants expected by package net but not supported.
**/
final sys_FCNTL:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// Single-word zero for use when we need a valid pointer to 0 bytes.
	// See mksyscall.pl.
**/
var __zero:GoUIntptr = (0 : GoUIntptr);

final _direntSize:GoUnTypedInt = (0 : GoUnTypedInt);
final pathMax:GoUnTypedInt = (0 : GoUnTypedInt);
final _2:Signal = ((0 : GoInt) : Signal);
final sigchld:Signal = ((0 : GoInt) : Signal);
final sigint:Signal = ((0 : GoInt) : Signal);
final sigkill:Signal = ((0 : GoInt) : Signal);
final sigtrap:Signal = ((0 : GoInt) : Signal);
final sigquit:Signal = ((0 : GoInt) : Signal);
final sigterm:Signal = ((0 : GoInt) : Signal);
final stdin:GoUnTypedInt = (0 : GoUnTypedInt);
final stdout:GoUnTypedInt = (0 : GoUnTypedInt);
final stderr:GoUnTypedInt = (0 : GoUnTypedInt);
final o_RDONLY:GoUnTypedInt = (0 : GoUnTypedInt);
final o_WRONLY:GoUnTypedInt = (0 : GoUnTypedInt);
final o_RDWR:GoUnTypedInt = (0 : GoUnTypedInt);
final o_CREAT:GoUnTypedInt = (0 : GoUnTypedInt);
final o_CREATE:GoUnTypedInt = (0 : GoUnTypedInt);
final o_TRUNC:GoUnTypedInt = (0 : GoUnTypedInt);
final o_APPEND:GoUnTypedInt = (0 : GoUnTypedInt);
final o_EXCL:GoUnTypedInt = (0 : GoUnTypedInt);
final o_SYNC:GoUnTypedInt = (0 : GoUnTypedInt);
final o_CLOEXEC:GoUnTypedInt = (0 : GoUnTypedInt);
final f_DUPFD:GoUnTypedInt = (0 : GoUnTypedInt);
final f_GETFD:GoUnTypedInt = (0 : GoUnTypedInt);
final f_SETFD:GoUnTypedInt = (0 : GoUnTypedInt);
final f_GETFL:GoUnTypedInt = (0 : GoUnTypedInt);
final f_SETFL:GoUnTypedInt = (0 : GoUnTypedInt);
final f_GETOWN:GoUnTypedInt = (0 : GoUnTypedInt);
final f_SETOWN:GoUnTypedInt = (0 : GoUnTypedInt);
final f_GETLK:GoUnTypedInt = (0 : GoUnTypedInt);
final f_SETLK:GoUnTypedInt = (0 : GoUnTypedInt);
final f_SETLKW:GoUnTypedInt = (0 : GoUnTypedInt);
final f_RGETLK:GoUnTypedInt = (0 : GoUnTypedInt);
final f_RSETLK:GoUnTypedInt = (0 : GoUnTypedInt);
final f_CNVT:GoUnTypedInt = (0 : GoUnTypedInt);
final f_RSETLKW:GoUnTypedInt = (0 : GoUnTypedInt);
final f_RDLCK:GoUnTypedInt = (0 : GoUnTypedInt);
final f_WRLCK:GoUnTypedInt = (0 : GoUnTypedInt);
final f_UNLCK:GoUnTypedInt = (0 : GoUnTypedInt);
final f_UNLKSYS:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFMT:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFSHM_SYSV:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFSEMA:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFCOND:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFMUTEX:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFSHM:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFBOUNDSOCK:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFSOCKADDR:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFDSOCK:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFSOCK:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFLNK:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFREG:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFBLK:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFDIR:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFCHR:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IFIFO:GoUnTypedInt = (0 : GoUnTypedInt);
final s_UNSUP:GoUnTypedInt = (0 : GoUnTypedInt);
final s_ISUID:GoUnTypedInt = (0 : GoUnTypedInt);
final s_ISGID:GoUnTypedInt = (0 : GoUnTypedInt);
final s_ISVTX:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IREAD:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IWRITE:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IEXEC:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IRWXU:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IRUSR:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IWUSR:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IXUSR:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IRWXG:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IRGRP:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IWGRP:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IXGRP:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IRWXO:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IROTH:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IWOTH:GoUnTypedInt = (0 : GoUnTypedInt);
final s_IXOTH:GoUnTypedInt = (0 : GoUnTypedInt);
var forkLock:stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);
final implementsGetwd = null;

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_null:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_nameservice:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_dup:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_dup2:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_open:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_close:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_read:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_write:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_lseek:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_stat:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_fstat:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_chmod:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_isatty:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_brk:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_mmap:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_munmap:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_getdents:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_mprotect:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_list_mappings:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_exit:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_getpid:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_sched_yield:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_sysconf:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_gettimeofday:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_clock:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_nanosleep:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_clock_getres:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_clock_gettime:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_mkdir:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_rmdir:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_chdir:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_getcwd:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_unlink:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_imc_makeboundsock:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_imc_accept:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_imc_connect:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_imc_sendmsg:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_imc_recvmsg:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_imc_mem_obj_create:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_imc_socketpair:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_mutex_create:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_mutex_lock:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_mutex_trylock:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_mutex_unlock:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_cond_create:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_cond_wait:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_cond_signal:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_cond_broadcast:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_cond_timed_wait_abs:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_thread_create:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_thread_exit:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_tls_init:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_thread_nice:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_tls_get:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_second_tls_set:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_second_tls_get:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_exception_handler:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_exception_stack:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_exception_clear_flag:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_sem_create:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_sem_wait:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_sem_post:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_sem_get_value:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_dyncode_create:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_dyncode_modify:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_dyncode_delete:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_test_infoleak:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_test_crash:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_test_syscall_1:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_test_syscall_2:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_futex_wait_abs:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_futex_wake:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_pread:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_pwrite:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_truncate:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_lstat:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_link:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_rename:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_symlink:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_access:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_readlink:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_utimes:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// These were originally used by Nacl, then later also used by
	// js/wasm. Now that they're only used by js/wasm, these numbers are
	// just arbitrary.
	//
	// TODO: delete? replace with something meaningful?
**/
final _sys_get_random_bytes:GoUnTypedInt = (0 : GoUnTypedInt);

/**
	// native_client/src/trusted/service_runtime/include/sys/errno.h
	// The errors are mainly copied from Linux.
**/
final eperm:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enoent:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final esrch:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eintr:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eio:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enxio:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final e2big:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enoexec:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ebadf:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final echild:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eagain:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enomem:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eacces:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final efault:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ebusy:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eexist:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final exdev:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enodev:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enotdir:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eisdir:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final einval:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enfile:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final emfile:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enotty:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final efbig:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enospc:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final espipe:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final erofs:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final emlink:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final epipe:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enametoolong:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enosys:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final edquot:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final edom:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final erange:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final edeadlk:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enolck:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enotempty:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eloop:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enomsg:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eidrm:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final echrng:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final el2nsync:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final el3hlt:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final el3rst:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final elnrng:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eunatch:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enocsi:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final el2hlt:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ebade:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ebadr:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final exfull:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enoano:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ebadrqc:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ebadslt:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final edeadlock:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ebfont:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enostr:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enodata:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final etime:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enosr:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enonet:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enopkg:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eremote:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enolink:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eadv:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final esrmnt:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ecomm:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eproto:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final emultihop:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final edotdot:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ebadmsg:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eoverflow:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enotuniq:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ebadfd:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eremchg:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final elibacc:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final elibbad:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final elibscn:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final elibmax:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final elibexec:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eilseq:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eusers:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enotsock:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final edestaddrreq:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final emsgsize:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eprototype:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enoprotoopt:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eprotonosupport:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final esocktnosupport:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eopnotsupp:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final epfnosupport:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eafnosupport:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eaddrinuse:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eaddrnotavail:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enetdown:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enetunreach:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enetreset:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final econnaborted:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final econnreset:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enobufs:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eisconn:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enotconn:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eshutdown:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final etoomanyrefs:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final etimedout:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final econnrefused:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ehostdown:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ehostunreach:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ealready:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final einprogress:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final estale:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enotsup:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enomedium:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ecanceled:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final elbin:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eftype:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enmfile:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final eproclim:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final enoshare:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ecaseclash:Errno = ((0 : GoUIntptr) : Errno);

/**
	// TODO: Auto-generate some day. (Hard-coded in binaries so not likely to change.)
**/
final ewouldblock:Errno = ((0 : GoUIntptr) : Errno);

final _faketime = null;

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
private var __go2hxdoc__package:Bool;

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
	public function control(_f:(_fd:GoUIntptr) -> Void):Error;

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
	public function read(_f:(_fd:GoUIntptr) -> Bool):Error;

	/**
		// Write is like Read but for writing.
	**/
	public function write(_f:(_fd:GoUIntptr) -> Bool):Error;
};

/**
	// Conn is implemented by some types in the net and os packages to provide
	// access to the underlying file descriptor or handle.
**/
typedef Conn = StructType & {
	/**
		// SyscallConn returns a raw network connection.
	**/
	public function syscallConn():{var _0:RawConn; var _1:Error;};
};

@:structInit private class T_jsFile {
	public var _path:GoString = "";
	public var _entries:Slice<GoString> = (null : Slice<GoString>);

	/**
		// entries[:dirIdx] have already been returned in ReadDirent
	**/
	public var _dirIdx:GoInt = 0;

	public var _pos:GoInt64 = 0;
	public var _seeked:Bool = false;

	public function new(?_path:GoString, ?_entries:Slice<GoString>, ?_dirIdx:GoInt, ?_pos:GoInt64, ?_seeked:Bool) {
		if (_path != null)
			this._path = _path;
		if (_entries != null)
			this._entries = _entries;
		if (_dirIdx != null)
			this._dirIdx = _dirIdx;
		if (_pos != null)
			this._pos = _pos;
		if (_seeked != null)
			this._seeked = _seeked;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_jsFile(_path, _entries, _dirIdx, _pos, _seeked);
	}
}

@:structInit class SockaddrInet4 {
	public var port:GoInt = 0;
	public var addr:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...4) (0 : GoUInt8)]);

	public function new(?port:GoInt, ?addr:GoArray<GoUInt8>) {
		if (port != null)
			this.port = port;
		if (addr != null)
			this.addr = addr;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SockaddrInet4(port, addr);
	}
}

@:structInit class SockaddrInet6 {
	public var port:GoInt = 0;
	public var zoneId:GoUInt32 = 0;
	public var addr:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...16) (0 : GoUInt8)]);

	public function new(?port:GoInt, ?zoneId:GoUInt32, ?addr:GoArray<GoUInt8>) {
		if (port != null)
			this.port = port;
		if (zoneId != null)
			this.zoneId = zoneId;
		if (addr != null)
			this.addr = addr;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SockaddrInet6(port, zoneId, addr);
	}
}

@:structInit class SockaddrUnix {
	public var name:GoString = "";

	public function new(?name:GoString) {
		if (name != null)
			this.name = name;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SockaddrUnix(name);
	}
}

@:structInit class Dirent {
	public var reclen:GoUInt16 = 0;
	public var name:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...256) (0 : GoUInt8)]);

	public function new(?reclen:GoUInt16, ?name:GoArray<GoUInt8>) {
		if (reclen != null)
			this.reclen = reclen;
		if (name != null)
			this.name = name;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Dirent(reclen, name);
	}
}

@:structInit class Stat_t {
	public var dev:GoInt64 = 0;
	public var ino:GoUInt64 = 0;
	public var mode:GoUInt32 = 0;
	public var nlink:GoUInt32 = 0;
	public var uid:GoUInt32 = 0;
	public var gid:GoUInt32 = 0;
	public var rdev:GoInt64 = 0;
	public var size:GoInt64 = 0;
	public var blksize:GoInt32 = 0;
	public var blocks:GoInt32 = 0;
	public var atime:GoInt64 = 0;
	public var atimeNsec:GoInt64 = 0;
	public var mtime:GoInt64 = 0;
	public var mtimeNsec:GoInt64 = 0;
	public var ctime:GoInt64 = 0;
	public var ctimeNsec:GoInt64 = 0;

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

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Stat_t(dev, ino, mode, nlink, uid, gid, rdev, size, blksize, blocks, atime, atimeNsec, mtime, mtimeNsec, ctime, ctimeNsec);
	}
}

/**
	// XXX made up
**/
@:structInit class Rusage {
	public var utime:Timeval = ({} : Timeval);
	public var stime:Timeval = ({} : Timeval);

	public function new(?utime:Timeval, ?stime:Timeval) {
		if (utime != null)
			this.utime = utime;
		if (stime != null)
			this.stime = stime;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Rusage(utime, stime);
	}
}

/**
	// XXX made up
**/
@:structInit class ProcAttr {
	public var dir:GoString = "";
	public var env:Slice<GoString> = (null : Slice<GoString>);
	public var files:Slice<GoUIntptr> = (null : Slice<GoUIntptr>);
	public var sys:Ref<SysProcAttr> = (null : SysProcAttr);

	public function new(?dir:GoString, ?env:Slice<GoString>, ?files:Slice<GoUIntptr>, ?sys:Ref<SysProcAttr>) {
		if (dir != null)
			this.dir = dir;
		if (env != null)
			this.env = env;
		if (files != null)
			this.files = files;
		if (sys != null)
			this.sys = sys;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new ProcAttr(dir, env, files, sys);
	}
}

@:structInit class SysProcAttr {
	public function new() {}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new SysProcAttr();
	}
}

/**
	// dummy
**/
@:structInit class Iovec {
	public function new() {}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Iovec();
	}
}

@:structInit @:using(stdgo.syscall.Syscall.Timespec_static_extension) class Timespec {
	public var sec:GoInt64 = 0;
	public var nsec:GoInt64 = 0;

	public function new(?sec:GoInt64, ?nsec:GoInt64) {
		if (sec != null)
			this.sec = sec;
		if (nsec != null)
			this.nsec = nsec;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Timespec(sec, nsec);
	}
}

@:structInit @:using(stdgo.syscall.Syscall.Timeval_static_extension) class Timeval {
	public var sec:GoInt64 = 0;
	public var usec:GoInt64 = 0;

	public function new(?sec:GoInt64, ?usec:GoInt64) {
		if (sec != null)
			this.sec = sec;
		if (usec != null)
			this.usec = usec;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

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

function _asanRead(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void
	throw "syscall._asanRead is not yet implemented";

function _asanWrite(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void
	throw "syscall._asanWrite is not yet implemented";

/**
	// readInt returns the size-bytes unsigned integer in native byte order at offset off.
**/
function _readInt(_b:Slice<GoByte>, _off:GoUIntptr, _size:GoUIntptr):{var _0:GoUInt64; var _1:Bool;}
	throw "syscall._readInt is not yet implemented";

function _readIntBE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64
	throw "syscall._readIntBE is not yet implemented";

function _readIntLE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64
	throw "syscall._readIntLE is not yet implemented";

/**
	// ParseDirent parses up to max directory entries in buf,
	// appending the names to names. It returns the number of
	// bytes consumed from buf, the number of entries added
	// to names, and the new names slice.
**/
function parseDirent(_buf:Slice<GoByte>, _max:GoInt, _names:Slice<GoString>):{var _0:GoInt; var _1:GoInt; var _2:Slice<GoString>;}
	throw "syscall.parseDirent is not yet implemented";

function _runtime_envs():Slice<GoString>
	throw "syscall._runtime_envs is not yet implemented";

/**
	// setenv_c and unsetenv_c are provided by the runtime but are no-ops
	// if cgo isn't loaded.
**/
function _setenv_c(_k:GoString, _v:GoString):Void
	throw "syscall._setenv_c is not yet implemented";

function _unsetenv_c(_k:GoString):Void
	throw "syscall._unsetenv_c is not yet implemented";

function _copyenv():Void
	throw "syscall._copyenv is not yet implemented";

function unsetenv(_key:GoString):Error
	throw "syscall.unsetenv is not yet implemented";

function getenv(_key:GoString):{var _0:GoString; var _1:Bool;}
	throw "syscall.getenv is not yet implemented";

function setenv(_key:GoString, _value:GoString):Error
	throw "syscall.setenv is not yet implemented";

function clearenv():Void
	throw "syscall.clearenv is not yet implemented";

function environ():Slice<GoString>
	throw "syscall.environ is not yet implemented";

/**
	// Provided by package runtime.
**/
function _now():{var _0:GoInt64; var _1:GoInt32;}
	throw "syscall._now is not yet implemented";

function _fdToFile(_fd:GoInt):{var _0:T_jsFile; var _1:Error;}
	throw "syscall._fdToFile is not yet implemented";

function open(_path:GoString, _openmode:GoInt, _perm:GoUInt32):{var _0:GoInt; var _1:Error;}
	throw "syscall.open is not yet implemented";

function close(_fd:GoInt):Error
	throw "syscall.close is not yet implemented";

function closeOnExec(_fd:GoInt):Void
	throw "syscall.closeOnExec is not yet implemented";

function mkdir(_path:GoString, _perm:GoUInt32):Error
	throw "syscall.mkdir is not yet implemented";

function readDirent(_fd:GoInt, _buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
	throw "syscall.readDirent is not yet implemented";

function _setStat(_st:Stat_t, _jsSt:stdgo.syscall.js.Js.Value):Void
	throw "syscall._setStat is not yet implemented";

function stat(_path:GoString, _st:Stat_t):Error
	throw "syscall.stat is not yet implemented";

function lstat(_path:GoString, _st:Stat_t):Error
	throw "syscall.lstat is not yet implemented";

function fstat(_fd:GoInt, _st:Stat_t):Error
	throw "syscall.fstat is not yet implemented";

function unlink(_path:GoString):Error
	throw "syscall.unlink is not yet implemented";

function rmdir(_path:GoString):Error
	throw "syscall.rmdir is not yet implemented";

function chmod(_path:GoString, _mode:GoUInt32):Error
	throw "syscall.chmod is not yet implemented";

function fchmod(_fd:GoInt, _mode:GoUInt32):Error
	throw "syscall.fchmod is not yet implemented";

function chown(_path:GoString, _uid:GoInt, _gid:GoInt):Error
	throw "syscall.chown is not yet implemented";

function fchown(_fd:GoInt, _uid:GoInt, _gid:GoInt):Error
	throw "syscall.fchown is not yet implemented";

function lchown(_path:GoString, _uid:GoInt, _gid:GoInt):Error
	throw "syscall.lchown is not yet implemented";

function utimesNano(_path:GoString, _ts:Slice<Timespec>):Error
	throw "syscall.utimesNano is not yet implemented";

function rename(_from:GoString, _to:GoString):Error
	throw "syscall.rename is not yet implemented";

function truncate(_path:GoString, _length:GoInt64):Error
	throw "syscall.truncate is not yet implemented";

function ftruncate(_fd:GoInt, _length:GoInt64):Error
	throw "syscall.ftruncate is not yet implemented";

function getcwd(_buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
	throw "syscall.getcwd is not yet implemented";

function chdir(_path:GoString):Error
	throw "syscall.chdir is not yet implemented";

function fchdir(_fd:GoInt):Error
	throw "syscall.fchdir is not yet implemented";

function readlink(_path:GoString, _buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
	throw "syscall.readlink is not yet implemented";

function link(_path:GoString, _link:GoString):Error
	throw "syscall.link is not yet implemented";

function symlink(_path:GoString, _link:GoString):Error
	throw "syscall.symlink is not yet implemented";

function fsync(_fd:GoInt):Error
	throw "syscall.fsync is not yet implemented";

function read(_fd:GoInt, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
	throw "syscall.read is not yet implemented";

function write(_fd:GoInt, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
	throw "syscall.write is not yet implemented";

function pread(_fd:GoInt, _b:Slice<GoByte>, _offset:GoInt64):{var _0:GoInt; var _1:Error;}
	throw "syscall.pread is not yet implemented";

function pwrite(_fd:GoInt, _b:Slice<GoByte>, _offset:GoInt64):{var _0:GoInt; var _1:Error;}
	throw "syscall.pwrite is not yet implemented";

function seek(_fd:GoInt, _offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;}
	throw "syscall.seek is not yet implemented";

function dup(_fd:GoInt):{var _0:GoInt; var _1:Error;}
	throw "syscall.dup is not yet implemented";

function dup2(_fd:GoInt, _newfd:GoInt):Error
	throw "syscall.dup2 is not yet implemented";

function pipe(_fd:Slice<GoInt>):Error
	throw "syscall.pipe is not yet implemented";

function _fsCall(_name:GoString, _args:haxe.Rest<AnyInterface>):{var _0:stdgo.syscall.js.Js.Value; var _1:Error;}
	throw "syscall._fsCall is not yet implemented";

/**
	// checkPath checks that the path is not empty and that it contains no null characters.
**/
function _checkPath(_path:GoString):Error
	throw "syscall._checkPath is not yet implemented";

function _recoverErr(_errPtr:Error):Void
	throw "syscall._recoverErr is not yet implemented";

/**
	// mapJSError maps an error given by Node.js to the appropriate Go error
**/
function _mapJSError(_jsErr:stdgo.syscall.js.Js.Value):Error
	throw "syscall._mapJSError is not yet implemented";

function _msanRead(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void
	throw "syscall._msanRead is not yet implemented";

function _msanWrite(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void
	throw "syscall._msanWrite is not yet implemented";

function socket(_proto:GoInt, _sotype:GoInt, _unused:GoInt):{var _0:GoInt; var _1:Error;}
	throw "syscall.socket is not yet implemented";

function bind(_fd:GoInt, _sa:Sockaddr):Error
	throw "syscall.bind is not yet implemented";

function stopIO(_fd:GoInt):Error
	throw "syscall.stopIO is not yet implemented";

function listen(_fd:GoInt, _backlog:GoInt):Error
	throw "syscall.listen is not yet implemented";

function accept(_fd:GoInt):{var _0:GoInt; var _1:Sockaddr; var _2:Error;}
	throw "syscall.accept is not yet implemented";

function connect(_fd:GoInt, _sa:Sockaddr):Error
	throw "syscall.connect is not yet implemented";

function recvfrom(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt):{var _0:GoInt; var _1:Sockaddr; var _2:Error;}
	throw "syscall.recvfrom is not yet implemented";

function sendto(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt, _to:Sockaddr):Error
	throw "syscall.sendto is not yet implemented";

function recvmsg(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _flags:GoInt):{
	var _0:GoInt;
	var _1:GoInt;
	var _2:GoInt;
	var _3:Sockaddr;
	var _4:Error;
}
	throw "syscall.recvmsg is not yet implemented";

function sendmsgN(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _to:Sockaddr, _flags:GoInt):{var _0:GoInt; var _1:Error;}
	throw "syscall.sendmsgN is not yet implemented";

function getsockoptInt(_fd:GoInt, _level:GoInt, _opt:GoInt):{var _0:GoInt; var _1:Error;}
	throw "syscall.getsockoptInt is not yet implemented";

function setsockoptInt(_fd:GoInt, _level:GoInt, _opt:GoInt, _value:GoInt):Error
	throw "syscall.setsockoptInt is not yet implemented";

function setReadDeadline(_fd:GoInt, _t:GoInt64):Error
	throw "syscall.setReadDeadline is not yet implemented";

function setWriteDeadline(_fd:GoInt, _t:GoInt64):Error
	throw "syscall.setWriteDeadline is not yet implemented";

function shutdown(_fd:GoInt, _how:GoInt):Error
	throw "syscall.shutdown is not yet implemented";

function setNonblock(_fd:GoInt, _nonblocking:Bool):Error
	throw "syscall.setNonblock is not yet implemented";

/**
	// StringByteSlice converts a string to a NUL-terminated []byte,
	// If s contains a NUL byte this function panics instead of
	// returning an error.
	//
	// Deprecated: Use ByteSliceFromString instead.
**/
function stringByteSlice(_s:GoString):Slice<GoByte>
	throw "syscall.stringByteSlice is not yet implemented";

/**
	// ByteSliceFromString returns a NUL-terminated slice of bytes
	// containing the text of s. If s contains a NUL byte at any
	// location, it returns (nil, EINVAL).
**/
function byteSliceFromString(_s:GoString):{var _0:Slice<GoByte>; var _1:Error;}
	throw "syscall.byteSliceFromString is not yet implemented";

/**
	// StringBytePtr returns a pointer to a NUL-terminated array of bytes.
	// If s contains a NUL byte this function panics instead of returning
	// an error.
	//
	// Deprecated: Use BytePtrFromString instead.
**/
function stringBytePtr(_s:GoString):Pointer<GoByte>
	throw "syscall.stringBytePtr is not yet implemented";

/**
	// BytePtrFromString returns a pointer to a NUL-terminated array of
	// bytes containing the text of s. If s contains a NUL byte at any
	// location, it returns (nil, EINVAL).
**/
function bytePtrFromString(_s:GoString):{var _0:Pointer<GoByte>; var _1:Error;}
	throw "syscall.bytePtrFromString is not yet implemented";

function getpagesize():GoInt
	throw "syscall.getpagesize is not yet implemented";

function exit(_code:GoInt):Void
	throw "syscall.exit is not yet implemented";

function _direntIno(_buf:Slice<GoByte>):{var _0:GoUInt64; var _1:Bool;}
	throw "syscall._direntIno is not yet implemented";

function _direntReclen(_buf:Slice<GoByte>):{var _0:GoUInt64; var _1:Bool;}
	throw "syscall._direntReclen is not yet implemented";

function _direntNamlen(_buf:Slice<GoByte>):{var _0:GoUInt64; var _1:Bool;}
	throw "syscall._direntNamlen is not yet implemented";

function syscall(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr):{var _0:GoUIntptr; var _1:GoUIntptr; var _2:Errno;}
	throw "syscall.syscall is not yet implemented";

function syscall6(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr, _a4:GoUIntptr, _a5:GoUIntptr,
		_a6:GoUIntptr):{var _0:GoUIntptr; var _1:GoUIntptr; var _2:Errno;}
	throw "syscall.syscall6 is not yet implemented";

function rawSyscall(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr):{var _0:GoUIntptr; var _1:GoUIntptr; var _2:Errno;}
	throw "syscall.rawSyscall is not yet implemented";

function rawSyscall6(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr, _a4:GoUIntptr, _a5:GoUIntptr,
		_a6:GoUIntptr):{var _0:GoUIntptr; var _1:GoUIntptr; var _2:Errno;}
	throw "syscall.rawSyscall6 is not yet implemented";

function sysctl(_key:GoString):{var _0:GoString; var _1:Error;}
	throw "syscall.sysctl is not yet implemented";

function getwd():{var _0:GoString; var _1:Error;}
	throw "syscall.getwd is not yet implemented";

function getuid():GoInt
	throw "syscall.getuid is not yet implemented";

function getgid():GoInt
	throw "syscall.getgid is not yet implemented";

function geteuid():GoInt
	throw "syscall.geteuid is not yet implemented";

function getegid():GoInt
	throw "syscall.getegid is not yet implemented";

function getgroups():{var _0:Slice<GoInt>; var _1:Error;}
	throw "syscall.getgroups is not yet implemented";

function getpid():GoInt
	throw "syscall.getpid is not yet implemented";

function getppid():GoInt
	throw "syscall.getppid is not yet implemented";

function umask(_mask:GoInt):GoInt
	throw "syscall.umask is not yet implemented";

function gettimeofday(_tv:Timeval):Error
	throw "syscall.gettimeofday is not yet implemented";

function kill(_pid:GoInt, _signum:Signal):Error
	throw "syscall.kill is not yet implemented";

function sendfile(_outfd:GoInt, _infd:GoInt, _offset:Pointer<GoInt64>, _count:GoInt):{var _0:GoInt; var _1:Error;}
	throw "syscall.sendfile is not yet implemented";

function startProcess(_argv0:GoString, _argv:Slice<GoString>, _attr:ProcAttr):{var _0:GoInt; var _1:GoUIntptr; var _2:Error;}
	throw "syscall.startProcess is not yet implemented";

function wait4(_pid:GoInt, _wstatus:Pointer<WaitStatus>, _options:GoInt, _rusage:Rusage):{var _0:GoInt; var _1:Error;}
	throw "syscall.wait4 is not yet implemented";

function _setTimespec(_sec:GoInt64, _nsec:GoInt64):Timespec
	throw "syscall._setTimespec is not yet implemented";

function _setTimeval(_sec:GoInt64, _usec:GoInt64):Timeval
	throw "syscall._setTimeval is not yet implemented";

/**
	// errnoErr returns common boxed Errno values, to prevent
	// allocations at runtime.
**/
function _errnoErr(_e:Errno):Error
	throw "syscall._errnoErr is not yet implemented";

function _faketimeWrite(_fd:GoInt, _p:Slice<GoByte>):GoInt
	throw "syscall._faketimeWrite is not yet implemented";

/**
	// TimespecToNSec returns the time stored in ts as nanoseconds.
**/
function timespecToNsec(_ts:Timespec):GoInt64
	throw "syscall.timespecToNsec is not yet implemented";

/**
	// NsecToTimespec converts a number of nanoseconds into a Timespec.
**/
function nsecToTimespec(_nsec:GoInt64):Timespec
	throw "syscall.nsecToTimespec is not yet implemented";

/**
	// TimevalToNsec returns the time stored in tv as nanoseconds.
**/
function timevalToNsec(_tv:Timeval):GoInt64
	throw "syscall.timevalToNsec is not yet implemented";

/**
	// NsecToTimeval converts a number of nanoseconds into a Timeval.
**/
function nsecToTimeval(_nsec:GoInt64):Timeval
	throw "syscall.nsecToTimeval is not yet implemented";

@:keep class Timespec_static_extension {
	/**
		// Nano returns the time stored in ts as nanoseconds.
	**/
	@:keep
	static public function nano(_ts:Timespec):GoInt64
		throw "syscall.nano is not yet implemented";

	/**
		// Unix returns the time stored in ts as seconds plus nanoseconds.
	**/
	@:keep
	static public function unix(_ts:Timespec):{var _0:GoInt64; var _1:GoInt64;}
		throw "syscall.unix is not yet implemented";
}

class Timespec_asInterface {
	/**
		// Nano returns the time stored in ts as nanoseconds.
	**/
	@:keep
	public var nano:() -> GoInt64 = null;

	/**
		// Unix returns the time stored in ts as seconds plus nanoseconds.
	**/
	@:keep
	public var unix:() -> {
		var _0:GoInt64;
		var _1:GoInt64;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Timespec;
}

@:keep class Timeval_static_extension {
	/**
		// Nano returns the time stored in tv as nanoseconds.
	**/
	@:keep
	static public function nano(_tv:Timeval):GoInt64
		throw "syscall.nano is not yet implemented";

	/**
		// Unix returns the time stored in tv as seconds plus nanoseconds.
	**/
	@:keep
	static public function unix(_tv:Timeval):{var _0:GoInt64; var _1:GoInt64;}
		throw "syscall.unix is not yet implemented";
}

class Timeval_asInterface {
	/**
		// Nano returns the time stored in tv as nanoseconds.
	**/
	@:keep
	public var nano:() -> GoInt64 = null;

	/**
		// Unix returns the time stored in tv as seconds plus nanoseconds.
	**/
	@:keep
	public var unix:() -> {
		var _0:GoInt64;
		var _1:GoInt64;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Timeval;
}

@:keep private class Errno_static_extension {
	@:keep
	static public function timeout(_e:Errno):Bool
		throw "syscall.timeout is not yet implemented";

	@:keep
	static public function temporary(_e:Errno):Bool
		throw "syscall.temporary is not yet implemented";

	@:keep
	static public function is_(_e:Errno, _target:Error):Bool
		throw "syscall.is_ is not yet implemented";

	@:keep
	static public function error(_e:Errno):GoString
		throw "syscall.error is not yet implemented";
}

class Errno_asInterface {
	@:keep
	public var timeout:() -> Bool = null;
	@:keep
	public var temporary:() -> Bool = null;
	@:keep
	public var is_:Error->Bool = null;
	@:keep
	public var error:() -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Errno;
}

@:keep private class Signal_static_extension {
	@:keep
	static public function string(_s:Signal):GoString
		throw "syscall.string is not yet implemented";

	@:keep
	static public function signal(_s:Signal):Void
		throw "syscall.signal is not yet implemented";
}

class Signal_asInterface {
	@:keep
	public var string:() -> GoString = null;
	@:keep
	public var signal:() -> Void = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Signal;
}

@:keep private class WaitStatus_static_extension {
	@:keep
	static public function trapCause(_w:WaitStatus):GoInt
		throw "syscall.trapCause is not yet implemented";

	@:keep
	static public function stopSignal(_w:WaitStatus):Signal
		throw "syscall.stopSignal is not yet implemented";

	@:keep
	static public function continued(_w:WaitStatus):Bool
		throw "syscall.continued is not yet implemented";

	@:keep
	static public function stopped(_w:WaitStatus):Bool
		throw "syscall.stopped is not yet implemented";

	@:keep
	static public function coreDump(_w:WaitStatus):Bool
		throw "syscall.coreDump is not yet implemented";

	@:keep
	static public function signal(_w:WaitStatus):Signal
		throw "syscall.signal is not yet implemented";

	@:keep
	static public function signaled(_w:WaitStatus):Bool
		throw "syscall.signaled is not yet implemented";

	@:keep
	static public function exitStatus(_w:WaitStatus):GoInt
		throw "syscall.exitStatus is not yet implemented";

	@:keep
	static public function exited(_w:WaitStatus):Bool
		throw "syscall.exited is not yet implemented";
}

class WaitStatus_asInterface {
	@:keep
	public var trapCause:() -> GoInt = null;
	@:keep
	public var stopSignal:() -> Signal = null;
	@:keep
	public var continued:() -> Bool = null;
	@:keep
	public var stopped:() -> Bool = null;
	@:keep
	public var coreDump:() -> Bool = null;
	@:keep
	public var signal:() -> Signal = null;
	@:keep
	public var signaled:() -> Bool = null;
	@:keep
	public var exitStatus:() -> GoInt = null;
	@:keep
	public var exited:() -> Bool = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:WaitStatus;
}
