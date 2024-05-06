package stdgo;
/**
    Package syscall contains an interface to the low-level operating system
    primitives. The details vary depending on the underlying system, and
    by default, godoc will display the syscall documentation for the current
    system. If you want godoc to display syscall documentation for another
    system, set $GOOS and $GOARCH to the desired system. For example, if
    you want to view documentation for freebsd/arm on linux/amd64, set $GOOS
    to freebsd and $GOARCH to arm.
    The primary use of syscall is inside other packages that provide a more
    portable interface to the system, such as "os", "time" and "net".  Use
    those packages rather than this one if you can.
    For details of the functions and data types in this package consult
    the manuals for the appropriate operating system.
    These calls return err == nil to indicate success; otherwise
    err is an operating system error describing the failure.
    On most systems, that error has type syscall.Errno.
    
    Deprecated: this package is locked down. Callers should use the
    corresponding package in the golang.org/x/sys repository instead.
    That is also where updates required by new systems or versions
    should be applied. See https://golang.org/s/go1.4-syscall for more
    information.
**/
private var __go2hxdoc__package : Bool;
final af_UNSPEC : haxe.UInt64 = stdgo._internal.syscall.Syscall.af_UNSPEC;
final af_UNIX = stdgo._internal.syscall.Syscall.af_UNIX;
final af_INET = stdgo._internal.syscall.Syscall.af_INET;
final af_INET6 = stdgo._internal.syscall.Syscall.af_INET6;
final sock_STREAM : haxe.UInt64 = stdgo._internal.syscall.Syscall.sock_STREAM;
final sock_DGRAM = stdgo._internal.syscall.Syscall.sock_DGRAM;
final sock_RAW = stdgo._internal.syscall.Syscall.sock_RAW;
final sock_SEQPACKET = stdgo._internal.syscall.Syscall.sock_SEQPACKET;
final ipproto_IP : haxe.UInt64 = stdgo._internal.syscall.Syscall.ipproto_IP;
final ipproto_IPV4 : haxe.UInt64 = stdgo._internal.syscall.Syscall.ipproto_IPV4;
final ipproto_IPV6 : haxe.UInt64 = stdgo._internal.syscall.Syscall.ipproto_IPV6;
final ipproto_TCP : haxe.UInt64 = stdgo._internal.syscall.Syscall.ipproto_TCP;
final ipproto_UDP : haxe.UInt64 = stdgo._internal.syscall.Syscall.ipproto_UDP;
final ipv6_V6ONLY = stdgo._internal.syscall.Syscall.ipv6_V6ONLY;
final somaxconn = stdgo._internal.syscall.Syscall.somaxconn;
final so_ERROR = stdgo._internal.syscall.Syscall.so_ERROR;
final f_DUPFD_CLOEXEC = stdgo._internal.syscall.Syscall.f_DUPFD_CLOEXEC;
final sys_FCNTL : haxe.UInt64 = stdgo._internal.syscall.Syscall.sys_FCNTL;
final pathMax : haxe.UInt64 = stdgo._internal.syscall.Syscall.pathMax;
final sigchld = stdgo._internal.syscall.Syscall.sigchld;
final sigint = stdgo._internal.syscall.Syscall.sigint;
final sigkill = stdgo._internal.syscall.Syscall.sigkill;
final sigtrap = stdgo._internal.syscall.Syscall.sigtrap;
final sigquit = stdgo._internal.syscall.Syscall.sigquit;
final sigterm = stdgo._internal.syscall.Syscall.sigterm;
final stdin : haxe.UInt64 = stdgo._internal.syscall.Syscall.stdin;
final stdout : haxe.UInt64 = stdgo._internal.syscall.Syscall.stdout;
final stderr : haxe.UInt64 = stdgo._internal.syscall.Syscall.stderr;
final o_RDONLY : haxe.UInt64 = stdgo._internal.syscall.Syscall.o_RDONLY;
final o_WRONLY : haxe.UInt64 = stdgo._internal.syscall.Syscall.o_WRONLY;
final o_RDWR : haxe.UInt64 = stdgo._internal.syscall.Syscall.o_RDWR;
final o_CREAT : haxe.UInt64 = stdgo._internal.syscall.Syscall.o_CREAT;
final o_CREATE : haxe.UInt64 = stdgo._internal.syscall.Syscall.o_CREATE;
final o_TRUNC : haxe.UInt64 = stdgo._internal.syscall.Syscall.o_TRUNC;
final o_APPEND : haxe.UInt64 = stdgo._internal.syscall.Syscall.o_APPEND;
final o_EXCL : haxe.UInt64 = stdgo._internal.syscall.Syscall.o_EXCL;
final o_SYNC : haxe.UInt64 = stdgo._internal.syscall.Syscall.o_SYNC;
final o_CLOEXEC : haxe.UInt64 = stdgo._internal.syscall.Syscall.o_CLOEXEC;
final f_DUPFD : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_DUPFD;
final f_GETFD : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_GETFD;
final f_SETFD : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_SETFD;
final f_GETFL : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_GETFL;
final f_SETFL : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_SETFL;
final f_GETOWN : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_GETOWN;
final f_SETOWN : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_SETOWN;
final f_GETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_GETLK;
final f_SETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_SETLK;
final f_SETLKW : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_SETLKW;
final f_RGETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_RGETLK;
final f_RSETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_RSETLK;
final f_CNVT : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_CNVT;
final f_RSETLKW : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_RSETLKW;
final f_RDLCK : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_RDLCK;
final f_WRLCK : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_WRLCK;
final f_UNLCK : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_UNLCK;
final f_UNLKSYS : haxe.UInt64 = stdgo._internal.syscall.Syscall.f_UNLKSYS;
final s_IFMT : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFMT;
final s_IFSHM_SYSV : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFSHM_SYSV;
final s_IFSEMA : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFSEMA;
final s_IFCOND : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFCOND;
final s_IFMUTEX : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFMUTEX;
final s_IFSHM : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFSHM;
final s_IFBOUNDSOCK : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFBOUNDSOCK;
final s_IFSOCKADDR : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFSOCKADDR;
final s_IFDSOCK : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFDSOCK;
final s_IFSOCK : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFSOCK;
final s_IFLNK : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFLNK;
final s_IFREG : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFREG;
final s_IFBLK : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFBLK;
final s_IFDIR : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFDIR;
final s_IFCHR : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFCHR;
final s_IFIFO : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IFIFO;
final s_UNSUP : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_UNSUP;
final s_ISUID : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_ISUID;
final s_ISGID : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_ISGID;
final s_ISVTX : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_ISVTX;
final s_IREAD : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IREAD;
final s_IWRITE : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IWRITE;
final s_IEXEC : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IEXEC;
final s_IRWXU : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IRWXU;
final s_IRUSR : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IRUSR;
final s_IWUSR : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IWUSR;
final s_IXUSR : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IXUSR;
final s_IRWXG : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IRWXG;
final s_IRGRP : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IRGRP;
final s_IWGRP : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IWGRP;
final s_IXGRP : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IXGRP;
final s_IRWXO : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IRWXO;
final s_IROTH : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IROTH;
final s_IWOTH : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IWOTH;
final s_IXOTH : haxe.UInt64 = stdgo._internal.syscall.Syscall.s_IXOTH;
var forkLock(get, set) : stdgo._internal.sync.Sync.RWMutex;
private function get_forkLock():stdgo._internal.sync.Sync.RWMutex return stdgo._internal.syscall.Syscall.forkLock;
private function set_forkLock(v:stdgo._internal.sync.Sync.RWMutex):stdgo._internal.sync.Sync.RWMutex return stdgo._internal.syscall.Syscall.forkLock = v;
final implementsGetwd : Bool = stdgo._internal.syscall.Syscall.implementsGetwd;
final eperm : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eperm;
final enoent : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enoent;
final esrch : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.esrch;
final eintr : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eintr;
final eio : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eio;
final enxio : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enxio;
final e2big : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.e2big;
final enoexec : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enoexec;
final ebadf : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ebadf;
final echild : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.echild;
final eagain : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eagain;
final enomem : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enomem;
final eacces : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eacces;
final efault : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.efault;
final ebusy : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ebusy;
final eexist : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eexist;
final exdev : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.exdev;
final enodev : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enodev;
final enotdir : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enotdir;
final eisdir : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eisdir;
final einval : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.einval;
final enfile : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enfile;
final emfile : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.emfile;
final enotty : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enotty;
final efbig : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.efbig;
final enospc : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enospc;
final espipe : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.espipe;
final erofs : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.erofs;
final emlink : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.emlink;
final epipe : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.epipe;
final enametoolong : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enametoolong;
final enosys : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enosys;
final edquot : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.edquot;
final edom : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.edom;
final erange : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.erange;
final edeadlk : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.edeadlk;
final enolck : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enolck;
final enotempty : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enotempty;
final eloop : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eloop;
final enomsg : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enomsg;
final eidrm : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eidrm;
final echrng : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.echrng;
final el2nsync : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.el2nsync;
final el3hlt : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.el3hlt;
final el3rst : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.el3rst;
final elnrng : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.elnrng;
final eunatch : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eunatch;
final enocsi : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enocsi;
final el2hlt : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.el2hlt;
final ebade : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ebade;
final ebadr : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ebadr;
final exfull : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.exfull;
final enoano : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enoano;
final ebadrqc : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ebadrqc;
final ebadslt : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ebadslt;
final edeadlock : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.edeadlock;
final ebfont : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ebfont;
final enostr : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enostr;
final enodata : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enodata;
final etime : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.etime;
final enosr : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enosr;
final enonet : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enonet;
final enopkg : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enopkg;
final eremote : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eremote;
final enolink : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enolink;
final eadv : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eadv;
final esrmnt : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.esrmnt;
final ecomm : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ecomm;
final eproto : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eproto;
final emultihop : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.emultihop;
final edotdot : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.edotdot;
final ebadmsg : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ebadmsg;
final eoverflow : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eoverflow;
final enotuniq : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enotuniq;
final ebadfd : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ebadfd;
final eremchg : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eremchg;
final elibacc : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.elibacc;
final elibbad : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.elibbad;
final elibscn : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.elibscn;
final elibmax : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.elibmax;
final elibexec : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.elibexec;
final eilseq : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eilseq;
final eusers : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eusers;
final enotsock : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enotsock;
final edestaddrreq : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.edestaddrreq;
final emsgsize : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.emsgsize;
final eprototype : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eprototype;
final enoprotoopt : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enoprotoopt;
final eprotonosupport : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eprotonosupport;
final esocktnosupport : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.esocktnosupport;
final eopnotsupp : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eopnotsupp;
final epfnosupport : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.epfnosupport;
final eafnosupport : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eafnosupport;
final eaddrinuse : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eaddrinuse;
final eaddrnotavail : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eaddrnotavail;
final enetdown : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enetdown;
final enetunreach : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enetunreach;
final enetreset : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enetreset;
final econnaborted : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.econnaborted;
final econnreset : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.econnreset;
final enobufs : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enobufs;
final eisconn : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eisconn;
final enotconn : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enotconn;
final eshutdown : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eshutdown;
final etoomanyrefs : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.etoomanyrefs;
final etimedout : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.etimedout;
final econnrefused : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.econnrefused;
final ehostdown : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ehostdown;
final ehostunreach : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ehostunreach;
final ealready : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ealready;
final einprogress : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.einprogress;
final estale : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.estale;
final enotsup : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enotsup;
final enomedium : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enomedium;
final ecanceled : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ecanceled;
final elbin : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.elbin;
final eftype : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eftype;
final enmfile : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enmfile;
final eproclim : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.eproclim;
final enoshare : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.enoshare;
final ecaseclash : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ecaseclash;
final ewouldblock : stdgo._internal.syscall.Syscall.Errno = stdgo._internal.syscall.Syscall.ewouldblock;
@:forward @:forward.new abstract RawConn_static_extension(stdgo._internal.syscall.Syscall.RawConn_static_extension) from stdgo._internal.syscall.Syscall.RawConn_static_extension to stdgo._internal.syscall.Syscall.RawConn_static_extension {

}
typedef RawConn = stdgo._internal.syscall.Syscall.RawConn;
@:forward @:forward.new abstract Conn_static_extension(stdgo._internal.syscall.Syscall.Conn_static_extension) from stdgo._internal.syscall.Syscall.Conn_static_extension to stdgo._internal.syscall.Syscall.Conn_static_extension {

}
typedef Conn = stdgo._internal.syscall.Syscall.Conn;
@:forward @:forward.new abstract T_jsFile(stdgo._internal.syscall.Syscall.T_jsFile) from stdgo._internal.syscall.Syscall.T_jsFile to stdgo._internal.syscall.Syscall.T_jsFile {

}
@:forward @:forward.new abstract SockaddrInet4(stdgo._internal.syscall.Syscall.SockaddrInet4) from stdgo._internal.syscall.Syscall.SockaddrInet4 to stdgo._internal.syscall.Syscall.SockaddrInet4 {

}
@:forward @:forward.new abstract SockaddrInet6(stdgo._internal.syscall.Syscall.SockaddrInet6) from stdgo._internal.syscall.Syscall.SockaddrInet6 to stdgo._internal.syscall.Syscall.SockaddrInet6 {

}
@:forward @:forward.new abstract SockaddrUnix(stdgo._internal.syscall.Syscall.SockaddrUnix) from stdgo._internal.syscall.Syscall.SockaddrUnix to stdgo._internal.syscall.Syscall.SockaddrUnix {

}
@:forward @:forward.new abstract Dirent(stdgo._internal.syscall.Syscall.Dirent) from stdgo._internal.syscall.Syscall.Dirent to stdgo._internal.syscall.Syscall.Dirent {

}
@:forward @:forward.new abstract Stat_t(stdgo._internal.syscall.Syscall.Stat_t) from stdgo._internal.syscall.Syscall.Stat_t to stdgo._internal.syscall.Syscall.Stat_t {

}
@:forward @:forward.new abstract Rusage(stdgo._internal.syscall.Syscall.Rusage) from stdgo._internal.syscall.Syscall.Rusage to stdgo._internal.syscall.Syscall.Rusage {

}
@:forward @:forward.new abstract ProcAttr(stdgo._internal.syscall.Syscall.ProcAttr) from stdgo._internal.syscall.Syscall.ProcAttr to stdgo._internal.syscall.Syscall.ProcAttr {

}
@:forward @:forward.new abstract SysProcAttr(stdgo._internal.syscall.Syscall.SysProcAttr) from stdgo._internal.syscall.Syscall.SysProcAttr to stdgo._internal.syscall.Syscall.SysProcAttr {

}
@:forward @:forward.new abstract Iovec(stdgo._internal.syscall.Syscall.Iovec) from stdgo._internal.syscall.Syscall.Iovec to stdgo._internal.syscall.Syscall.Iovec {

}
@:forward @:forward.new abstract Timespec(stdgo._internal.syscall.Syscall.Timespec) from stdgo._internal.syscall.Syscall.Timespec to stdgo._internal.syscall.Syscall.Timespec {

}
@:forward @:forward.new abstract Timeval(stdgo._internal.syscall.Syscall.Timeval) from stdgo._internal.syscall.Syscall.Timeval to stdgo._internal.syscall.Syscall.Timeval {

}
typedef Sockaddr = stdgo._internal.syscall.Syscall.Sockaddr;
typedef Errno = stdgo._internal.syscall.Syscall.Errno;
typedef Signal = stdgo._internal.syscall.Syscall.Signal;
typedef WaitStatus = stdgo._internal.syscall.Syscall.WaitStatus;
/**
    ParseDirent parses up to max directory entries in buf,
    appending the names to names. It returns the number of
    bytes consumed from buf, the number of entries added
    to names, and the new names slice.
**/
function parseDirent(buf:Array<StdTypes.Int>, max:StdTypes.Int, names:Array<String>):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Array<String>> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        final names = ([for (i in names) i] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.syscall.Syscall.parseDirent(buf, max, names);
            { _0 : obj._0, _1 : obj._1, _2 : [for (i in obj._2) i] };
        };
    }
