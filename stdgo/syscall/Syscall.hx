package stdgo.syscall;
final af_UNSPEC : haxe.UInt64 = stdgo._internal.syscall.Syscall_af_UNSPEC.af_UNSPEC;
final af_UNIX = stdgo._internal.syscall.Syscall_af_UNIX.af_UNIX;
final af_INET = stdgo._internal.syscall.Syscall_af_INET.af_INET;
final af_INET6 = stdgo._internal.syscall.Syscall_af_INET6.af_INET6;
final sock_STREAM : haxe.UInt64 = stdgo._internal.syscall.Syscall_sock_STREAM.sock_STREAM;
final sock_DGRAM = stdgo._internal.syscall.Syscall_sock_DGRAM.sock_DGRAM;
final sock_RAW = stdgo._internal.syscall.Syscall_sock_RAW.sock_RAW;
final sock_SEQPACKET = stdgo._internal.syscall.Syscall_sock_SEQPACKET.sock_SEQPACKET;
final ipproto_IP : haxe.UInt64 = stdgo._internal.syscall.Syscall_ipproto_IP.ipproto_IP;
final ipproto_IPV4 : haxe.UInt64 = stdgo._internal.syscall.Syscall_ipproto_IPV4.ipproto_IPV4;
final ipproto_IPV6 : haxe.UInt64 = stdgo._internal.syscall.Syscall_ipproto_IPV6.ipproto_IPV6;
final ipproto_TCP : haxe.UInt64 = stdgo._internal.syscall.Syscall_ipproto_TCP.ipproto_TCP;
final ipproto_UDP : haxe.UInt64 = stdgo._internal.syscall.Syscall_ipproto_UDP.ipproto_UDP;
final ipv6_V6ONLY = stdgo._internal.syscall.Syscall_ipv6_V6ONLY.ipv6_V6ONLY;
final somaxconn = stdgo._internal.syscall.Syscall_somaxconn.somaxconn;
final so_ERROR = stdgo._internal.syscall.Syscall_so_ERROR.so_ERROR;
final f_DUPFD_CLOEXEC = stdgo._internal.syscall.Syscall_f_DUPFD_CLOEXEC.f_DUPFD_CLOEXEC;
final sys_FCNTL : haxe.UInt64 = stdgo._internal.syscall.Syscall_sys_FCNTL.sys_FCNTL;
final pathMax : haxe.UInt64 = stdgo._internal.syscall.Syscall_pathMax.pathMax;
final sigchld = stdgo._internal.syscall.Syscall_sigchld.sigchld;
final sigint = stdgo._internal.syscall.Syscall_sigint.sigint;
final sigkill = stdgo._internal.syscall.Syscall_sigkill.sigkill;
final sigtrap = stdgo._internal.syscall.Syscall_sigtrap.sigtrap;
final sigquit = stdgo._internal.syscall.Syscall_sigquit.sigquit;
final sigterm = stdgo._internal.syscall.Syscall_sigterm.sigterm;
final stdin : haxe.UInt64 = stdgo._internal.syscall.Syscall_stdin.stdin;
final stdout : haxe.UInt64 = stdgo._internal.syscall.Syscall_stdout.stdout;
final stderr : haxe.UInt64 = stdgo._internal.syscall.Syscall_stderr.stderr;
final o_RDONLY : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_RDONLY.o_RDONLY;
final o_WRONLY : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_WRONLY.o_WRONLY;
final o_RDWR : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_RDWR.o_RDWR;
final o_CREAT : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_CREAT.o_CREAT;
final o_CREATE : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_CREATE.o_CREATE;
final o_TRUNC : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_TRUNC.o_TRUNC;
final o_APPEND : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_APPEND.o_APPEND;
final o_EXCL : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_EXCL.o_EXCL;
final o_SYNC : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_SYNC.o_SYNC;
final o_CLOEXEC : haxe.UInt64 = stdgo._internal.syscall.Syscall_o_CLOEXEC.o_CLOEXEC;
final f_DUPFD : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_DUPFD.f_DUPFD;
final f_GETFD : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_GETFD.f_GETFD;
final f_SETFD : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_SETFD.f_SETFD;
final f_GETFL : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_GETFL.f_GETFL;
final f_SETFL : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_SETFL.f_SETFL;
final f_GETOWN : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_GETOWN.f_GETOWN;
final f_SETOWN : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_SETOWN.f_SETOWN;
final f_GETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_GETLK.f_GETLK;
final f_SETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_SETLK.f_SETLK;
final f_SETLKW : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_SETLKW.f_SETLKW;
final f_RGETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_RGETLK.f_RGETLK;
final f_RSETLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_RSETLK.f_RSETLK;
final f_CNVT : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_CNVT.f_CNVT;
final f_RSETLKW : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_RSETLKW.f_RSETLKW;
final f_RDLCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_RDLCK.f_RDLCK;
final f_WRLCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_WRLCK.f_WRLCK;
final f_UNLCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_UNLCK.f_UNLCK;
final f_UNLKSYS : haxe.UInt64 = stdgo._internal.syscall.Syscall_f_UNLKSYS.f_UNLKSYS;
final s_IFMT : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFMT.s_IFMT;
final s_IFSHM_SYSV : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFSHM_SYSV.s_IFSHM_SYSV;
final s_IFSEMA : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFSEMA.s_IFSEMA;
final s_IFCOND : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFCOND.s_IFCOND;
final s_IFMUTEX : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFMUTEX.s_IFMUTEX;
final s_IFSHM : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFSHM.s_IFSHM;
final s_IFBOUNDSOCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFBOUNDSOCK.s_IFBOUNDSOCK;
final s_IFSOCKADDR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFSOCKADDR.s_IFSOCKADDR;
final s_IFDSOCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFDSOCK.s_IFDSOCK;
final s_IFSOCK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFSOCK.s_IFSOCK;
final s_IFLNK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFLNK.s_IFLNK;
final s_IFREG : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFREG.s_IFREG;
final s_IFBLK : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFBLK.s_IFBLK;
final s_IFDIR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFDIR.s_IFDIR;
final s_IFCHR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFCHR.s_IFCHR;
final s_IFIFO : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IFIFO.s_IFIFO;
final s_UNSUP : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_UNSUP.s_UNSUP;
final s_ISUID : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ISUID.s_ISUID;
final s_ISGID : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ISGID.s_ISGID;
final s_ISVTX : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_ISVTX.s_ISVTX;
final s_IREAD : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IREAD.s_IREAD;
final s_IWRITE : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IWRITE.s_IWRITE;
final s_IEXEC : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IEXEC.s_IEXEC;
final s_IRWXU : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IRWXU.s_IRWXU;
final s_IRUSR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IRUSR.s_IRUSR;
final s_IWUSR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IWUSR.s_IWUSR;
final s_IXUSR : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IXUSR.s_IXUSR;
final s_IRWXG : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IRWXG.s_IRWXG;
final s_IRGRP : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IRGRP.s_IRGRP;
final s_IWGRP : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IWGRP.s_IWGRP;
final s_IXGRP : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IXGRP.s_IXGRP;
final s_IRWXO : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IRWXO.s_IRWXO;
final s_IROTH : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IROTH.s_IROTH;
final s_IWOTH : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IWOTH.s_IWOTH;
final s_IXOTH : haxe.UInt64 = stdgo._internal.syscall.Syscall_s_IXOTH.s_IXOTH;
var forkLock(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
private function get_forkLock():stdgo._internal.sync.Sync_RWMutex.RWMutex return stdgo._internal.syscall.Syscall_forkLock.forkLock;
private function set_forkLock(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        stdgo._internal.syscall.Syscall_forkLock.forkLock = v;
        return v;
    }
final implementsGetwd : Bool = stdgo._internal.syscall.Syscall_implementsGetwd.implementsGetwd;
final eperm : Errno = stdgo._internal.syscall.Syscall_eperm.eperm;
final enoent : Errno = stdgo._internal.syscall.Syscall_enoent.enoent;
final esrch : Errno = stdgo._internal.syscall.Syscall_esrch.esrch;
final eintr : Errno = stdgo._internal.syscall.Syscall_eintr.eintr;
final eio : Errno = stdgo._internal.syscall.Syscall_eio.eio;
final enxio : Errno = stdgo._internal.syscall.Syscall_enxio.enxio;
final e2big : Errno = stdgo._internal.syscall.Syscall_e2big.e2big;
final enoexec : Errno = stdgo._internal.syscall.Syscall_enoexec.enoexec;
final ebadf : Errno = stdgo._internal.syscall.Syscall_ebadf.ebadf;
final echild : Errno = stdgo._internal.syscall.Syscall_echild.echild;
final eagain : Errno = stdgo._internal.syscall.Syscall_eagain.eagain;
final enomem : Errno = stdgo._internal.syscall.Syscall_enomem.enomem;
final eacces : Errno = stdgo._internal.syscall.Syscall_eacces.eacces;
final efault : Errno = stdgo._internal.syscall.Syscall_efault.efault;
final ebusy : Errno = stdgo._internal.syscall.Syscall_ebusy.ebusy;
final eexist : Errno = stdgo._internal.syscall.Syscall_eexist.eexist;
final exdev : Errno = stdgo._internal.syscall.Syscall_exdev.exdev;
final enodev : Errno = stdgo._internal.syscall.Syscall_enodev.enodev;
final enotdir : Errno = stdgo._internal.syscall.Syscall_enotdir.enotdir;
final eisdir : Errno = stdgo._internal.syscall.Syscall_eisdir.eisdir;
final einval : Errno = stdgo._internal.syscall.Syscall_einval.einval;
final enfile : Errno = stdgo._internal.syscall.Syscall_enfile.enfile;
final emfile : Errno = stdgo._internal.syscall.Syscall_emfile.emfile;
final enotty : Errno = stdgo._internal.syscall.Syscall_enotty.enotty;
final efbig : Errno = stdgo._internal.syscall.Syscall_efbig.efbig;
final enospc : Errno = stdgo._internal.syscall.Syscall_enospc.enospc;
final espipe : Errno = stdgo._internal.syscall.Syscall_espipe.espipe;
final erofs : Errno = stdgo._internal.syscall.Syscall_erofs.erofs;
final emlink : Errno = stdgo._internal.syscall.Syscall_emlink.emlink;
final epipe : Errno = stdgo._internal.syscall.Syscall_epipe.epipe;
final enametoolong : Errno = stdgo._internal.syscall.Syscall_enametoolong.enametoolong;
final enosys : Errno = stdgo._internal.syscall.Syscall_enosys.enosys;
final edquot : Errno = stdgo._internal.syscall.Syscall_edquot.edquot;
final edom : Errno = stdgo._internal.syscall.Syscall_edom.edom;
final erange : Errno = stdgo._internal.syscall.Syscall_erange.erange;
final edeadlk : Errno = stdgo._internal.syscall.Syscall_edeadlk.edeadlk;
final enolck : Errno = stdgo._internal.syscall.Syscall_enolck.enolck;
final enotempty : Errno = stdgo._internal.syscall.Syscall_enotempty.enotempty;
final eloop : Errno = stdgo._internal.syscall.Syscall_eloop.eloop;
final enomsg : Errno = stdgo._internal.syscall.Syscall_enomsg.enomsg;
final eidrm : Errno = stdgo._internal.syscall.Syscall_eidrm.eidrm;
final echrng : Errno = stdgo._internal.syscall.Syscall_echrng.echrng;
final el2nsync : Errno = stdgo._internal.syscall.Syscall_el2nsync.el2nsync;
final el3hlt : Errno = stdgo._internal.syscall.Syscall_el3hlt.el3hlt;
final el3rst : Errno = stdgo._internal.syscall.Syscall_el3rst.el3rst;
final elnrng : Errno = stdgo._internal.syscall.Syscall_elnrng.elnrng;
final eunatch : Errno = stdgo._internal.syscall.Syscall_eunatch.eunatch;
final enocsi : Errno = stdgo._internal.syscall.Syscall_enocsi.enocsi;
final el2hlt : Errno = stdgo._internal.syscall.Syscall_el2hlt.el2hlt;
final ebade : Errno = stdgo._internal.syscall.Syscall_ebade.ebade;
final ebadr : Errno = stdgo._internal.syscall.Syscall_ebadr.ebadr;
final exfull : Errno = stdgo._internal.syscall.Syscall_exfull.exfull;
final enoano : Errno = stdgo._internal.syscall.Syscall_enoano.enoano;
final ebadrqc : Errno = stdgo._internal.syscall.Syscall_ebadrqc.ebadrqc;
final ebadslt : Errno = stdgo._internal.syscall.Syscall_ebadslt.ebadslt;
final edeadlock : Errno = stdgo._internal.syscall.Syscall_edeadlock.edeadlock;
final ebfont : Errno = stdgo._internal.syscall.Syscall_ebfont.ebfont;
final enostr : Errno = stdgo._internal.syscall.Syscall_enostr.enostr;
final enodata : Errno = stdgo._internal.syscall.Syscall_enodata.enodata;
final etime : Errno = stdgo._internal.syscall.Syscall_etime.etime;
final enosr : Errno = stdgo._internal.syscall.Syscall_enosr.enosr;
final enonet : Errno = stdgo._internal.syscall.Syscall_enonet.enonet;
final enopkg : Errno = stdgo._internal.syscall.Syscall_enopkg.enopkg;
final eremote : Errno = stdgo._internal.syscall.Syscall_eremote.eremote;
final enolink : Errno = stdgo._internal.syscall.Syscall_enolink.enolink;
final eadv : Errno = stdgo._internal.syscall.Syscall_eadv.eadv;
final esrmnt : Errno = stdgo._internal.syscall.Syscall_esrmnt.esrmnt;
final ecomm : Errno = stdgo._internal.syscall.Syscall_ecomm.ecomm;
final eproto : Errno = stdgo._internal.syscall.Syscall_eproto.eproto;
final emultihop : Errno = stdgo._internal.syscall.Syscall_emultihop.emultihop;
final edotdot : Errno = stdgo._internal.syscall.Syscall_edotdot.edotdot;
final ebadmsg : Errno = stdgo._internal.syscall.Syscall_ebadmsg.ebadmsg;
final eoverflow : Errno = stdgo._internal.syscall.Syscall_eoverflow.eoverflow;
final enotuniq : Errno = stdgo._internal.syscall.Syscall_enotuniq.enotuniq;
final ebadfd : Errno = stdgo._internal.syscall.Syscall_ebadfd.ebadfd;
final eremchg : Errno = stdgo._internal.syscall.Syscall_eremchg.eremchg;
final elibacc : Errno = stdgo._internal.syscall.Syscall_elibacc.elibacc;
final elibbad : Errno = stdgo._internal.syscall.Syscall_elibbad.elibbad;
final elibscn : Errno = stdgo._internal.syscall.Syscall_elibscn.elibscn;
final elibmax : Errno = stdgo._internal.syscall.Syscall_elibmax.elibmax;
final elibexec : Errno = stdgo._internal.syscall.Syscall_elibexec.elibexec;
final eilseq : Errno = stdgo._internal.syscall.Syscall_eilseq.eilseq;
final eusers : Errno = stdgo._internal.syscall.Syscall_eusers.eusers;
final enotsock : Errno = stdgo._internal.syscall.Syscall_enotsock.enotsock;
final edestaddrreq : Errno = stdgo._internal.syscall.Syscall_edestaddrreq.edestaddrreq;
final emsgsize : Errno = stdgo._internal.syscall.Syscall_emsgsize.emsgsize;
final eprototype : Errno = stdgo._internal.syscall.Syscall_eprototype.eprototype;
final enoprotoopt : Errno = stdgo._internal.syscall.Syscall_enoprotoopt.enoprotoopt;
final eprotonosupport : Errno = stdgo._internal.syscall.Syscall_eprotonosupport.eprotonosupport;
final esocktnosupport : Errno = stdgo._internal.syscall.Syscall_esocktnosupport.esocktnosupport;
final eopnotsupp : Errno = stdgo._internal.syscall.Syscall_eopnotsupp.eopnotsupp;
final epfnosupport : Errno = stdgo._internal.syscall.Syscall_epfnosupport.epfnosupport;
final eafnosupport : Errno = stdgo._internal.syscall.Syscall_eafnosupport.eafnosupport;
final eaddrinuse : Errno = stdgo._internal.syscall.Syscall_eaddrinuse.eaddrinuse;
final eaddrnotavail : Errno = stdgo._internal.syscall.Syscall_eaddrnotavail.eaddrnotavail;
final enetdown : Errno = stdgo._internal.syscall.Syscall_enetdown.enetdown;
final enetunreach : Errno = stdgo._internal.syscall.Syscall_enetunreach.enetunreach;
final enetreset : Errno = stdgo._internal.syscall.Syscall_enetreset.enetreset;
final econnaborted : Errno = stdgo._internal.syscall.Syscall_econnaborted.econnaborted;
final econnreset : Errno = stdgo._internal.syscall.Syscall_econnreset.econnreset;
final enobufs : Errno = stdgo._internal.syscall.Syscall_enobufs.enobufs;
final eisconn : Errno = stdgo._internal.syscall.Syscall_eisconn.eisconn;
final enotconn : Errno = stdgo._internal.syscall.Syscall_enotconn.enotconn;
final eshutdown : Errno = stdgo._internal.syscall.Syscall_eshutdown.eshutdown;
final etoomanyrefs : Errno = stdgo._internal.syscall.Syscall_etoomanyrefs.etoomanyrefs;
final etimedout : Errno = stdgo._internal.syscall.Syscall_etimedout.etimedout;
final econnrefused : Errno = stdgo._internal.syscall.Syscall_econnrefused.econnrefused;
final ehostdown : Errno = stdgo._internal.syscall.Syscall_ehostdown.ehostdown;
final ehostunreach : Errno = stdgo._internal.syscall.Syscall_ehostunreach.ehostunreach;
final ealready : Errno = stdgo._internal.syscall.Syscall_ealready.ealready;
final einprogress : Errno = stdgo._internal.syscall.Syscall_einprogress.einprogress;
final estale : Errno = stdgo._internal.syscall.Syscall_estale.estale;
final enotsup : Errno = stdgo._internal.syscall.Syscall_enotsup.enotsup;
final enomedium : Errno = stdgo._internal.syscall.Syscall_enomedium.enomedium;
final ecanceled : Errno = stdgo._internal.syscall.Syscall_ecanceled.ecanceled;
final elbin : Errno = stdgo._internal.syscall.Syscall_elbin.elbin;
final eftype : Errno = stdgo._internal.syscall.Syscall_eftype.eftype;
final enmfile : Errno = stdgo._internal.syscall.Syscall_enmfile.enmfile;
final eproclim : Errno = stdgo._internal.syscall.Syscall_eproclim.eproclim;
final enoshare : Errno = stdgo._internal.syscall.Syscall_enoshare.enoshare;
final ecaseclash : Errno = stdgo._internal.syscall.Syscall_ecaseclash.ecaseclash;
final ewouldblock : Errno = stdgo._internal.syscall.Syscall_ewouldblock.ewouldblock;
class RawConn_static_extension {
    static public function write(t:stdgo._internal.syscall.Syscall_RawConn.RawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall_RawConn_static_extension.RawConn_static_extension.write(t, _f);
    }
    static public function read(t:stdgo._internal.syscall.Syscall_RawConn.RawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall_RawConn_static_extension.RawConn_static_extension.read(t, _f);
    }
    static public function control(t:stdgo._internal.syscall.Syscall_RawConn.RawConn, _f:stdgo.GoUIntptr -> Void):stdgo.Error {
        final _f = _f;
        return stdgo._internal.syscall.Syscall_RawConn_static_extension.RawConn_static_extension.control(t, _f);
    }
}
typedef RawConn = stdgo._internal.syscall.Syscall_RawConn.RawConn;
class Conn_static_extension {
    static public function syscallConn(t:stdgo._internal.syscall.Syscall_Conn.Conn):stdgo.Tuple<RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_Conn_static_extension.Conn_static_extension.syscallConn(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Conn = stdgo._internal.syscall.Syscall_Conn.Conn;
@:structInit abstract T_jsFile(stdgo._internal.syscall.Syscall_T_jsFile.T_jsFile) from stdgo._internal.syscall.Syscall_T_jsFile.T_jsFile to stdgo._internal.syscall.Syscall_T_jsFile.T_jsFile {
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
    public function new(?_path:String, ?_entries:Array<String>, ?_dirIdx:StdTypes.Int, ?_pos:haxe.Int64, ?_seeked:Bool) this = new stdgo._internal.syscall.Syscall_T_jsFile.T_jsFile(_path, ([for (i in _entries) i] : stdgo.Slice<stdgo.GoString>), _dirIdx, _pos, _seeked);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SockaddrInet4(stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4) from stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4 to stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4 {
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
    public function new(?port:StdTypes.Int, ?addr:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall_SockaddrInet4.SockaddrInet4(port, ([for (i in addr) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SockaddrInet6(stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6) from stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6 to stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6 {
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
    public function new(?port:StdTypes.Int, ?zoneId:std.UInt, ?addr:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall_SockaddrInet6.SockaddrInet6(port, zoneId, ([for (i in addr) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SockaddrUnix(stdgo._internal.syscall.Syscall_SockaddrUnix.SockaddrUnix) from stdgo._internal.syscall.Syscall_SockaddrUnix.SockaddrUnix to stdgo._internal.syscall.Syscall_SockaddrUnix.SockaddrUnix {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public function new(?name:String) this = new stdgo._internal.syscall.Syscall_SockaddrUnix.SockaddrUnix(name);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Dirent(stdgo._internal.syscall.Syscall_Dirent.Dirent) from stdgo._internal.syscall.Syscall_Dirent.Dirent to stdgo._internal.syscall.Syscall_Dirent.Dirent {
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
    public function new(?reclen:std.UInt, ?name:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall_Dirent.Dirent(reclen, ([for (i in name) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Stat_t(stdgo._internal.syscall.Syscall_Stat_t.Stat_t) from stdgo._internal.syscall.Syscall_Stat_t.Stat_t to stdgo._internal.syscall.Syscall_Stat_t.Stat_t {
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
    public function new(?dev:haxe.Int64, ?ino:haxe.UInt64, ?mode:std.UInt, ?nlink:std.UInt, ?uid:std.UInt, ?gid:std.UInt, ?rdev:haxe.Int64, ?size:haxe.Int64, ?blksize:StdTypes.Int, ?blocks:StdTypes.Int, ?atime:haxe.Int64, ?atimeNsec:haxe.Int64, ?mtime:haxe.Int64, ?mtimeNsec:haxe.Int64, ?ctime:haxe.Int64, ?ctimeNsec:haxe.Int64) this = new stdgo._internal.syscall.Syscall_Stat_t.Stat_t(
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
@:structInit abstract Rusage(stdgo._internal.syscall.Syscall_Rusage.Rusage) from stdgo._internal.syscall.Syscall_Rusage.Rusage to stdgo._internal.syscall.Syscall_Rusage.Rusage {
    public var utime(get, set) : Timeval;
    function get_utime():Timeval return this.utime;
    function set_utime(v:Timeval):Timeval {
        this.utime = v;
        return v;
    }
    public var stime(get, set) : Timeval;
    function get_stime():Timeval return this.stime;
    function set_stime(v:Timeval):Timeval {
        this.stime = v;
        return v;
    }
    public function new(?utime:Timeval, ?stime:Timeval) this = new stdgo._internal.syscall.Syscall_Rusage.Rusage(utime, stime);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract ProcAttr(stdgo._internal.syscall.Syscall_ProcAttr.ProcAttr) from stdgo._internal.syscall.Syscall_ProcAttr.ProcAttr to stdgo._internal.syscall.Syscall_ProcAttr.ProcAttr {
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
    public var sys(get, set) : SysProcAttr;
    function get_sys():SysProcAttr return this.sys;
    function set_sys(v:SysProcAttr):SysProcAttr {
        this.sys = v;
        return v;
    }
    public function new(?dir:String, ?env:Array<String>, ?files:Array<stdgo.GoUIntptr>, ?sys:SysProcAttr) this = new stdgo._internal.syscall.Syscall_ProcAttr.ProcAttr(dir, ([for (i in env) i] : stdgo.Slice<stdgo.GoString>), ([for (i in files) i] : stdgo.Slice<stdgo.GoUIntptr>), sys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SysProcAttr(stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr) from stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr to stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr {
    public function new() this = new stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Iovec(stdgo._internal.syscall.Syscall_Iovec.Iovec) from stdgo._internal.syscall.Syscall_Iovec.Iovec to stdgo._internal.syscall.Syscall_Iovec.Iovec {
    public function new() this = new stdgo._internal.syscall.Syscall_Iovec.Iovec();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Timespec_static_extension) abstract Timespec(stdgo._internal.syscall.Syscall_Timespec.Timespec) from stdgo._internal.syscall.Syscall_Timespec.Timespec to stdgo._internal.syscall.Syscall_Timespec.Timespec {
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
    public function new(?sec:haxe.Int64, ?nsec:haxe.Int64) this = new stdgo._internal.syscall.Syscall_Timespec.Timespec(sec, nsec);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.syscall.Syscall.Timeval_static_extension) abstract Timeval(stdgo._internal.syscall.Syscall_Timeval.Timeval) from stdgo._internal.syscall.Syscall_Timeval.Timeval to stdgo._internal.syscall.Syscall_Timeval.Timeval {
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
    public function new(?sec:haxe.Int64, ?usec:haxe.Int64) this = new stdgo._internal.syscall.Syscall_Timeval.Timeval(sec, usec);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Sockaddr = stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr;
typedef Errno = stdgo._internal.syscall.Syscall_Errno.Errno;
typedef Signal = stdgo._internal.syscall.Syscall_Signal.Signal;
typedef WaitStatus = stdgo._internal.syscall.Syscall_WaitStatus.WaitStatus;
class Timespec_static_extension {
    static public function nano(_ts:Timespec):haxe.Int64 {
        return stdgo._internal.syscall.Syscall_Timespec_static_extension.Timespec_static_extension.nano(_ts);
    }
    static public function unix(_ts:Timespec):stdgo.Tuple<haxe.Int64, haxe.Int64> {
        return {
            final obj = stdgo._internal.syscall.Syscall_Timespec_static_extension.Timespec_static_extension.unix(_ts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Timeval_static_extension {
    static public function nano(_tv:Timeval):haxe.Int64 {
        return stdgo._internal.syscall.Syscall_Timeval_static_extension.Timeval_static_extension.nano(_tv);
    }
    static public function unix(_tv:Timeval):stdgo.Tuple<haxe.Int64, haxe.Int64> {
        return {
            final obj = stdgo._internal.syscall.Syscall_Timeval_static_extension.Timeval_static_extension.unix(_tv);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Errno_static_extension {
    static public function timeout(_e:Errno):Bool {
        return stdgo._internal.syscall.Syscall_Errno_static_extension.Errno_static_extension.timeout(_e);
    }
    static public function temporary(_e:Errno):Bool {
        return stdgo._internal.syscall.Syscall_Errno_static_extension.Errno_static_extension.temporary(_e);
    }
    static public function is_(_e:Errno, _target:stdgo.Error):Bool {
        return stdgo._internal.syscall.Syscall_Errno_static_extension.Errno_static_extension.is_(_e, _target);
    }
    static public function error(_e:Errno):String {
        return stdgo._internal.syscall.Syscall_Errno_static_extension.Errno_static_extension.error(_e);
    }
}
class Signal_static_extension {
    static public function string(_s:Signal):String {
        return stdgo._internal.syscall.Syscall_Signal_static_extension.Signal_static_extension.string(_s);
    }
    static public function signal(_s:Signal):Void {
        stdgo._internal.syscall.Syscall_Signal_static_extension.Signal_static_extension.signal(_s);
    }
}
class WaitStatus_static_extension {
    static public function trapCause(_w:WaitStatus):StdTypes.Int {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.trapCause(_w);
    }
    static public function stopSignal(_w:WaitStatus):Signal {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.stopSignal(_w);
    }
    static public function continued(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.continued(_w);
    }
    static public function stopped(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.stopped(_w);
    }
    static public function coreDump(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.coreDump(_w);
    }
    static public function signal(_w:WaitStatus):Signal {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.signal(_w);
    }
    static public function signaled(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.signaled(_w);
    }
    static public function exitStatus(_w:WaitStatus):StdTypes.Int {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.exitStatus(_w);
    }
    static public function exited(_w:WaitStatus):Bool {
        return stdgo._internal.syscall.Syscall_WaitStatus_static_extension.WaitStatus_static_extension.exited(_w);
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
    static public function parseDirent(_buf:Array<std.UInt>, _max:StdTypes.Int, _names:Array<String>):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Array<String>> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _names = ([for (i in _names) i] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.syscall.Syscall_parseDirent.parseDirent(_buf, _max, _names);
            { _0 : obj._0, _1 : obj._1, _2 : [for (i in obj._2) i] };
        };
    }
    static public function unsetenv(_key:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall_unsetenv.unsetenv(_key);
    }
    static public function getenv(_key:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.syscall.Syscall_getenv.getenv(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setenv(_key:String, _value:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall_setenv.setenv(_key, _value);
    }
    static public function clearenv():Void {
        stdgo._internal.syscall.Syscall_clearenv.clearenv();
    }
    static public function environ_():Array<String> {
        return [for (i in stdgo._internal.syscall.Syscall_environ_.environ_()) i];
    }
    static public function open(_path:String, _openmode:StdTypes.Int, _perm:std.UInt):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_open.open(_path, _openmode, _perm);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall_close.close(_fd);
    }
    static public function closeOnExec(_fd:StdTypes.Int):Void {
        stdgo._internal.syscall.Syscall_closeOnExec.closeOnExec(_fd);
    }
    static public function mkdir(_path:String, _perm:std.UInt):stdgo.Error {
        return stdgo._internal.syscall.Syscall_mkdir.mkdir(_path, _perm);
    }
    static public function readDirent(_fd:StdTypes.Int, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_readDirent.readDirent(_fd, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_path:String, _st:Stat_t):stdgo.Error {
        return stdgo._internal.syscall.Syscall_stat.stat(_path, _st);
    }
    static public function lstat(_path:String, _st:Stat_t):stdgo.Error {
        return stdgo._internal.syscall.Syscall_lstat.lstat(_path, _st);
    }
    static public function fstat(_fd:StdTypes.Int, _st:Stat_t):stdgo.Error {
        return stdgo._internal.syscall.Syscall_fstat.fstat(_fd, _st);
    }
    static public function unlink(_path:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall_unlink.unlink(_path);
    }
    static public function rmdir(_path:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall_rmdir.rmdir(_path);
    }
    static public function chmod(_path:String, _mode:std.UInt):stdgo.Error {
        return stdgo._internal.syscall.Syscall_chmod.chmod(_path, _mode);
    }
    static public function fchmod(_fd:StdTypes.Int, _mode:std.UInt):stdgo.Error {
        return stdgo._internal.syscall.Syscall_fchmod.fchmod(_fd, _mode);
    }
    static public function chown(_path:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall_chown.chown(_path, _uid, _gid);
    }
    static public function fchown(_fd:StdTypes.Int, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall_fchown.fchown(_fd, _uid, _gid);
    }
    static public function lchown(_path:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall_lchown.lchown(_path, _uid, _gid);
    }
    static public function utimesNano(_path:String, _ts:Array<Timespec>):stdgo.Error {
        final _ts = ([for (i in _ts) i] : stdgo.Slice<stdgo._internal.syscall.Syscall_Timespec.Timespec>);
        return stdgo._internal.syscall.Syscall_utimesNano.utimesNano(_path, _ts);
    }
    static public function rename(_from:String, _to:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall_rename.rename(_from, _to);
    }
    static public function truncate(_path:String, _length:haxe.Int64):stdgo.Error {
        return stdgo._internal.syscall.Syscall_truncate.truncate(_path, _length);
    }
    static public function ftruncate(_fd:StdTypes.Int, _length:haxe.Int64):stdgo.Error {
        return stdgo._internal.syscall.Syscall_ftruncate.ftruncate(_fd, _length);
    }
    static public function getcwd(_buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_getcwd.getcwd(_buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function chdir(_path:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall_chdir.chdir(_path);
    }
    static public function fchdir(_fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall_fchdir.fchdir(_fd);
    }
    static public function readlink(_path:String, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_readlink.readlink(_path, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function link(_path:String, _link:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall_link.link(_path, _link);
    }
    static public function symlink(_path:String, _link:String):stdgo.Error {
        return stdgo._internal.syscall.Syscall_symlink.symlink(_path, _link);
    }
    static public function fsync(_fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall_fsync.fsync(_fd);
    }
    static public function read(_fd:StdTypes.Int, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_read.read(_fd, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_fd:StdTypes.Int, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_write.write(_fd, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pread(_fd:StdTypes.Int, _b:Array<std.UInt>, _offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_pread.pread(_fd, _b, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pwrite(_fd:StdTypes.Int, _b:Array<std.UInt>, _offset:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_pwrite.pwrite(_fd, _b, _offset);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_fd:StdTypes.Int, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_seek.seek(_fd, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dup(_fd:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_dup.dup(_fd);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dup2(_fd:StdTypes.Int, _newfd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall_dup2.dup2(_fd, _newfd);
    }
    static public function pipe(_fd:Array<StdTypes.Int>):stdgo.Error {
        final _fd = ([for (i in _fd) i] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.syscall.Syscall_pipe.pipe(_fd);
    }
    static public function socket(_proto:StdTypes.Int, _sotype:StdTypes.Int, _unused:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_socket.socket(_proto, _sotype, _unused);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function bind(_fd:StdTypes.Int, _sa:Sockaddr):stdgo.Error {
        return stdgo._internal.syscall.Syscall_bind.bind(_fd, _sa);
    }
    static public function stopIO(_fd:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall_stopIO.stopIO(_fd);
    }
    static public function listen(_fd:StdTypes.Int, _backlog:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall_listen.listen(_fd, _backlog);
    }
    static public function accept(_fd:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, Sockaddr, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_accept.accept(_fd);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function connect(_fd:StdTypes.Int, _sa:Sockaddr):stdgo.Error {
        return stdgo._internal.syscall.Syscall_connect.connect(_fd, _sa);
    }
    static public function recvfrom(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, Sockaddr, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_recvfrom.recvfrom(_fd, _p, _flags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function sendto(_fd:StdTypes.Int, _p:Array<std.UInt>, _flags:StdTypes.Int, _to:Sockaddr):stdgo.Error {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.syscall.Syscall_sendto.sendto(_fd, _p, _flags, _to);
    }
    static public function recvmsg(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _flags:StdTypes.Int):stdgo.Tuple.Tuple5<StdTypes.Int, StdTypes.Int, StdTypes.Int, Sockaddr, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_recvmsg.recvmsg(_fd, _p, _oob, _flags);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3, _4 : obj._4 };
        };
    }
    static public function sendmsgN(_fd:StdTypes.Int, _p:Array<std.UInt>, _oob:Array<std.UInt>, _to:Sockaddr, _flags:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _oob = ([for (i in _oob) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.syscall.Syscall_sendmsgN.sendmsgN(_fd, _p, _oob, _to, _flags);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function getsockoptInt(_fd:StdTypes.Int, _level:StdTypes.Int, _opt:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_getsockoptInt.getsockoptInt(_fd, _level, _opt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setsockoptInt(_fd:StdTypes.Int, _level:StdTypes.Int, _opt:StdTypes.Int, _value:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall_setsockoptInt.setsockoptInt(_fd, _level, _opt, _value);
    }
    static public function setReadDeadline(_fd:StdTypes.Int, _t:haxe.Int64):stdgo.Error {
        return stdgo._internal.syscall.Syscall_setReadDeadline.setReadDeadline(_fd, _t);
    }
    static public function setWriteDeadline(_fd:StdTypes.Int, _t:haxe.Int64):stdgo.Error {
        return stdgo._internal.syscall.Syscall_setWriteDeadline.setWriteDeadline(_fd, _t);
    }
    static public function shutdown(_fd:StdTypes.Int, _how:StdTypes.Int):stdgo.Error {
        return stdgo._internal.syscall.Syscall_shutdown.shutdown(_fd, _how);
    }
    static public function setNonblock(_fd:StdTypes.Int, _nonblocking:Bool):stdgo.Error {
        return stdgo._internal.syscall.Syscall_setNonblock.setNonblock(_fd, _nonblocking);
    }
    /**
        StringByteSlice converts a string to a NUL-terminated []byte,
        If s contains a NUL byte this function panics instead of
        returning an error.
        
        Deprecated: Use ByteSliceFromString instead.
    **/
    static public function stringByteSlice(_s:String):Array<std.UInt> {
        return [for (i in stdgo._internal.syscall.Syscall_stringByteSlice.stringByteSlice(_s)) i];
    }
    /**
        ByteSliceFromString returns a NUL-terminated slice of bytes
        containing the text of s. If s contains a NUL byte at any
        location, it returns (nil, EINVAL).
    **/
    static public function byteSliceFromString(_s:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_byteSliceFromString.byteSliceFromString(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        StringBytePtr returns a pointer to a NUL-terminated array of bytes.
        If s contains a NUL byte this function panics instead of returning
        an error.
        
        Deprecated: Use BytePtrFromString instead.
    **/
    static public function stringBytePtr(_s:String):stdgo.Pointer<std.UInt> {
        return stdgo._internal.syscall.Syscall_stringBytePtr.stringBytePtr(_s);
    }
    /**
        BytePtrFromString returns a pointer to a NUL-terminated array of
        bytes containing the text of s. If s contains a NUL byte at any
        location, it returns (nil, EINVAL).
    **/
    static public function bytePtrFromString(_s:String):stdgo.Tuple<stdgo.Pointer<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_bytePtrFromString.bytePtrFromString(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function getpagesize():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getpagesize.getpagesize();
    }
    static public function exit(_code:StdTypes.Int):Void {
        stdgo._internal.syscall.Syscall_exit.exit(_code);
    }
    static public function syscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        return {
            final obj = stdgo._internal.syscall.Syscall_syscall.syscall(_trap, _a1, _a2, _a3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function syscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        return {
            final obj = stdgo._internal.syscall.Syscall_syscall6.syscall6(_trap, _a1, _a2, _a3, _a4, _a5, _a6);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function rawSyscall(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        return {
            final obj = stdgo._internal.syscall.Syscall_rawSyscall.rawSyscall(_trap, _a1, _a2, _a3);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function rawSyscall6(_trap:stdgo.GoUIntptr, _a1:stdgo.GoUIntptr, _a2:stdgo.GoUIntptr, _a3:stdgo.GoUIntptr, _a4:stdgo.GoUIntptr, _a5:stdgo.GoUIntptr, _a6:stdgo.GoUIntptr):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, Errno> {
        return {
            final obj = stdgo._internal.syscall.Syscall_rawSyscall6.rawSyscall6(_trap, _a1, _a2, _a3, _a4, _a5, _a6);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function sysctl(_key:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_sysctl.sysctl(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function getwd():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_getwd.getwd();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function getuid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getuid.getuid();
    }
    static public function getgid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getgid.getgid();
    }
    static public function geteuid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_geteuid.geteuid();
    }
    static public function getegid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getegid.getegid();
    }
    static public function getgroups():stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_getgroups.getgroups();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function getpid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getpid.getpid();
    }
    static public function getppid():StdTypes.Int {
        return stdgo._internal.syscall.Syscall_getppid.getppid();
    }
    static public function umask(_mask:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.syscall.Syscall_umask.umask(_mask);
    }
    static public function gettimeofday(_tv:Timeval):stdgo.Error {
        return stdgo._internal.syscall.Syscall_gettimeofday.gettimeofday(_tv);
    }
    static public function kill(_pid:StdTypes.Int, _signum:Signal):stdgo.Error {
        return stdgo._internal.syscall.Syscall_kill.kill(_pid, _signum);
    }
    static public function sendfile(_outfd:StdTypes.Int, _infd:StdTypes.Int, _offset:stdgo.Pointer<haxe.Int64>, _count:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_sendfile.sendfile(_outfd, _infd, _offset, _count);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function startProcess(_argv0:String, _argv:Array<String>, _attr:ProcAttr):stdgo.Tuple.Tuple3<StdTypes.Int, stdgo.GoUIntptr, stdgo.Error> {
        final _argv = ([for (i in _argv) i] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.syscall.Syscall_startProcess.startProcess(_argv0, _argv, _attr);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function wait4(_pid:StdTypes.Int, _wstatus:stdgo.Pointer<WaitStatus>, _options:StdTypes.Int, _rusage:Rusage):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.syscall.Syscall_wait4.wait4(_pid, _wstatus, _options, _rusage);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        TimespecToNsec returns the time stored in ts as nanoseconds.
    **/
    static public function timespecToNsec(_ts:Timespec):haxe.Int64 {
        return stdgo._internal.syscall.Syscall_timespecToNsec.timespecToNsec(_ts);
    }
    /**
        NsecToTimespec converts a number of nanoseconds into a Timespec.
    **/
    static public function nsecToTimespec(_nsec:haxe.Int64):Timespec {
        return stdgo._internal.syscall.Syscall_nsecToTimespec.nsecToTimespec(_nsec);
    }
    /**
        TimevalToNsec returns the time stored in tv as nanoseconds.
    **/
    static public function timevalToNsec(_tv:Timeval):haxe.Int64 {
        return stdgo._internal.syscall.Syscall_timevalToNsec.timevalToNsec(_tv);
    }
    /**
        NsecToTimeval converts a number of nanoseconds into a Timeval.
    **/
    static public function nsecToTimeval(_nsec:haxe.Int64):Timeval {
        return stdgo._internal.syscall.Syscall_nsecToTimeval.nsecToTimeval(_nsec);
    }
}
