package stdgo.syscall;
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
function get_forkLock():stdgo._internal.sync.Sync.RWMutex return stdgo._internal.syscall.Syscall.forkLock;
function set_forkLock(v:stdgo._internal.sync.Sync.RWMutex):stdgo._internal.sync.Sync.RWMutex return stdgo._internal.syscall.Syscall.forkLock = v;
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
typedef RawConn = stdgo._internal.syscall.Syscall.RawConn;
typedef Conn = stdgo._internal.syscall.Syscall.Conn;
@:invalid typedef T_jsFile = Dynamic;
@:invalid typedef SockaddrInet4 = Dynamic;
@:invalid typedef SockaddrInet6 = Dynamic;
@:invalid typedef SockaddrUnix = Dynamic;
@:invalid typedef Dirent = Dynamic;
@:invalid typedef Stat_t = Dynamic;
@:invalid typedef Rusage = Dynamic;
@:invalid typedef ProcAttr = Dynamic;
@:invalid typedef SysProcAttr = Dynamic;
@:invalid typedef Iovec = Dynamic;
@:invalid typedef Timespec = Dynamic;
@:invalid typedef Timeval = Dynamic;
typedef Sockaddr = stdgo._internal.syscall.Syscall.Sockaddr;
typedef Errno = stdgo._internal.syscall.Syscall.Errno;
typedef Signal = stdgo._internal.syscall.Syscall.Signal;
typedef WaitStatus = stdgo._internal.syscall.Syscall.WaitStatus;
/**
    // ParseDirent parses up to max directory entries in buf,
    // appending the names to names. It returns the number of
    // bytes consumed from buf, the number of entries added
    // to names, and the new names slice.
**/
inline function parseDirent(buf:Array<Int>, max:Int, names:Array<String>):stdgo.Tuple.Tuple3<Int, Int, Array<String>> throw "not implemented";
inline function unsetenv(key:String):stdgo.Error throw "not implemented";
inline function getenv(key:String):stdgo.Tuple<String, Bool> throw "not implemented";
inline function setenv(key:String, value:String):stdgo.Error throw "not implemented";
inline function clearenv():Void throw "not implemented";
inline function environ():Array<String> throw "not implemented";
inline function open(path:String, openmode:Int, perm:UInt):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
inline function close(fd:Int):stdgo.Error throw "not implemented";
inline function closeOnExec(fd:Int):Void throw "not implemented";
inline function mkdir(path:String, perm:UInt):stdgo.Error throw "not implemented";
inline function readDirent(fd:Int, buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
inline function stat(path:String, st:Stat_t):stdgo.Error throw "not implemented";
inline function lstat(path:String, st:Stat_t):stdgo.Error throw "not implemented";
inline function fstat(fd:Int, st:Stat_t):stdgo.Error throw "not implemented";
inline function unlink(path:String):stdgo.Error throw "not implemented";
inline function rmdir(path:String):stdgo.Error throw "not implemented";
inline function chmod(path:String, mode:UInt):stdgo.Error throw "not implemented";
inline function fchmod(fd:Int, mode:UInt):stdgo.Error throw "not implemented";
inline function chown(path:String, uid:Int, gid:Int):stdgo.Error throw "not implemented";
inline function fchown(fd:Int, uid:Int, gid:Int):stdgo.Error throw "not implemented";
inline function lchown(path:String, uid:Int, gid:Int):stdgo.Error throw "not implemented";
inline function utimesNano(path:String, ts:Array<Timespec>):stdgo.Error throw "not implemented";
inline function rename(from:String, to:String):stdgo.Error throw "not implemented";
inline function truncate(path:String, _length:haxe.Int64):stdgo.Error throw "not implemented";
inline function ftruncate(fd:Int, _length:haxe.Int64):stdgo.Error throw "not implemented";
inline function getcwd(buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
inline function chdir(path:String):stdgo.Error throw "not implemented";
inline function fchdir(fd:Int):stdgo.Error throw "not implemented";
inline function readlink(path:String, buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
inline function link(path:String, link:String):stdgo.Error throw "not implemented";
inline function symlink(path:String, link:String):stdgo.Error throw "not implemented";
inline function fsync(fd:Int):stdgo.Error throw "not implemented";
inline function read(fd:Int, b:Array<Int>):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
inline function write(fd:Int, b:Array<Int>):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
inline function pread(fd:Int, b:Array<Int>, offset:haxe.Int64):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
inline function pwrite(fd:Int, b:Array<Int>, offset:haxe.Int64):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
inline function seek(fd:Int, offset:haxe.Int64, whence:Int):stdgo.Tuple<haxe.Int64, stdgo.Error> throw "not implemented";
inline function dup(fd:Int):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
inline function dup2(fd:Int, newfd:Int):stdgo.Error throw "not implemented";
inline function pipe(fd:Array<Int>):stdgo.Error throw "not implemented";
inline function socket(proto:Int, sotype:Int, unused:Int):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
inline function bind(fd:Int, sa:Sockaddr):stdgo.Error throw "not implemented";
inline function stopIO(fd:Int):stdgo.Error throw "not implemented";
inline function listen(fd:Int, backlog:Int):stdgo.Error throw "not implemented";
inline function accept(fd:Int):stdgo.Tuple.Tuple3<Int, Sockaddr, stdgo.Error> throw "not implemented";
inline function connect(fd:Int, sa:Sockaddr):stdgo.Error throw "not implemented";
inline function recvfrom(fd:Int, p:Array<Int>, flags:Int):stdgo.Tuple.Tuple3<Int, Sockaddr, stdgo.Error> throw "not implemented";
inline function sendto(fd:Int, p:Array<Int>, flags:Int, to:Sockaddr):stdgo.Error throw "not implemented";
inline function recvmsg(fd:Int, p:Array<Int>, oob:Array<Int>, flags:Int):stdgo.Tuple.Tuple5<Int, Int, Int, Sockaddr, stdgo.Error> throw "not implemented";
inline function sendmsgN(fd:Int, p:Array<Int>, oob:Array<Int>, to:Sockaddr, flags:Int):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
inline function getsockoptInt(fd:Int, level:Int, opt:Int):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
inline function setsockoptInt(fd:Int, level:Int, opt:Int, value:Int):stdgo.Error throw "not implemented";
inline function setReadDeadline(fd:Int, t:haxe.Int64):stdgo.Error throw "not implemented";
inline function setWriteDeadline(fd:Int, t:haxe.Int64):stdgo.Error throw "not implemented";
inline function shutdown(fd:Int, how:Int):stdgo.Error throw "not implemented";
inline function setNonblock(fd:Int, nonblocking:Bool):stdgo.Error throw "not implemented";
/**
    // StringByteSlice converts a string to a NUL-terminated []byte,
    // If s contains a NUL byte this function panics instead of
    // returning an error.
    //
    // Deprecated: Use ByteSliceFromString instead.
**/
inline function stringByteSlice(s:String):Array<Int> throw "not implemented";
/**
    // ByteSliceFromString returns a NUL-terminated slice of bytes
    // containing the text of s. If s contains a NUL byte at any
    // location, it returns (nil, EINVAL).
**/
inline function byteSliceFromString(s:String):stdgo.Tuple<Array<Int>, stdgo.Error> throw "not implemented";
/**
    // StringBytePtr returns a pointer to a NUL-terminated array of bytes.
    // If s contains a NUL byte this function panics instead of returning
    // an error.
    //
    // Deprecated: Use BytePtrFromString instead.
**/
inline function stringBytePtr(s:String):stdgo.Pointer<Int> throw "not implemented";
/**
    // BytePtrFromString returns a pointer to a NUL-terminated array of
    // bytes containing the text of s. If s contains a NUL byte at any
    // location, it returns (nil, EINVAL).
**/
inline function bytePtrFromString(s:String):stdgo.Tuple<stdgo.Pointer<Int>, stdgo.Error> throw "not implemented";
inline function getpagesize():Int throw "not implemented";
inline function exit(code:Int):Void throw "not implemented";
inline function syscall(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> throw "not implemented";
inline function syscall6(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr, a4:stdgo.GoUIntptr, a5:stdgo.GoUIntptr, a6:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> throw "not implemented";
inline function rawSyscall(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> throw "not implemented";
inline function rawSyscall6(trap:stdgo.GoUIntptr, a1:stdgo.GoUIntptr, a2:stdgo.GoUIntptr, a3:stdgo.GoUIntptr, a4:stdgo.GoUIntptr, a5:stdgo.GoUIntptr, a6:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> throw "not implemented";
inline function sysctl(key:String):stdgo.Tuple<String, stdgo.Error> throw "not implemented";
inline function getwd():stdgo.Tuple<String, stdgo.Error> throw "not implemented";
inline function getuid():Int throw "not implemented";
inline function getgid():Int throw "not implemented";
inline function geteuid():Int throw "not implemented";
inline function getegid():Int throw "not implemented";
inline function getgroups():stdgo.Tuple<Array<Int>, stdgo.Error> throw "not implemented";
inline function getpid():Int throw "not implemented";
inline function getppid():Int throw "not implemented";
inline function umask(mask:Int):Int throw "not implemented";
inline function gettimeofday(tv:Timeval):stdgo.Error throw "not implemented";
inline function kill(pid:Int, signum:Signal):stdgo.Error throw "not implemented";
inline function sendfile(outfd:Int, infd:Int, offset:stdgo.Pointer<haxe.Int64>, count:Int):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
inline function startProcess(argv0:String, argv:Array<String>, attr:ProcAttr):stdgo.Tuple.Tuple3<Int, stdgo.GoUIntptr, stdgo.Error> throw "not implemented";
inline function wait4(pid:Int, wstatus:stdgo.Pointer<WaitStatus>, options:Int, rusage:Rusage):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
/**
    // TimespecToNsec returns the time stored in ts as nanoseconds.
**/
inline function timespecToNsec(ts:Timespec):haxe.Int64 throw "not implemented";
/**
    // NsecToTimespec converts a number of nanoseconds into a Timespec.
**/
inline function nsecToTimespec(nsec:haxe.Int64):Timespec throw "not implemented";
/**
    // TimevalToNsec returns the time stored in tv as nanoseconds.
**/
inline function timevalToNsec(tv:Timeval):haxe.Int64 throw "not implemented";
/**
    // NsecToTimeval converts a number of nanoseconds into a Timeval.
**/
inline function nsecToTimeval(nsec:haxe.Int64):Timeval throw "not implemented";
@:invalid typedef Timespec_asInterface = Dynamic;
@:invalid typedef Timespec_static_extension = Dynamic;
@:invalid typedef Timeval_asInterface = Dynamic;
@:invalid typedef Timeval_static_extension = Dynamic;
@:invalid typedef Errno_asInterface = Dynamic;
@:invalid typedef Errno_static_extension = Dynamic;
@:invalid typedef Signal_asInterface = Dynamic;
@:invalid typedef Signal_static_extension = Dynamic;
@:invalid typedef WaitStatus_asInterface = Dynamic;
@:invalid typedef WaitStatus_static_extension = Dynamic;