function unsetenv(key:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.unsetenv(key);
    }
function getenv(key:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.syscall.Syscall.getenv(key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function setenv(key:String, value:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.setenv(key, value);
    }
function clearenv():Void {
        stdgo._internal.syscall.Syscall.clearenv();
    }
function environ():Array<String> {
        return [for (i in stdgo._internal.syscall.Syscall.environ()) i];
    }
function open(path:String, openmode:StdTypes.Int, perm:std.UInt):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.open(path, openmode, perm);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function close(fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.close(fd);
    }
function closeOnExec(fd:StdTypes.Int):Void {
        stdgo._internal.syscall.Syscall.closeOnExec(fd);
    }
function mkdir(path:String, perm:std.UInt):stdgo.Error {
        return stdgo._internal.syscall.Syscall.mkdir(path, perm);
    }
function readDirent(fd:StdTypes.Int, buf:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.readDirent(fd, buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function stat(path:String, st:Stat_t):stdgo.Error {
        return stdgo._internal.syscall.Syscall.stat(path, st);
    }
function lstat(path:String, st:Stat_t):stdgo.Error {
        return stdgo._internal.syscall.Syscall.lstat(path, st);
    }
function fstat(fd:StdTypes.Int, st:Stat_t):stdgo.Error {
        return stdgo._internal.syscall.Syscall.fstat(fd, st);
    }
function unlink(path:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.unlink(path);
    }
function rmdir(path:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.rmdir(path);
    }
function chmod(path:String, mode:std.UInt):stdgo.Error {
        return stdgo._internal.syscall.Syscall.chmod(path, mode);
    }
function fchmod(fd:StdTypes.Int, mode:std.UInt):stdgo.Error {
        return stdgo._internal.syscall.Syscall.fchmod(fd, mode);
    }
function chown(path:String, uid:StdTypes.Int, gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.chown(path, uid, gid);
    }
function fchown(fd:StdTypes.Int, uid:StdTypes.Int, gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.fchown(fd, uid, gid);
    }
function lchown(path:String, uid:StdTypes.Int, gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.lchown(path, uid, gid);
    }
function utimesNano(path:String, ts:Array<Timespec>):stdgo.Error {
        final ts = ([for (i in ts) i] : stdgo.Slice<Timespec>);
        return stdgo._internal.syscall.Syscall.utimesNano(path, ts);
    }
function rename(from:String, to:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.rename(from, to);
    }
function truncate(path:String, _length:haxe.Int64):stdgo.Error {
        return stdgo._internal.syscall.Syscall.truncate(path, _length);
    }
function ftruncate(fd:StdTypes.Int, _length:haxe.Int64):stdgo.Error {
        return stdgo._internal.syscall.Syscall.ftruncate(fd, _length);
    }
function getcwd(buf:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.getcwd(buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function chdir(path:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.chdir(path);
    }
function fchdir(fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.fchdir(fd);
    }
function readlink(path:String, buf:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.readlink(path, buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function link(path:String, link:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.link(path, link);
    }
function symlink(path:String, link:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.symlink(path, link);
    }
function fsync(fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.fsync(fd);
    }
function read(fd:StdTypes.Int, b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.read(fd, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function write(fd:StdTypes.Int, b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.write(fd, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function pread(fd:StdTypes.Int, b:Array<StdTypes.Int>, offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.pread(fd, b, offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function pwrite(fd:StdTypes.Int, b:Array<StdTypes.Int>, offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.pwrite(fd, b, offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function seek(fd:StdTypes.Int, offset:haxe.Int64, whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.seek(fd, offset, whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function dup(fd:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.dup(fd);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function dup2(fd:StdTypes.Int, newfd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.dup2(fd, newfd);
    }
function pipe(fd:Array<StdTypes.Int>):stdgo.Error {
        final fd = ([for (i in fd) i] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.syscall.Syscall.pipe(fd);
    }
function socket(proto:StdTypes.Int, sotype:StdTypes.Int, unused:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.socket(proto, sotype, unused);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function bind(fd:StdTypes.Int, sa:Sockaddr):stdgo.Error {
        return stdgo._internal.syscall.Syscall.bind(fd, sa);
    }
function stopIO(fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.stopIO(fd);
    }
function listen(fd:StdTypes.Int, backlog:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.listen(fd, backlog);
    }
function accept(fd:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, Sockaddr, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.accept(fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
function connect(fd:StdTypes.Int, sa:Sockaddr):stdgo.Error {
        return stdgo._internal.syscall.Syscall.connect(fd, sa);
    }
function recvfrom(fd:StdTypes.Int, p:Array<StdTypes.Int>, flags:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, Sockaddr, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.recvfrom(fd, p, flags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
function sendto(fd:StdTypes.Int, p:Array<StdTypes.Int>, flags:StdTypes.Int, to:Sockaddr):stdgo.Error {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.syscall.Syscall.sendto(fd, p, flags, to);
    }
function recvmsg(fd:StdTypes.Int, p:Array<StdTypes.Int>, oob:Array<StdTypes.Int>, flags:StdTypes.Int):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, Sockaddr, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        final oob = ([for (i in oob) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.recvmsg(fd, p, oob, flags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
function sendmsgN(fd:StdTypes.Int, p:Array<StdTypes.Int>, oob:Array<StdTypes.Int>, to:Sockaddr, flags:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        final oob = ([for (i in oob) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.sendmsgN(fd, p, oob, to, flags);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function getsockoptInt(fd:StdTypes.Int, level:StdTypes.Int, opt:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.getsockoptInt(fd, level, opt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function setsockoptInt(fd:StdTypes.Int, level:StdTypes.Int, opt:StdTypes.Int, value:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.setsockoptInt(fd, level, opt, value);
    }
function setReadDeadline(fd:StdTypes.Int, t:haxe.Int64):stdgo.Error {
        return stdgo._internal.syscall.Syscall.setReadDeadline(fd, t);
    }
function setWriteDeadline(fd:StdTypes.Int, t:haxe.Int64):stdgo.Error {
        return stdgo._internal.syscall.Syscall.setWriteDeadline(fd, t);
    }
function shutdown(fd:StdTypes.Int, how:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.shutdown(fd, how);
    }
function setNonblock(fd:StdTypes.Int, nonblocking:Bool):stdgo.Error {
        return stdgo._internal.syscall.Syscall.setNonblock(fd, nonblocking);
    }
/**
    StringByteSlice converts a string to a NUL-terminated []byte,
    If s contains a NUL byte this function panics instead of
    returning an error.
    
    Deprecated: Use ByteSliceFromString instead.
**/
function stringByteSlice(s:String):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.syscall.Syscall.stringByteSlice(s)) i];
    }
/**
    ByteSliceFromString returns a NUL-terminated slice of bytes
    containing the text of s. If s contains a NUL byte at any
    location, it returns (nil, EINVAL).
**/
function byteSliceFromString(s:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.byteSliceFromString(s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
/**
    StringBytePtr returns a pointer to a NUL-terminated array of bytes.
    If s contains a NUL byte this function panics instead of returning
    an error.
    
    Deprecated: Use BytePtrFromString instead.
**/
function stringBytePtr(s:String):stdgo.Pointer<StdTypes.Int> {
        return stdgo._internal.syscall.Syscall.stringBytePtr(s);
    }
/**
    BytePtrFromString returns a pointer to a NUL-terminated array of
    bytes containing the text of s. If s contains a NUL byte at any
    location, it returns (nil, EINVAL).
**/
function bytePtrFromString(s:String):stdgo.Tuple<stdgo.Pointer<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.bytePtrFromString(s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function getpagesize():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.getpagesize();
    }
function exit(code:StdTypes.Int):Void {
        stdgo._internal.syscall.Syscall.exit(code);
    }
function syscall(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        return {
            final obj = stdgo._internal.syscall.Syscall.syscall(trap, a1, a2, a3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
function syscall6(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr, a4:stdgo.GoUIntptr, a5:stdgo.GoUIntptr, a6:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        return {
            final obj = stdgo._internal.syscall.Syscall.syscall6(trap, a1, a2, a3, a4, a5, a6);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
function rawSyscall(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        return {
            final obj = stdgo._internal.syscall.Syscall.rawSyscall(trap, a1, a2, a3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
function rawSyscall6(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr, a4:stdgo.GoUIntptr, a5:stdgo.GoUIntptr, a6:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        return {
            final obj = stdgo._internal.syscall.Syscall.rawSyscall6(trap, a1, a2, a3, a4, a5, a6);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
function sysctl(key:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.sysctl(key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function getwd():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.getwd();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function getuid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.getuid();
    }
function getgid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.getgid();
    }
function geteuid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.geteuid();
    }
function getegid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.getegid();
    }
function getgroups():stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.getgroups();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
function getpid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.getpid();
    }
function getppid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.getppid();
    }
function umask(mask:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.syscall.Syscall.umask(mask);
    }
function gettimeofday(tv:Timeval):stdgo.Error {
        return stdgo._internal.syscall.Syscall.gettimeofday(tv);
    }
function kill(pid:StdTypes.Int, signum:Signal):stdgo.Error {
        return stdgo._internal.syscall.Syscall.kill(pid, signum);
    }
function sendfile(outfd:StdTypes.Int, infd:StdTypes.Int, offset:stdgo.Pointer<haxe.Int64>, count:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.sendfile(outfd, infd, offset, count);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
function startProcess(argv0:String, argv:Array<String>, attr:ProcAttr):stdgo.Tuple.Tuple3<StdTypes.Int, stdgo.GoUIntptr, stdgo.Error> {
        final argv = ([for (i in argv) i] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.syscall.Syscall.startProcess(argv0, argv, attr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
function wait4(pid:StdTypes.Int, wstatus:stdgo.Pointer<WaitStatus>, options:StdTypes.Int, rusage:Rusage):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.wait4(pid, wstatus, options, rusage);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    TimespecToNsec returns the time stored in ts as nanoseconds.
**/
function timespecToNsec(ts:Timespec):haxe.Int64 {
        return stdgo._internal.syscall.Syscall.timespecToNsec(ts);
    }
/**
    NsecToTimespec converts a number of nanoseconds into a Timespec.
**/
function nsecToTimespec(nsec:haxe.Int64):Timespec {
        return stdgo._internal.syscall.Syscall.nsecToTimespec(nsec);
    }
/**
    TimevalToNsec returns the time stored in tv as nanoseconds.
**/
function timevalToNsec(tv:Timeval):haxe.Int64 {
        return stdgo._internal.syscall.Syscall.timevalToNsec(tv);
    }
/**
    NsecToTimeval converts a number of nanoseconds into a Timeval.
**/
function nsecToTimeval(nsec:haxe.Int64):Timeval {
        return stdgo._internal.syscall.Syscall.nsecToTimeval(nsec);
    }
@:forward @:forward.new abstract Timespec_asInterface(stdgo._internal.syscall.Syscall.Timespec_asInterface) from stdgo._internal.syscall.Syscall.Timespec_asInterface to stdgo._internal.syscall.Syscall.Timespec_asInterface {

}
@:forward @:forward.new abstract Timespec_static_extension(stdgo._internal.syscall.Syscall.Timespec_static_extension) from stdgo._internal.syscall.Syscall.Timespec_static_extension to stdgo._internal.syscall.Syscall.Timespec_static_extension {

}
@:forward @:forward.new abstract Timeval_asInterface(stdgo._internal.syscall.Syscall.Timeval_asInterface) from stdgo._internal.syscall.Syscall.Timeval_asInterface to stdgo._internal.syscall.Syscall.Timeval_asInterface {

}
@:forward @:forward.new abstract Timeval_static_extension(stdgo._internal.syscall.Syscall.Timeval_static_extension) from stdgo._internal.syscall.Syscall.Timeval_static_extension to stdgo._internal.syscall.Syscall.Timeval_static_extension {

}
@:forward @:forward.new abstract Errno_asInterface(stdgo._internal.syscall.Syscall.Errno_asInterface) from stdgo._internal.syscall.Syscall.Errno_asInterface to stdgo._internal.syscall.Syscall.Errno_asInterface {

}
@:forward @:forward.new abstract Errno_static_extension(stdgo._internal.syscall.Syscall.Errno_static_extension) from stdgo._internal.syscall.Syscall.Errno_static_extension to stdgo._internal.syscall.Syscall.Errno_static_extension {

}
@:forward @:forward.new abstract Signal_asInterface(stdgo._internal.syscall.Syscall.Signal_asInterface) from stdgo._internal.syscall.Syscall.Signal_asInterface to stdgo._internal.syscall.Syscall.Signal_asInterface {

}
@:forward @:forward.new abstract Signal_static_extension(stdgo._internal.syscall.Syscall.Signal_static_extension) from stdgo._internal.syscall.Syscall.Signal_static_extension to stdgo._internal.syscall.Syscall.Signal_static_extension {

}
@:forward @:forward.new abstract WaitStatus_asInterface(stdgo._internal.syscall.Syscall.WaitStatus_asInterface) from stdgo._internal.syscall.Syscall.WaitStatus_asInterface to stdgo._internal.syscall.Syscall.WaitStatus_asInterface {

}
@:forward @:forward.new abstract WaitStatus_static_extension(stdgo._internal.syscall.Syscall.WaitStatus_static_extension) from stdgo._internal.syscall.Syscall.WaitStatus_static_extension to stdgo._internal.syscall.Syscall.WaitStatus_static_extension {

}
