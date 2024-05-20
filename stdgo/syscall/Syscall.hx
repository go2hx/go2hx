package stdgo.syscall;
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
private function set_forkLock(v:stdgo._internal.sync.Sync.RWMutex):stdgo._internal.sync.Sync.RWMutex {
        stdgo._internal.syscall.Syscall.forkLock = v;
        return v;
    }
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
class RawConn_static_extension {
    static public function write(t:RawConn, _f:(_fd:stdgo.GoUIntptr) -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall.RawConn_static_extension.write(t, _f);
    }
    static public function read(t:RawConn, _f:(_fd:stdgo.GoUIntptr) -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall.RawConn_static_extension.read(t, _f);
    }
    static public function control(t:RawConn, _f:(_fd:stdgo.GoUIntptr) -> Void):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall.RawConn_static_extension.control(t, _f);
    }
}
typedef RawConn = stdgo._internal.syscall.Syscall.RawConn;
class Conn_static_extension {
    static public function syscallConn(t:Conn):stdgo.Tuple<RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.Conn_static_extension.syscallConn(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Conn = stdgo._internal.syscall.Syscall.Conn;
@:structInit @:private abstract T_jsFile(stdgo._internal.syscall.Syscall.T_jsFile) from stdgo._internal.syscall.Syscall.T_jsFile to stdgo._internal.syscall.Syscall.T_jsFile {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = v;
        return v;
    }
    public var _entries(get, set) : Array<String>;
    function get__entries():Array<String> return [for (i in this._entries) i];
    function set__entries(v:Array<String>):Array<String> {
        this._entries = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _dirIdx(get, set) : StdTypes.Int;
    function get__dirIdx():StdTypes.Int return this._dirIdx;
    function set__dirIdx(v:StdTypes.Int):StdTypes.Int {
        this._dirIdx = v;
        return v;
    }
    public var _pos(get, set) : haxe.Int64;
    function get__pos():haxe.Int64 return this._pos;
    function set__pos(v:haxe.Int64):haxe.Int64 {
        this._pos = v;
        return v;
    }
    public var _seeked(get, set) : Bool;
    function get__seeked():Bool return this._seeked;
    function set__seeked(v:Bool):Bool {
        this._seeked = v;
        return v;
    }
    public function new(?_path:String, ?_entries:Array<String>, ?_dirIdx:StdTypes.Int, ?_pos:haxe.Int64, ?_seeked:Bool) this = new stdgo._internal.syscall.Syscall.T_jsFile(_path, ([for (i in _entries) i] : stdgo.Slice<stdgo.GoString>), _dirIdx, _pos, _seeked);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SockaddrInet4(stdgo._internal.syscall.Syscall.SockaddrInet4) from stdgo._internal.syscall.Syscall.SockaddrInet4 to stdgo._internal.syscall.Syscall.SockaddrInet4 {
    public var port(get, set) : StdTypes.Int;
    function get_port():StdTypes.Int return this.port;
    function set_port(v:StdTypes.Int):StdTypes.Int {
        this.port = v;
        return v;
    }
    public var addr(get, set) : haxe.ds.Vector<std.UInt>;
    function get_addr():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.addr) i]);
    function set_addr(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.addr = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?port:StdTypes.Int, ?addr:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall.SockaddrInet4(port, ([for (i in addr) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SockaddrInet6(stdgo._internal.syscall.Syscall.SockaddrInet6) from stdgo._internal.syscall.Syscall.SockaddrInet6 to stdgo._internal.syscall.Syscall.SockaddrInet6 {
    public var port(get, set) : StdTypes.Int;
    function get_port():StdTypes.Int return this.port;
    function set_port(v:StdTypes.Int):StdTypes.Int {
        this.port = v;
        return v;
    }
    public var zoneId(get, set) : std.UInt;
    function get_zoneId():std.UInt return this.zoneId;
    function set_zoneId(v:std.UInt):std.UInt {
        this.zoneId = v;
        return v;
    }
    public var addr(get, set) : haxe.ds.Vector<std.UInt>;
    function get_addr():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.addr) i]);
    function set_addr(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.addr = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?port:StdTypes.Int, ?zoneId:std.UInt, ?addr:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall.SockaddrInet6(port, zoneId, ([for (i in addr) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SockaddrUnix(stdgo._internal.syscall.Syscall.SockaddrUnix) from stdgo._internal.syscall.Syscall.SockaddrUnix to stdgo._internal.syscall.Syscall.SockaddrUnix {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public function new(?name:String) this = new stdgo._internal.syscall.Syscall.SockaddrUnix(name);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Dirent(stdgo._internal.syscall.Syscall.Dirent) from stdgo._internal.syscall.Syscall.Dirent to stdgo._internal.syscall.Syscall.Dirent {
    public var reclen(get, set) : std.UInt;
    function get_reclen():std.UInt return this.reclen;
    function set_reclen(v:std.UInt):std.UInt {
        this.reclen = v;
        return v;
    }
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?reclen:std.UInt, ?name:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall.Dirent(reclen, ([for (i in name) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Stat_t(stdgo._internal.syscall.Syscall.Stat_t) from stdgo._internal.syscall.Syscall.Stat_t to stdgo._internal.syscall.Syscall.Stat_t {
    public var dev(get, set) : haxe.Int64;
    function get_dev():haxe.Int64 return this.dev;
    function set_dev(v:haxe.Int64):haxe.Int64 {
        this.dev = v;
        return v;
    }
    public var ino(get, set) : haxe.UInt64;
    function get_ino():haxe.UInt64 return this.ino;
    function set_ino(v:haxe.UInt64):haxe.UInt64 {
        this.ino = v;
        return v;
    }
    public var mode(get, set) : std.UInt;
    function get_mode():std.UInt return this.mode;
    function set_mode(v:std.UInt):std.UInt {
        this.mode = v;
        return v;
    }
    public var nlink(get, set) : std.UInt;
    function get_nlink():std.UInt return this.nlink;
    function set_nlink(v:std.UInt):std.UInt {
        this.nlink = v;
        return v;
    }
    public var uid(get, set) : std.UInt;
    function get_uid():std.UInt return this.uid;
    function set_uid(v:std.UInt):std.UInt {
        this.uid = v;
        return v;
    }
    public var gid(get, set) : std.UInt;
    function get_gid():std.UInt return this.gid;
    function set_gid(v:std.UInt):std.UInt {
        this.gid = v;
        return v;
    }
    public var rdev(get, set) : haxe.Int64;
    function get_rdev():haxe.Int64 return this.rdev;
    function set_rdev(v:haxe.Int64):haxe.Int64 {
        this.rdev = v;
        return v;
    }
    public var size(get, set) : haxe.Int64;
    function get_size():haxe.Int64 return this.size;
    function set_size(v:haxe.Int64):haxe.Int64 {
        this.size = v;
        return v;
    }
    public var blksize(get, set) : StdTypes.Int;
    function get_blksize():StdTypes.Int return this.blksize;
    function set_blksize(v:StdTypes.Int):StdTypes.Int {
        this.blksize = v;
        return v;
    }
    public var blocks(get, set) : StdTypes.Int;
    function get_blocks():StdTypes.Int return this.blocks;
    function set_blocks(v:StdTypes.Int):StdTypes.Int {
        this.blocks = v;
        return v;
    }
    public var atime(get, set) : haxe.Int64;
    function get_atime():haxe.Int64 return this.atime;
    function set_atime(v:haxe.Int64):haxe.Int64 {
        this.atime = v;
        return v;
    }
    public var atimeNsec(get, set) : haxe.Int64;
    function get_atimeNsec():haxe.Int64 return this.atimeNsec;
    function set_atimeNsec(v:haxe.Int64):haxe.Int64 {
        this.atimeNsec = v;
        return v;
    }
    public var mtime(get, set) : haxe.Int64;
    function get_mtime():haxe.Int64 return this.mtime;
    function set_mtime(v:haxe.Int64):haxe.Int64 {
        this.mtime = v;
        return v;
    }
    public var mtimeNsec(get, set) : haxe.Int64;
    function get_mtimeNsec():haxe.Int64 return this.mtimeNsec;
    function set_mtimeNsec(v:haxe.Int64):haxe.Int64 {
        this.mtimeNsec = v;
        return v;
    }
    public var ctime(get, set) : haxe.Int64;
    function get_ctime():haxe.Int64 return this.ctime;
    function set_ctime(v:haxe.Int64):haxe.Int64 {
        this.ctime = v;
        return v;
    }
    public var ctimeNsec(get, set) : haxe.Int64;
    function get_ctimeNsec():haxe.Int64 return this.ctimeNsec;
    function set_ctimeNsec(v:haxe.Int64):haxe.Int64 {
        this.ctimeNsec = v;
        return v;
    }
    public function new(?dev:haxe.Int64, ?ino:haxe.UInt64, ?mode:std.UInt, ?nlink:std.UInt, ?uid:std.UInt, ?gid:std.UInt, ?rdev:haxe.Int64, ?size:haxe.Int64, ?blksize:StdTypes.Int, ?blocks:StdTypes.Int, ?atime:haxe.Int64, ?atimeNsec:haxe.Int64, ?mtime:haxe.Int64, ?mtimeNsec:haxe.Int64, ?ctime:haxe.Int64, ?ctimeNsec:haxe.Int64) this = new stdgo._internal.syscall.Syscall.Stat_t(
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
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Rusage(stdgo._internal.syscall.Syscall.Rusage) from stdgo._internal.syscall.Syscall.Rusage to stdgo._internal.syscall.Syscall.Rusage {
    public var utime(get, set) : stdgo._internal.syscall.Syscall.Timeval;
    function get_utime():stdgo._internal.syscall.Syscall.Timeval return this.utime;
    function set_utime(v:stdgo._internal.syscall.Syscall.Timeval):stdgo._internal.syscall.Syscall.Timeval {
        this.utime = v;
        return v;
    }
    public var stime(get, set) : stdgo._internal.syscall.Syscall.Timeval;
    function get_stime():stdgo._internal.syscall.Syscall.Timeval return this.stime;
    function set_stime(v:stdgo._internal.syscall.Syscall.Timeval):stdgo._internal.syscall.Syscall.Timeval {
        this.stime = v;
        return v;
    }
    public function new(?utime:stdgo._internal.syscall.Syscall.Timeval, ?stime:stdgo._internal.syscall.Syscall.Timeval) this = new stdgo._internal.syscall.Syscall.Rusage(utime, stime);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract ProcAttr(stdgo._internal.syscall.Syscall.ProcAttr) from stdgo._internal.syscall.Syscall.ProcAttr to stdgo._internal.syscall.Syscall.ProcAttr {
    public var dir(get, set) : String;
    function get_dir():String return this.dir;
    function set_dir(v:String):String {
        this.dir = v;
        return v;
    }
    public var env(get, set) : Array<String>;
    function get_env():Array<String> return [for (i in this.env) i];
    function set_env(v:Array<String>):Array<String> {
        this.env = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var files(get, set) : Array<stdgo.GoUIntptr>;
    function get_files():Array<stdgo.GoUIntptr> return [for (i in this.files) i];
    function set_files(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this.files = ([for (i in v) i] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var sys(get, set) : stdgo._internal.syscall.Syscall.SysProcAttr;
    function get_sys():stdgo._internal.syscall.Syscall.SysProcAttr return this.sys;
    function set_sys(v:stdgo._internal.syscall.Syscall.SysProcAttr):stdgo._internal.syscall.Syscall.SysProcAttr {
        this.sys = v;
        return v;
    }
    public function new(?dir:String, ?env:Array<String>, ?files:Array<stdgo.GoUIntptr>, ?sys:stdgo._internal.syscall.Syscall.SysProcAttr) this = new stdgo._internal.syscall.Syscall.ProcAttr(dir, ([for (i in env) i] : stdgo.Slice<stdgo.GoString>), ([for (i in files) i] : stdgo.Slice<stdgo.GoUIntptr>), sys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SysProcAttr(stdgo._internal.syscall.Syscall.SysProcAttr) from stdgo._internal.syscall.Syscall.SysProcAttr to stdgo._internal.syscall.Syscall.SysProcAttr {
    public function new() this = new stdgo._internal.syscall.Syscall.SysProcAttr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Iovec(stdgo._internal.syscall.Syscall.Iovec) from stdgo._internal.syscall.Syscall.Iovec to stdgo._internal.syscall.Syscall.Iovec {
    public function new() this = new stdgo._internal.syscall.Syscall.Iovec();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Timespec_static_extension) abstract Timespec(stdgo._internal.syscall.Syscall.Timespec) from stdgo._internal.syscall.Syscall.Timespec to stdgo._internal.syscall.Syscall.Timespec {
    public var sec(get, set) : haxe.Int64;
    function get_sec():haxe.Int64 return this.sec;
    function set_sec(v:haxe.Int64):haxe.Int64 {
        this.sec = v;
        return v;
    }
    public var nsec(get, set) : haxe.Int64;
    function get_nsec():haxe.Int64 return this.nsec;
    function set_nsec(v:haxe.Int64):haxe.Int64 {
        this.nsec = v;
        return v;
    }
    public function new(?sec:haxe.Int64, ?nsec:haxe.Int64) this = new stdgo._internal.syscall.Syscall.Timespec(sec, nsec);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Timeval_static_extension) abstract Timeval(stdgo._internal.syscall.Syscall.Timeval) from stdgo._internal.syscall.Syscall.Timeval to stdgo._internal.syscall.Syscall.Timeval {
    public var sec(get, set) : haxe.Int64;
    function get_sec():haxe.Int64 return this.sec;
    function set_sec(v:haxe.Int64):haxe.Int64 {
        this.sec = v;
        return v;
    }
    public var usec(get, set) : haxe.Int64;
    function get_usec():haxe.Int64 return this.usec;
    function set_usec(v:haxe.Int64):haxe.Int64 {
        this.usec = v;
        return v;
    }
    public function new(?sec:haxe.Int64, ?usec:haxe.Int64) this = new stdgo._internal.syscall.Syscall.Timeval(sec, usec);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Sockaddr = stdgo._internal.syscall.Syscall.Sockaddr;
typedef Errno = stdgo._internal.syscall.Syscall.Errno;
typedef Signal = stdgo._internal.syscall.Syscall.Signal;
typedef WaitStatus = stdgo._internal.syscall.Syscall.WaitStatus;
class Timespec_static_extension {
    static public function nano(_ts:Timespec):haxe.Int64 {
        return stdgo._internal.syscall.Syscall.Timespec_static_extension.nano(_ts);
    }
    static public function unix(_ts:Timespec):stdgo.Tuple<haxe.Int64, haxe.Int64> {
        return {
            final obj = stdgo._internal.syscall.Syscall.Timespec_static_extension.unix(_ts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Timeval_static_extension {
    static public function nano(_tv:Timeval):haxe.Int64 {
        return stdgo._internal.syscall.Syscall.Timeval_static_extension.nano(_tv);
    }
    static public function unix(_tv:Timeval):stdgo.Tuple<haxe.Int64, haxe.Int64> {
        return {
            final obj = stdgo._internal.syscall.Syscall.Timeval_static_extension.unix(_tv);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Errno_static_extension {
    static public function timeout(_e:Errno):Bool {
        return stdgo._internal.syscall.Syscall.Errno_static_extension.timeout(_e);
    }
    static public function temporary(_e:Errno):Bool {
        return stdgo._internal.syscall.Syscall.Errno_static_extension.temporary(_e);
    }
    static public function is_(_e:Errno, _target:stdgo.Error):Bool {
        return stdgo._internal.syscall.Syscall.Errno_static_extension.is_(_e, _target);
    }
    static public function error(_e:Errno):String {
        return stdgo._internal.syscall.Syscall.Errno_static_extension.error(_e);
    }
}
class Signal_static_extension {
    static public function string(_s:Signal):String {
        return stdgo._internal.syscall.Syscall.Signal_static_extension.string(_s);
    }
    static public function signal(_s:Signal):Void {
        stdgo._internal.syscall.Syscall.Signal_static_extension.signal(_s);
    }
}
class WaitStatus_static_extension {
    static public function trapCause(_w:WaitStatus):StdTypes.Int {
        return stdgo._internal.syscall.Syscall.WaitStatus_static_extension.trapCause(_w);
    }
    static public function stopSignal(_w:WaitStatus):Signal {
        return stdgo._internal.syscall.Syscall.WaitStatus_static_extension.stopSignal(_w);
    }
    static public function continued(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall.WaitStatus_static_extension.continued(_w);
    }
    static public function stopped(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall.WaitStatus_static_extension.stopped(_w);
    }
    static public function coreDump(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall.WaitStatus_static_extension.coreDump(_w);
    }
    static public function signal(_w:WaitStatus):Signal {
        return stdgo._internal.syscall.Syscall.WaitStatus_static_extension.signal(_w);
    }
    static public function signaled(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall.WaitStatus_static_extension.signaled(_w);
    }
    static public function exitStatus(_w:WaitStatus):StdTypes.Int {
        return stdgo._internal.syscall.Syscall.WaitStatus_static_extension.exitStatus(_w);
    }
    static public function exited(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall.WaitStatus_static_extension.exited(_w);
    }
}
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
class Syscall {
    /**
        ParseDirent parses up to max directory entries in buf,
        appending the names to names. It returns the number of
        bytes consumed from buf, the number of entries added
        to names, and the new names slice.
    **/
    static public function parseDirent(_buf:Array<StdTypes.Int>, _max:StdTypes.Int, _names:Array<String>):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Array<String>> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        final _names = ([for (i in _names) i] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.syscall.Syscall.parseDirent(_buf, _max, _names);
            { _0 : obj._0, _1 : obj._1, _2 : [for (i in obj._2) i] };
        };
    }
    static public function unsetenv(_key:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.unsetenv(_key);
    }
    static public function getenv(_key:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.syscall.Syscall.getenv(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setenv(_key:String, _value:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.setenv(_key, _value);
    }
    static public function clearenv():Void {
        stdgo._internal.syscall.Syscall.clearenv();
    }
    static public function environ():Array<String> {
        return [for (i in stdgo._internal.syscall.Syscall.environ()) i];
    }
    static public function open(_path:String, _openmode:StdTypes.Int, _perm:std.UInt):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.open(_path, _openmode, _perm);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.close(_fd);
    }
    static public function closeOnExec(_fd:StdTypes.Int):Void {
        stdgo._internal.syscall.Syscall.closeOnExec(_fd);
    }
    static public function mkdir(_path:String, _perm:std.UInt):stdgo.Error {
        return stdgo._internal.syscall.Syscall.mkdir(_path, _perm);
    }
    static public function readDirent(_fd:StdTypes.Int, _buf:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.readDirent(_fd, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_path:String, _st:Stat_t):stdgo.Error {
        return stdgo._internal.syscall.Syscall.stat(_path, _st);
    }
    static public function lstat(_path:String, _st:Stat_t):stdgo.Error {
        return stdgo._internal.syscall.Syscall.lstat(_path, _st);
    }
    static public function fstat(_fd:StdTypes.Int, _st:Stat_t):stdgo.Error {
        return stdgo._internal.syscall.Syscall.fstat(_fd, _st);
    }
    static public function unlink(_path:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.unlink(_path);
    }
    static public function rmdir(_path:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.rmdir(_path);
    }
    static public function chmod(_path:String, _mode:std.UInt):stdgo.Error {
        return stdgo._internal.syscall.Syscall.chmod(_path, _mode);
    }
    static public function fchmod(_fd:StdTypes.Int, _mode:std.UInt):stdgo.Error {
        return stdgo._internal.syscall.Syscall.fchmod(_fd, _mode);
    }
    static public function chown(_path:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.chown(_path, _uid, _gid);
    }
    static public function fchown(_fd:StdTypes.Int, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.fchown(_fd, _uid, _gid);
    }
    static public function lchown(_path:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.lchown(_path, _uid, _gid);
    }
    static public function utimesNano(_path:String, _ts:Array<Timespec>):stdgo.Error {
        final _ts = ([for (i in _ts) i] : stdgo.Slice<Timespec>);
        return stdgo._internal.syscall.Syscall.utimesNano(_path, _ts);
    }
    static public function rename(_from:String, _to:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.rename(_from, _to);
    }
    static public function truncate(_path:String, _length:haxe.Int64):stdgo.Error {
        return stdgo._internal.syscall.Syscall.truncate(_path, _length);
    }
    static public function ftruncate(_fd:StdTypes.Int, _length:haxe.Int64):stdgo.Error {
        return stdgo._internal.syscall.Syscall.ftruncate(_fd, _length);
    }
    static public function getcwd(_buf:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.getcwd(_buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function chdir(_path:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.chdir(_path);
    }
    static public function fchdir(_fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.fchdir(_fd);
    }
    static public function readlink(_path:String, _buf:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.readlink(_path, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function link(_path:String, _link:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.link(_path, _link);
    }
    static public function symlink(_path:String, _link:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall.symlink(_path, _link);
    }
    static public function fsync(_fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.fsync(_fd);
    }
    static public function read(_fd:StdTypes.Int, _b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.read(_fd, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_fd:StdTypes.Int, _b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.write(_fd, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pread(_fd:StdTypes.Int, _b:Array<StdTypes.Int>, _offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.pread(_fd, _b, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pwrite(_fd:StdTypes.Int, _b:Array<StdTypes.Int>, _offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.pwrite(_fd, _b, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_fd:StdTypes.Int, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.seek(_fd, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dup(_fd:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.dup(_fd);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dup2(_fd:StdTypes.Int, _newfd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.dup2(_fd, _newfd);
    }
    static public function pipe(_fd:Array<StdTypes.Int>):stdgo.Error {
        final _fd = ([for (i in _fd) i] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.syscall.Syscall.pipe(_fd);
    }
    static public function socket(_proto:StdTypes.Int, _sotype:StdTypes.Int, _unused:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.socket(_proto, _sotype, _unused);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function bind(_fd:StdTypes.Int, _sa:Sockaddr):stdgo.Error {
        return stdgo._internal.syscall.Syscall.bind(_fd, _sa);
    }
    static public function stopIO(_fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.stopIO(_fd);
    }
    static public function listen(_fd:StdTypes.Int, _backlog:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.listen(_fd, _backlog);
    }
    static public function accept(_fd:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, Sockaddr, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.accept(_fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function connect(_fd:StdTypes.Int, _sa:Sockaddr):stdgo.Error {
        return stdgo._internal.syscall.Syscall.connect(_fd, _sa);
    }
    static public function recvfrom(_fd:StdTypes.Int, _p:Array<StdTypes.Int>, _flags:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, Sockaddr, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.recvfrom(_fd, _p, _flags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function sendto(_fd:StdTypes.Int, _p:Array<StdTypes.Int>, _flags:StdTypes.Int, _to:Sockaddr):stdgo.Error {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.syscall.Syscall.sendto(_fd, _p, _flags, _to);
    }
    static public function recvmsg(_fd:StdTypes.Int, _p:Array<StdTypes.Int>, _oob:Array<StdTypes.Int>, _flags:StdTypes.Int):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, Sockaddr, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.recvmsg(_fd, _p, _oob, _flags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function sendmsgN(_fd:StdTypes.Int, _p:Array<StdTypes.Int>, _oob:Array<StdTypes.Int>, _to:Sockaddr, _flags:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.syscall.Syscall.sendmsgN(_fd, _p, _oob, _to, _flags);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function getsockoptInt(_fd:StdTypes.Int, _level:StdTypes.Int, _opt:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.getsockoptInt(_fd, _level, _opt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setsockoptInt(_fd:StdTypes.Int, _level:StdTypes.Int, _opt:StdTypes.Int, _value:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.setsockoptInt(_fd, _level, _opt, _value);
    }
    static public function setReadDeadline(_fd:StdTypes.Int, _t:haxe.Int64):stdgo.Error {
        return stdgo._internal.syscall.Syscall.setReadDeadline(_fd, _t);
    }
    static public function setWriteDeadline(_fd:StdTypes.Int, _t:haxe.Int64):stdgo.Error {
        return stdgo._internal.syscall.Syscall.setWriteDeadline(_fd, _t);
    }
    static public function shutdown(_fd:StdTypes.Int, _how:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall.shutdown(_fd, _how);
    }
    static public function setNonblock(_fd:StdTypes.Int, _nonblocking:Bool):stdgo.Error {
        return stdgo._internal.syscall.Syscall.setNonblock(_fd, _nonblocking);
    }
    /**
        StringByteSlice converts a string to a NUL-terminated []byte,
        If s contains a NUL byte this function panics instead of
        returning an error.
        
        Deprecated: Use ByteSliceFromString instead.
    **/
    static public function stringByteSlice(_s:String):Array<StdTypes.Int> {
        return [for (i in stdgo._internal.syscall.Syscall.stringByteSlice(_s)) i];
    }
    /**
        ByteSliceFromString returns a NUL-terminated slice of bytes
        containing the text of s. If s contains a NUL byte at any
        location, it returns (nil, EINVAL).
    **/
    static public function byteSliceFromString(_s:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.byteSliceFromString(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        StringBytePtr returns a pointer to a NUL-terminated array of bytes.
        If s contains a NUL byte this function panics instead of returning
        an error.
        
        Deprecated: Use BytePtrFromString instead.
    **/
    static public function stringBytePtr(_s:String):stdgo.Pointer<StdTypes.Int> {
        return stdgo._internal.syscall.Syscall.stringBytePtr(_s);
    }
    /**
        BytePtrFromString returns a pointer to a NUL-terminated array of
        bytes containing the text of s. If s contains a NUL byte at any
        location, it returns (nil, EINVAL).
    **/
    static public function bytePtrFromString(_s:String):stdgo.Tuple<stdgo.Pointer<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.bytePtrFromString(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function getpagesize():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.getpagesize();
    }
    static public function exit(_code:StdTypes.Int):Void {
        stdgo._internal.syscall.Syscall.exit(_code);
    }
    static public function syscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        return {
            final obj = stdgo._internal.syscall.Syscall.syscall(_trap, _a1, _a2, _a3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function syscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        return {
            final obj = stdgo._internal.syscall.Syscall.syscall6(_trap, _a1, _a2, _a3, _a4, _a5, _a6);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function rawSyscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        return {
            final obj = stdgo._internal.syscall.Syscall.rawSyscall(_trap, _a1, _a2, _a3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function rawSyscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        return {
            final obj = stdgo._internal.syscall.Syscall.rawSyscall6(_trap, _a1, _a2, _a3, _a4, _a5, _a6);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function sysctl(_key:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.sysctl(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function getwd():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.getwd();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function getuid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.getuid();
    }
    static public function getgid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.getgid();
    }
    static public function geteuid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.geteuid();
    }
    static public function getegid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.getegid();
    }
    static public function getgroups():stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.getgroups();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function getpid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.getpid();
    }
    static public function getppid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall.getppid();
    }
    static public function umask(_mask:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.syscall.Syscall.umask(_mask);
    }
    static public function gettimeofday(_tv:Timeval):stdgo.Error {
        return stdgo._internal.syscall.Syscall.gettimeofday(_tv);
    }
    static public function kill(_pid:StdTypes.Int, _signum:Signal):stdgo.Error {
        return stdgo._internal.syscall.Syscall.kill(_pid, _signum);
    }
    static public function sendfile(_outfd:StdTypes.Int, _infd:StdTypes.Int, _offset:stdgo.Pointer<haxe.Int64>, _count:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.sendfile(_outfd, _infd, _offset, _count);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function startProcess(_argv0:String, _argv:Array<String>, _attr:ProcAttr):stdgo.Tuple.Tuple3<StdTypes.Int, stdgo.GoUIntptr, stdgo.Error> {
        final _argv = ([for (i in _argv) i] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.syscall.Syscall.startProcess(_argv0, _argv, _attr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function wait4(_pid:StdTypes.Int, _wstatus:stdgo.Pointer<WaitStatus>, _options:StdTypes.Int, _rusage:Rusage):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall.wait4(_pid, _wstatus, _options, _rusage);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        TimespecToNsec returns the time stored in ts as nanoseconds.
    **/
    static public function timespecToNsec(_ts:Timespec):haxe.Int64 {
        return stdgo._internal.syscall.Syscall.timespecToNsec(_ts);
    }
    /**
        NsecToTimespec converts a number of nanoseconds into a Timespec.
    **/
    static public function nsecToTimespec(_nsec:haxe.Int64):Timespec {
        return stdgo._internal.syscall.Syscall.nsecToTimespec(_nsec);
    }
    /**
        TimevalToNsec returns the time stored in tv as nanoseconds.
    **/
    static public function timevalToNsec(_tv:Timeval):haxe.Int64 {
        return stdgo._internal.syscall.Syscall.timevalToNsec(_tv);
    }
    /**
        NsecToTimeval converts a number of nanoseconds into a Timeval.
    **/
    static public function nsecToTimeval(_nsec:haxe.Int64):Timeval {
        return stdgo._internal.syscall.Syscall.nsecToTimeval(_nsec);
    }
}
