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
var _envs : Slice<GoString> = _runtime_envs();
var _jsProcess : stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get(((((("process" : GoString))) : GoString)));
var _jsFS : stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get(((((("fs" : GoString))) : GoString)));
var _constants : stdgo.syscall.js.Js.Value = _jsFS.get(((((("constants" : GoString))) : GoString)));
var _uint8Array : stdgo.syscall.js.Js.Value = stdgo.syscall.js.Js.global().get(((((("Uint8Array" : GoString))) : GoString)));
var _nodeWRONLY : GoInt = _constants.get(((((("O_WRONLY" : GoString))) : GoString))).int();
var _nodeRDWR : GoInt = _constants.get(((((("O_RDWR" : GoString))) : GoString))).int();
var _nodeCREATE : GoInt = _constants.get(((((("O_CREAT" : GoString))) : GoString))).int();
var _nodeTRUNC : GoInt = _constants.get(((((("O_TRUNC" : GoString))) : GoString))).int();
var _nodeAPPEND : GoInt = _constants.get(((((("O_APPEND" : GoString))) : GoString))).int();
var _nodeEXCL : GoInt = _constants.get(((((("O_EXCL" : GoString))) : GoString))).int();
var _files : GoMap<GoInt, Ref<T_jsFile>> = Go.map(((0 : GoInt)) => new T_jsFile(((null : T_jsFile))._path, ((null : T_jsFile))._entries, ((null : T_jsFile))._dirIdx, ((null : T_jsFile))._pos, ((null : T_jsFile))._seeked), ((1 : GoInt)) => new T_jsFile(((null : T_jsFile))._path, ((null : T_jsFile))._entries, ((null : T_jsFile))._dirIdx, ((null : T_jsFile))._pos, ((null : T_jsFile))._seeked), ((2 : GoInt)) => new T_jsFile(((null : T_jsFile))._path, ((null : T_jsFile))._entries, ((null : T_jsFile))._dirIdx, ((null : T_jsFile))._pos, ((null : T_jsFile))._seeked));
var _signals : GoArray<GoString> = ((new GoArray<GoString>() : GoArray<GoString>));
var _errorstr : GoArray<GoString> = {
        var s:GoArray<GoString> = new GoArray<GoString>(...[for (i in 0 ... 2054) ""]);
        s[1] = ((((("Operation not permitted" : GoString))) : GoString));
        s[2] = ((((("No such file or directory" : GoString))) : GoString));
        s[3] = ((((("No such process" : GoString))) : GoString));
        s[4] = ((((("Interrupted system call" : GoString))) : GoString));
        s[5] = ((((("I/O error" : GoString))) : GoString));
        s[6] = ((((("No such device or address" : GoString))) : GoString));
        s[7] = ((((("Argument list too long" : GoString))) : GoString));
        s[8] = ((((("Exec format error" : GoString))) : GoString));
        s[9] = ((((("Bad file number" : GoString))) : GoString));
        s[10] = ((((("No child processes" : GoString))) : GoString));
        s[11] = ((((("Try again" : GoString))) : GoString));
        s[12] = ((((("Out of memory" : GoString))) : GoString));
        s[13] = ((((("Permission denied" : GoString))) : GoString));
        s[14] = ((((("Bad address" : GoString))) : GoString));
        s[16] = ((((("Device or resource busy" : GoString))) : GoString));
        s[17] = ((((("File exists" : GoString))) : GoString));
        s[18] = ((((("Cross-device link" : GoString))) : GoString));
        s[19] = ((((("No such device" : GoString))) : GoString));
        s[20] = ((((("Not a directory" : GoString))) : GoString));
        s[21] = ((((("Is a directory" : GoString))) : GoString));
        s[22] = ((((("Invalid argument" : GoString))) : GoString));
        s[23] = ((((("File table overflow" : GoString))) : GoString));
        s[24] = ((((("Too many open files" : GoString))) : GoString));
        s[25] = ((((("Not a typewriter" : GoString))) : GoString));
        s[27] = ((((("File too large" : GoString))) : GoString));
        s[28] = ((((("No space left on device" : GoString))) : GoString));
        s[29] = ((((("Illegal seek" : GoString))) : GoString));
        s[30] = ((((("Read-only file system" : GoString))) : GoString));
        s[31] = ((((("Too many links" : GoString))) : GoString));
        s[32] = ((((("Broken pipe" : GoString))) : GoString));
        s[36] = ((((("File name too long" : GoString))) : GoString));
        s[38] = ((((("not implemented on js" : GoString))) : GoString));
        s[122] = ((((("Quota exceeded" : GoString))) : GoString));
        s[33] = ((((("Math arg out of domain of func" : GoString))) : GoString));
        s[34] = ((((("Math result not representable" : GoString))) : GoString));
        s[35] = ((((("Deadlock condition" : GoString))) : GoString));
        s[37] = ((((("No record locks available" : GoString))) : GoString));
        s[39] = ((((("Directory not empty" : GoString))) : GoString));
        s[40] = ((((("Too many symbolic links" : GoString))) : GoString));
        s[42] = ((((("No message of desired type" : GoString))) : GoString));
        s[43] = ((((("Identifier removed" : GoString))) : GoString));
        s[44] = ((((("Channel number out of range" : GoString))) : GoString));
        s[45] = ((((("Level 2 not synchronized" : GoString))) : GoString));
        s[46] = ((((("Level 3 halted" : GoString))) : GoString));
        s[47] = ((((("Level 3 reset" : GoString))) : GoString));
        s[48] = ((((("Link number out of range" : GoString))) : GoString));
        s[49] = ((((("Protocol driver not attached" : GoString))) : GoString));
        s[50] = ((((("No CSI structure available" : GoString))) : GoString));
        s[51] = ((((("Level 2 halted" : GoString))) : GoString));
        s[52] = ((((("Invalid exchange" : GoString))) : GoString));
        s[53] = ((((("Invalid request descriptor" : GoString))) : GoString));
        s[54] = ((((("Exchange full" : GoString))) : GoString));
        s[55] = ((((("No anode" : GoString))) : GoString));
        s[56] = ((((("Invalid request code" : GoString))) : GoString));
        s[57] = ((((("Invalid slot" : GoString))) : GoString));
        s[59] = ((((("Bad font file fmt" : GoString))) : GoString));
        s[60] = ((((("Device not a stream" : GoString))) : GoString));
        s[61] = ((((("No data (for no delay io)" : GoString))) : GoString));
        s[62] = ((((("Timer expired" : GoString))) : GoString));
        s[63] = ((((("Out of streams resources" : GoString))) : GoString));
        s[64] = ((((("Machine is not on the network" : GoString))) : GoString));
        s[65] = ((((("Package not installed" : GoString))) : GoString));
        s[66] = ((((("The object is remote" : GoString))) : GoString));
        s[67] = ((((("The link has been severed" : GoString))) : GoString));
        s[68] = ((((("Advertise error" : GoString))) : GoString));
        s[69] = ((((("Srmount error" : GoString))) : GoString));
        s[70] = ((((("Communication error on send" : GoString))) : GoString));
        s[71] = ((((("Protocol error" : GoString))) : GoString));
        s[72] = ((((("Multihop attempted" : GoString))) : GoString));
        s[73] = ((((("Cross mount point (not really error)" : GoString))) : GoString));
        s[74] = ((((("Trying to read unreadable message" : GoString))) : GoString));
        s[75] = ((((("Value too large for defined data type" : GoString))) : GoString));
        s[76] = ((((("Given log. name not unique" : GoString))) : GoString));
        s[77] = ((((("f.d. invalid for this operation" : GoString))) : GoString));
        s[78] = ((((("Remote address changed" : GoString))) : GoString));
        s[79] = ((((("Can\'t access a needed shared lib" : GoString))) : GoString));
        s[80] = ((((("Accessing a corrupted shared lib" : GoString))) : GoString));
        s[81] = (((((".lib section in a.out corrupted" : GoString))) : GoString));
        s[82] = ((((("Attempting to link in too many libs" : GoString))) : GoString));
        s[83] = ((((("Attempting to exec a shared library" : GoString))) : GoString));
        s[88] = ((((("Socket operation on non-socket" : GoString))) : GoString));
        s[89] = ((((("Destination address required" : GoString))) : GoString));
        s[90] = ((((("Message too long" : GoString))) : GoString));
        s[91] = ((((("Protocol wrong type for socket" : GoString))) : GoString));
        s[92] = ((((("Protocol not available" : GoString))) : GoString));
        s[93] = ((((("Unknown protocol" : GoString))) : GoString));
        s[94] = ((((("Socket type not supported" : GoString))) : GoString));
        s[95] = ((((("Operation not supported on transport endpoint" : GoString))) : GoString));
        s[96] = ((((("Protocol family not supported" : GoString))) : GoString));
        s[97] = ((((("Address family not supported by protocol family" : GoString))) : GoString));
        s[98] = ((((("Address already in use" : GoString))) : GoString));
        s[99] = ((((("Address not available" : GoString))) : GoString));
        s[100] = ((((("Network interface is not configured" : GoString))) : GoString));
        s[101] = ((((("Network is unreachable" : GoString))) : GoString));
        s[103] = ((((("Connection aborted" : GoString))) : GoString));
        s[104] = ((((("Connection reset by peer" : GoString))) : GoString));
        s[105] = ((((("No buffer space available" : GoString))) : GoString));
        s[106] = ((((("Socket is already connected" : GoString))) : GoString));
        s[107] = ((((("Socket is not connected" : GoString))) : GoString));
        s[108] = ((((("Can\'t send after socket shutdown" : GoString))) : GoString));
        s[110] = ((((("Connection timed out" : GoString))) : GoString));
        s[111] = ((((("Connection refused" : GoString))) : GoString));
        s[112] = ((((("Host is down" : GoString))) : GoString));
        s[113] = ((((("Host is unreachable" : GoString))) : GoString));
        s[114] = ((((("Socket already connected" : GoString))) : GoString));
        s[115] = ((((("Connection already in progress" : GoString))) : GoString));
        s[123] = ((((("No medium (in tape drive)" : GoString))) : GoString));
        s[125] = ((((("Operation canceled." : GoString))) : GoString));
        s[2048] = ((((("Inode is remote (not really error)" : GoString))) : GoString));
        s[2049] = ((((("Inappropriate file type or format" : GoString))) : GoString));
        s[2050] = ((((("No more files" : GoString))) : GoString));
        s[2052] = ((((("No such host or network path" : GoString))) : GoString));
        s[2053] = ((((("Filename exists with different case" : GoString))) : GoString));
        s;
    };
var _errEAGAIN : Error = {
        final __self__ = new Errno_wrapper(((11 : Errno)));
        __self__.error = #if !macro function():GoString return ((11 : Errno)).error() #else null #end;
        __self__.is_ = #if !macro function(_target:stdgo.Error):Bool return ((11 : Errno)).is_(_target) #else null #end;
        __self__.temporary = #if !macro function():Bool return ((11 : Errno)).temporary() #else null #end;
        __self__.timeout = #if !macro function():Bool return ((11 : Errno)).timeout() #else null #end;
        __self__;
    };
var _errEINVAL : Error = {
        final __self__ = new Errno_wrapper(((22 : Errno)));
        __self__.error = #if !macro function():GoString return ((22 : Errno)).error() #else null #end;
        __self__.is_ = #if !macro function(_target:stdgo.Error):Bool return ((22 : Errno)).is_(_target) #else null #end;
        __self__.temporary = #if !macro function():Bool return ((22 : Errno)).temporary() #else null #end;
        __self__.timeout = #if !macro function():Bool return ((22 : Errno)).timeout() #else null #end;
        __self__;
    };
var _errENOENT : Error = {
        final __self__ = new Errno_wrapper(((2 : Errno)));
        __self__.error = #if !macro function():GoString return ((2 : Errno)).error() #else null #end;
        __self__.is_ = #if !macro function(_target:stdgo.Error):Bool return ((2 : Errno)).is_(_target) #else null #end;
        __self__.temporary = #if !macro function():Bool return ((2 : Errno)).temporary() #else null #end;
        __self__.timeout = #if !macro function():Bool return ((2 : Errno)).timeout() #else null #end;
        __self__;
    };
var _errnoByCode : GoMap<GoString, Errno> = Go.map(((((("EPERM" : GoString))) : GoString)) => ((1 : Errno)),
((((("ENOENT" : GoString))) : GoString)) => ((2 : Errno)),
((((("ESRCH" : GoString))) : GoString)) => ((3 : Errno)),
((((("EINTR" : GoString))) : GoString)) => ((4 : Errno)),
((((("EIO" : GoString))) : GoString)) => ((5 : Errno)),
((((("ENXIO" : GoString))) : GoString)) => ((6 : Errno)),
((((("E2BIG" : GoString))) : GoString)) => ((7 : Errno)),
((((("ENOEXEC" : GoString))) : GoString)) => ((8 : Errno)),
((((("EBADF" : GoString))) : GoString)) => ((9 : Errno)),
((((("ECHILD" : GoString))) : GoString)) => ((10 : Errno)),
((((("EAGAIN" : GoString))) : GoString)) => ((11 : Errno)),
((((("ENOMEM" : GoString))) : GoString)) => ((12 : Errno)),
((((("EACCES" : GoString))) : GoString)) => ((13 : Errno)),
((((("EFAULT" : GoString))) : GoString)) => ((14 : Errno)),
((((("EBUSY" : GoString))) : GoString)) => ((16 : Errno)),
((((("EEXIST" : GoString))) : GoString)) => ((17 : Errno)),
((((("EXDEV" : GoString))) : GoString)) => ((18 : Errno)),
((((("ENODEV" : GoString))) : GoString)) => ((19 : Errno)),
((((("ENOTDIR" : GoString))) : GoString)) => ((20 : Errno)),
((((("EISDIR" : GoString))) : GoString)) => ((21 : Errno)),
((((("EINVAL" : GoString))) : GoString)) => ((22 : Errno)),
((((("ENFILE" : GoString))) : GoString)) => ((23 : Errno)),
((((("EMFILE" : GoString))) : GoString)) => ((24 : Errno)),
((((("ENOTTY" : GoString))) : GoString)) => ((25 : Errno)),
((((("EFBIG" : GoString))) : GoString)) => ((27 : Errno)),
((((("ENOSPC" : GoString))) : GoString)) => ((28 : Errno)),
((((("ESPIPE" : GoString))) : GoString)) => ((29 : Errno)),
((((("EROFS" : GoString))) : GoString)) => ((30 : Errno)),
((((("EMLINK" : GoString))) : GoString)) => ((31 : Errno)),
((((("EPIPE" : GoString))) : GoString)) => ((32 : Errno)),
((((("ENAMETOOLONG" : GoString))) : GoString)) => ((36 : Errno)),
((((("ENOSYS" : GoString))) : GoString)) => ((38 : Errno)),
((((("EDQUOT" : GoString))) : GoString)) => ((122 : Errno)),
((((("EDOM" : GoString))) : GoString)) => ((33 : Errno)),
((((("ERANGE" : GoString))) : GoString)) => ((34 : Errno)),
((((("EDEADLK" : GoString))) : GoString)) => ((35 : Errno)),
((((("ENOLCK" : GoString))) : GoString)) => ((37 : Errno)),
((((("ENOTEMPTY" : GoString))) : GoString)) => ((39 : Errno)),
((((("ELOOP" : GoString))) : GoString)) => ((40 : Errno)),
((((("ENOMSG" : GoString))) : GoString)) => ((42 : Errno)),
((((("EIDRM" : GoString))) : GoString)) => ((43 : Errno)),
((((("ECHRNG" : GoString))) : GoString)) => ((44 : Errno)),
((((("EL2NSYNC" : GoString))) : GoString)) => ((45 : Errno)),
((((("EL3HLT" : GoString))) : GoString)) => ((46 : Errno)),
((((("EL3RST" : GoString))) : GoString)) => ((47 : Errno)),
((((("ELNRNG" : GoString))) : GoString)) => ((48 : Errno)),
((((("EUNATCH" : GoString))) : GoString)) => ((49 : Errno)),
((((("ENOCSI" : GoString))) : GoString)) => ((50 : Errno)),
((((("EL2HLT" : GoString))) : GoString)) => ((51 : Errno)),
((((("EBADE" : GoString))) : GoString)) => ((52 : Errno)),
((((("EBADR" : GoString))) : GoString)) => ((53 : Errno)),
((((("EXFULL" : GoString))) : GoString)) => ((54 : Errno)),
((((("ENOANO" : GoString))) : GoString)) => ((55 : Errno)),
((((("EBADRQC" : GoString))) : GoString)) => ((56 : Errno)),
((((("EBADSLT" : GoString))) : GoString)) => ((57 : Errno)),
((((("EDEADLOCK" : GoString))) : GoString)) => ((35 : Errno)),
((((("EBFONT" : GoString))) : GoString)) => ((59 : Errno)),
((((("ENOSTR" : GoString))) : GoString)) => ((60 : Errno)),
((((("ENODATA" : GoString))) : GoString)) => ((61 : Errno)),
((((("ETIME" : GoString))) : GoString)) => ((62 : Errno)),
((((("ENOSR" : GoString))) : GoString)) => ((63 : Errno)),
((((("ENONET" : GoString))) : GoString)) => ((64 : Errno)),
((((("ENOPKG" : GoString))) : GoString)) => ((65 : Errno)),
((((("EREMOTE" : GoString))) : GoString)) => ((66 : Errno)),
((((("ENOLINK" : GoString))) : GoString)) => ((67 : Errno)),
((((("EADV" : GoString))) : GoString)) => ((68 : Errno)),
((((("ESRMNT" : GoString))) : GoString)) => ((69 : Errno)),
((((("ECOMM" : GoString))) : GoString)) => ((70 : Errno)),
((((("EPROTO" : GoString))) : GoString)) => ((71 : Errno)),
((((("EMULTIHOP" : GoString))) : GoString)) => ((72 : Errno)),
((((("EDOTDOT" : GoString))) : GoString)) => ((73 : Errno)),
((((("EBADMSG" : GoString))) : GoString)) => ((74 : Errno)),
((((("EOVERFLOW" : GoString))) : GoString)) => ((75 : Errno)),
((((("ENOTUNIQ" : GoString))) : GoString)) => ((76 : Errno)),
((((("EBADFD" : GoString))) : GoString)) => ((77 : Errno)),
((((("EREMCHG" : GoString))) : GoString)) => ((78 : Errno)),
((((("ELIBACC" : GoString))) : GoString)) => ((79 : Errno)),
((((("ELIBBAD" : GoString))) : GoString)) => ((80 : Errno)),
((((("ELIBSCN" : GoString))) : GoString)) => ((81 : Errno)),
((((("ELIBMAX" : GoString))) : GoString)) => ((82 : Errno)),
((((("ELIBEXEC" : GoString))) : GoString)) => ((83 : Errno)),
((((("EILSEQ" : GoString))) : GoString)) => ((84 : Errno)),
((((("EUSERS" : GoString))) : GoString)) => ((87 : Errno)),
((((("ENOTSOCK" : GoString))) : GoString)) => ((88 : Errno)),
((((("EDESTADDRREQ" : GoString))) : GoString)) => ((89 : Errno)),
((((("EMSGSIZE" : GoString))) : GoString)) => ((90 : Errno)),
((((("EPROTOTYPE" : GoString))) : GoString)) => ((91 : Errno)),
((((("ENOPROTOOPT" : GoString))) : GoString)) => ((92 : Errno)),
((((("EPROTONOSUPPORT" : GoString))) : GoString)) => ((93 : Errno)),
((((("ESOCKTNOSUPPORT" : GoString))) : GoString)) => ((94 : Errno)),
((((("EOPNOTSUPP" : GoString))) : GoString)) => ((95 : Errno)),
((((("EPFNOSUPPORT" : GoString))) : GoString)) => ((96 : Errno)),
((((("EAFNOSUPPORT" : GoString))) : GoString)) => ((97 : Errno)),
((((("EADDRINUSE" : GoString))) : GoString)) => ((98 : Errno)),
((((("EADDRNOTAVAIL" : GoString))) : GoString)) => ((99 : Errno)),
((((("ENETDOWN" : GoString))) : GoString)) => ((100 : Errno)),
((((("ENETUNREACH" : GoString))) : GoString)) => ((101 : Errno)),
((((("ENETRESET" : GoString))) : GoString)) => ((102 : Errno)),
((((("ECONNABORTED" : GoString))) : GoString)) => ((103 : Errno)),
((((("ECONNRESET" : GoString))) : GoString)) => ((104 : Errno)),
((((("ENOBUFS" : GoString))) : GoString)) => ((105 : Errno)),
((((("EISCONN" : GoString))) : GoString)) => ((106 : Errno)),
((((("ENOTCONN" : GoString))) : GoString)) => ((107 : Errno)),
((((("ESHUTDOWN" : GoString))) : GoString)) => ((108 : Errno)),
((((("ETOOMANYREFS" : GoString))) : GoString)) => ((109 : Errno)),
((((("ETIMEDOUT" : GoString))) : GoString)) => ((110 : Errno)),
((((("ECONNREFUSED" : GoString))) : GoString)) => ((111 : Errno)),
((((("EHOSTDOWN" : GoString))) : GoString)) => ((112 : Errno)),
((((("EHOSTUNREACH" : GoString))) : GoString)) => ((113 : Errno)),
((((("EALREADY" : GoString))) : GoString)) => ((114 : Errno)),
((((("EINPROGRESS" : GoString))) : GoString)) => ((115 : Errno)),
((((("ESTALE" : GoString))) : GoString)) => ((116 : Errno)),
((((("ENOTSUP" : GoString))) : GoString)) => ((95 : Errno)),
((((("ENOMEDIUM" : GoString))) : GoString)) => ((123 : Errno)),
((((("ECANCELED" : GoString))) : GoString)) => ((125 : Errno)),
((((("ELBIN" : GoString))) : GoString)) => ((2048 : Errno)),
((((("EFTYPE" : GoString))) : GoString)) => ((2049 : Errno)),
((((("ENMFILE" : GoString))) : GoString)) => ((2050 : Errno)),
((((("EPROCLIM" : GoString))) : GoString)) => ((2051 : Errno)),
((((("ENOSHARE" : GoString))) : GoString)) => ((2052 : Errno)),
((((("ECASECLASH" : GoString))) : GoString)) => ((2053 : Errno)),
((((("EWOULDBLOCK" : GoString))) : GoString)) => ((11 : Errno)));
var _envOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _envLock : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
var _env : GoMap<GoString, GoInt> = ((null : GoMap<GoString, GoInt>));
var _filesMu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
var __zero : GoUIntptr = ((0 : GoUIntptr));
var forkLock : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
typedef RawConn = StructType & {
    public function control(_f:(_fd:GoUIntptr) -> Void):Error;
    public function read(_f:(_fd:GoUIntptr) -> Bool):Error;
    public function write(_f:(_fd:GoUIntptr) -> Bool):Error;
};
typedef Conn = StructType & {
    public function syscallConn():{ var _0 : RawConn; var _1 : Error; };
};
@:structInit class T_jsFile {
    public var _path : GoString = "";
    public var _entries : Slice<GoString> = ((null : Slice<GoString>));
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
    public var addr : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
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
    public var addr : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
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
    public var name : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 256) ((0 : GoUInt8))]);
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
    public var utime : Timeval = new Timeval();
    public var stime : Timeval = new Timeval();
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
    public var env : Slice<GoString> = ((null : Slice<GoString>));
    public var files : Slice<GoUIntptr> = ((null : Slice<GoUIntptr>));
    public var sys : Ref<SysProcAttr> = ((null : SysProcAttr));
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
function _asanRead(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void return;
function _asanWrite(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void return;
/**
    // readInt returns the size-bytes unsigned integer in native byte order at offset off.
**/
function _readInt(_b:Slice<GoByte>, _off:GoUIntptr, _size:GoUIntptr):{ var _0 : GoUInt64; var _1 : Bool; } return { _0 : ((0 : GoUInt64)), _1 : false };
function _readIntBE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64 return ((0 : GoUInt64));
function _readIntLE(_b:Slice<GoByte>, _size:GoUIntptr):GoUInt64 return ((0 : GoUInt64));
/**
    // ParseDirent parses up to max directory entries in buf,
    // appending the names to names. It returns the number of
    // bytes consumed from buf, the number of entries added
    // to names, and the new names slice.
**/
function parseDirent(_buf:Slice<GoByte>, _max:GoInt, _names:Slice<GoString>):{ var _0 : GoInt; var _1 : GoInt; var _2 : Slice<GoString>; } return { _0 : ((0 : GoInt)), _1 : ((0 : GoInt)), _2 : ((null : Slice<GoString>)) };
function _runtime_envs():Slice<GoString> return ((null : Slice<GoString>));
/**
    // setenv_c and unsetenv_c are provided by the runtime but are no-ops
    // if cgo isn't loaded.
**/
function _setenv_c(_k:GoString, _v:GoString):Void return;
function _unsetenv_c(_k:GoString):Void return;
function _copyenv():Void return;
function unsetenv(_key:GoString):Error return ((null : stdgo.Error));
function getenv(_key:GoString):{ var _0 : GoString; var _1 : Bool; } return { _0 : (("" : GoString)), _1 : false };
function setenv(_key:GoString, _value:GoString):Error return ((null : stdgo.Error));
function clearenv():Void return;
function environ():Slice<GoString> return ((null : Slice<GoString>));
/**
    // Provided by package runtime.
**/
function _now():{ var _0 : GoInt64; var _1 : GoInt32; } return { _0 : ((0 : GoInt64)), _1 : ((0 : GoInt32)) };
function _fdToFile(_fd:GoInt):{ var _0 : T_jsFile; var _1 : Error; } return { _0 : ((null : T_jsFile)), _1 : ((null : stdgo.Error)) };
function open(_path:GoString, _openmode:GoInt, _perm:GoUInt32):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function close(_fd:GoInt):Error return ((null : stdgo.Error));
function closeOnExec(_fd:GoInt):Void return;
function mkdir(_path:GoString, _perm:GoUInt32):Error return ((null : stdgo.Error));
function readDirent(_fd:GoInt, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function _setStat(_st:Stat_t, _jsSt:stdgo.syscall.js.Js.Value):Void return;
function stat(_path:GoString, _st:Stat_t):Error return ((null : stdgo.Error));
function lstat(_path:GoString, _st:Stat_t):Error return ((null : stdgo.Error));
function fstat(_fd:GoInt, _st:Stat_t):Error return ((null : stdgo.Error));
function unlink(_path:GoString):Error return ((null : stdgo.Error));
function rmdir(_path:GoString):Error return ((null : stdgo.Error));
function chmod(_path:GoString, _mode:GoUInt32):Error return ((null : stdgo.Error));
function fchmod(_fd:GoInt, _mode:GoUInt32):Error return ((null : stdgo.Error));
function chown(_path:GoString, _uid:GoInt, _gid:GoInt):Error return ((null : stdgo.Error));
function fchown(_fd:GoInt, _uid:GoInt, _gid:GoInt):Error return ((null : stdgo.Error));
function lchown(_path:GoString, _uid:GoInt, _gid:GoInt):Error return ((null : stdgo.Error));
function utimesNano(_path:GoString, _ts:Slice<Timespec>):Error return ((null : stdgo.Error));
function rename(_from:GoString, _to:GoString):Error return ((null : stdgo.Error));
function truncate(_path:GoString, _length:GoInt64):Error return ((null : stdgo.Error));
function ftruncate(_fd:GoInt, _length:GoInt64):Error return ((null : stdgo.Error));
function getcwd(_buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function chdir(_path:GoString):Error return ((null : stdgo.Error));
function fchdir(_fd:GoInt):Error return ((null : stdgo.Error));
function readlink(_path:GoString, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function link(_path:GoString, _link:GoString):Error return ((null : stdgo.Error));
function symlink(_path:GoString, _link:GoString):Error return ((null : stdgo.Error));
function fsync(_fd:GoInt):Error return ((null : stdgo.Error));
function read(_fd:GoInt, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function write(_fd:GoInt, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function pread(_fd:GoInt, _b:Slice<GoByte>, _offset:GoInt64):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function pwrite(_fd:GoInt, _b:Slice<GoByte>, _offset:GoInt64):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function seek(_fd:GoInt, _offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } return { _0 : ((0 : GoInt64)), _1 : ((null : stdgo.Error)) };
function dup(_fd:GoInt):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function dup2(_fd:GoInt, _newfd:GoInt):Error return ((null : stdgo.Error));
function pipe(_fd:Slice<GoInt>):Error return ((null : stdgo.Error));
function _fsCall(_name:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : stdgo.syscall.js.Js.Value; var _1 : Error; } return { _0 : new stdgo.syscall.js.Js.Value(), _1 : ((null : stdgo.Error)) };
/**
    // checkPath checks that the path is not empty and that it contains no null characters.
**/
function _checkPath(_path:GoString):Error return ((null : stdgo.Error));
function _recoverErr(_errPtr:Error):Void return;
/**
    // mapJSError maps an error given by Node.js to the appropriate Go error
**/
function _mapJSError(_jsErr:stdgo.syscall.js.Js.Value):Error return ((null : stdgo.Error));
function _msanRead(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void return;
function _msanWrite(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:GoInt):Void return;
function socket(_proto:GoInt, _sotype:GoInt, _unused:GoInt):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function bind(_fd:GoInt, _sa:Sockaddr):Error return ((null : stdgo.Error));
function stopIO(_fd:GoInt):Error return ((null : stdgo.Error));
function listen(_fd:GoInt, _backlog:GoInt):Error return ((null : stdgo.Error));
function accept(_fd:GoInt):{ var _0 : GoInt; var _1 : Sockaddr; var _2 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : Sockaddr)), _2 : ((null : stdgo.Error)) };
function connect(_fd:GoInt, _sa:Sockaddr):Error return ((null : stdgo.Error));
function recvfrom(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt):{ var _0 : GoInt; var _1 : Sockaddr; var _2 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : Sockaddr)), _2 : ((null : stdgo.Error)) };
function sendto(_fd:GoInt, _p:Slice<GoByte>, _flags:GoInt, _to:Sockaddr):Error return ((null : stdgo.Error));
function recvmsg(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _flags:GoInt):{ var _0 : GoInt; var _1 : GoInt; var _2 : GoInt; var _3 : Sockaddr; var _4 : Error; } return { _0 : ((0 : GoInt)), _1 : ((0 : GoInt)), _2 : ((0 : GoInt)), _3 : ((null : Sockaddr)), _4 : ((null : stdgo.Error)) };
function sendmsgN(_fd:GoInt, _p:Slice<GoByte>, _oob:Slice<GoByte>, _to:Sockaddr, _flags:GoInt):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function getsockoptInt(_fd:GoInt, _level:GoInt, _opt:GoInt):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function setsockoptInt(_fd:GoInt, _level:GoInt, _opt:GoInt, _value:GoInt):Error return ((null : stdgo.Error));
function setReadDeadline(_fd:GoInt, _t:GoInt64):Error return ((null : stdgo.Error));
function setWriteDeadline(_fd:GoInt, _t:GoInt64):Error return ((null : stdgo.Error));
function shutdown(_fd:GoInt, _how:GoInt):Error return ((null : stdgo.Error));
function setNonblock(_fd:GoInt, _nonblocking:Bool):Error return ((null : stdgo.Error));
/**
    // StringByteSlice converts a string to a NUL-terminated []byte,
    // If s contains a NUL byte this function panics instead of
    // returning an error.
    //
    // Deprecated: Use ByteSliceFromString instead.
**/
function stringByteSlice(_s:GoString):Slice<GoByte> return ((null : Slice<GoUInt8>));
/**
    // ByteSliceFromString returns a NUL-terminated slice of bytes
    // containing the text of s. If s contains a NUL byte at any
    // location, it returns (nil, EINVAL).
**/
function byteSliceFromString(_s:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } return { _0 : ((null : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
/**
    // StringBytePtr returns a pointer to a NUL-terminated array of bytes.
    // If s contains a NUL byte this function panics instead of returning
    // an error.
    //
    // Deprecated: Use BytePtrFromString instead.
**/
function stringBytePtr(_s:GoString):Pointer<GoByte> return ((null : Pointer<GoUInt8>));
/**
    // BytePtrFromString returns a pointer to a NUL-terminated array of
    // bytes containing the text of s. If s contains a NUL byte at any
    // location, it returns (nil, EINVAL).
**/
function bytePtrFromString(_s:GoString):{ var _0 : Pointer<GoByte>; var _1 : Error; } return { _0 : ((null : Pointer<GoUInt8>)), _1 : ((null : stdgo.Error)) };
function getpagesize():GoInt return ((0 : GoInt));
function exit(_code:GoInt):Void return;
function _direntIno(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } return { _0 : ((0 : GoUInt64)), _1 : false };
function _direntReclen(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } return { _0 : ((0 : GoUInt64)), _1 : false };
function _direntNamlen(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Bool; } return { _0 : ((0 : GoUInt64)), _1 : false };
function syscall(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr):{ var _0 : GoUIntptr; var _1 : GoUIntptr; var _2 : Errno; } return { _0 : ((0 : GoUIntptr)), _1 : ((0 : GoUIntptr)), _2 : new Errno() };
function syscall6(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr, _a4:GoUIntptr, _a5:GoUIntptr, _a6:GoUIntptr):{ var _0 : GoUIntptr; var _1 : GoUIntptr; var _2 : Errno; } return { _0 : ((0 : GoUIntptr)), _1 : ((0 : GoUIntptr)), _2 : new Errno() };
function rawSyscall(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr):{ var _0 : GoUIntptr; var _1 : GoUIntptr; var _2 : Errno; } return { _0 : ((0 : GoUIntptr)), _1 : ((0 : GoUIntptr)), _2 : new Errno() };
function rawSyscall6(_trap:GoUIntptr, _a1:GoUIntptr, _a2:GoUIntptr, _a3:GoUIntptr, _a4:GoUIntptr, _a5:GoUIntptr, _a6:GoUIntptr):{ var _0 : GoUIntptr; var _1 : GoUIntptr; var _2 : Errno; } return { _0 : ((0 : GoUIntptr)), _1 : ((0 : GoUIntptr)), _2 : new Errno() };
function sysctl(_key:GoString):{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
function getwd():{ var _0 : GoString; var _1 : Error; } return { _0 : (("" : GoString)), _1 : ((null : stdgo.Error)) };
function getuid():GoInt return ((0 : GoInt));
function getgid():GoInt return ((0 : GoInt));
function geteuid():GoInt return ((0 : GoInt));
function getegid():GoInt return ((0 : GoInt));
function getgroups():{ var _0 : Slice<GoInt>; var _1 : Error; } return { _0 : ((null : Slice<GoInt>)), _1 : ((null : stdgo.Error)) };
function getpid():GoInt return ((0 : GoInt));
function getppid():GoInt return ((0 : GoInt));
function umask(_mask:GoInt):GoInt return ((0 : GoInt));
function gettimeofday(_tv:Timeval):Error return ((null : stdgo.Error));
function kill(_pid:GoInt, _signum:Signal):Error return ((null : stdgo.Error));
function sendfile(_outfd:GoInt, _infd:GoInt, _offset:Pointer<GoInt64>, _count:GoInt):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function startProcess(_argv0:GoString, _argv:Slice<GoString>, _attr:ProcAttr):{ var _0 : GoInt; var _1 : GoUIntptr; var _2 : Error; } return { _0 : ((0 : GoInt)), _1 : ((0 : GoUIntptr)), _2 : ((null : stdgo.Error)) };
function wait4(_pid:GoInt, _wstatus:Pointer<WaitStatus>, _options:GoInt, _rusage:Rusage):{ var _0 : GoInt; var _1 : Error; } return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
function _setTimespec(_sec:GoInt64, _nsec:GoInt64):Timespec return new Timespec();
function _setTimeval(_sec:GoInt64, _usec:GoInt64):Timeval return new Timeval();
/**
    // errnoErr returns common boxed Errno values, to prevent
    // allocations at runtime.
**/
function _errnoErr(_e:Errno):Error return ((null : stdgo.Error));
function _faketimeWrite(_fd:GoInt, _p:Slice<GoByte>):GoInt return ((0 : GoInt));
/**
    // TimespecToNSec returns the time stored in ts as nanoseconds.
**/
function timespecToNsec(_ts:Timespec):GoInt64 return ((0 : GoInt64));
/**
    // NsecToTimespec converts a number of nanoseconds into a Timespec.
**/
function nsecToTimespec(_nsec:GoInt64):Timespec return new Timespec();
/**
    // TimevalToNsec returns the time stored in tv as nanoseconds.
**/
function timevalToNsec(_tv:Timeval):GoInt64 return ((0 : GoInt64));
/**
    // NsecToTimeval converts a number of nanoseconds into a Timeval.
**/
function nsecToTimeval(_nsec:GoInt64):Timeval return new Timeval();
@:keep class Timespec_static_extension {
    /**
        // Nano returns the time stored in ts as nanoseconds.
    **/
    @:keep
    static public function nano( _ts:Timespec):GoInt64 return ((0 : GoInt64));
    /**
        // Unix returns the time stored in ts as seconds plus nanoseconds.
    **/
    @:keep
    static public function unix( _ts:Timespec):{ var _0 : GoInt64; var _1 : GoInt64; } return { _0 : ((0 : GoInt64)), _1 : ((0 : GoInt64)) };
}
class Timespec_wrapper {
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
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Timespec;
}
@:keep class Timeval_static_extension {
    /**
        // Nano returns the time stored in tv as nanoseconds.
    **/
    @:keep
    static public function nano( _tv:Timeval):GoInt64 return ((0 : GoInt64));
    /**
        // Unix returns the time stored in tv as seconds plus nanoseconds.
    **/
    @:keep
    static public function unix( _tv:Timeval):{ var _0 : GoInt64; var _1 : GoInt64; } return { _0 : ((0 : GoInt64)), _1 : ((0 : GoInt64)) };
}
class Timeval_wrapper {
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
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Timeval;
}
@:keep class Errno_static_extension {
    @:keep
    static public function timeout( _e:Errno):Bool return false;
    @:keep
    static public function temporary( _e:Errno):Bool return false;
    @:keep
    static public function is_( _e:Errno, _target:Error):Bool return false;
    @:keep
    static public function error( _e:Errno):GoString return (("" : GoString));
}
class Errno_wrapper {
    @:keep
    public var timeout : () -> Bool = null;
    @:keep
    public var temporary : () -> Bool = null;
    @:keep
    public var is_ : Error -> Bool = null;
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Errno;
}
@:keep class Signal_static_extension {
    @:keep
    static public function toString( _s:Signal):GoString return (("" : GoString));
    @:keep
    static public function signal( _s:Signal):Void return;
}
class Signal_wrapper {
    @:keep
    public var toString : () -> GoString = null;
    @:keep
    public var signal : () -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Signal;
}
@:keep class WaitStatus_static_extension {
    @:keep
    static public function trapCause( _w:WaitStatus):GoInt return ((0 : GoInt));
    @:keep
    static public function stopSignal( _w:WaitStatus):Signal return new Signal();
    @:keep
    static public function continued( _w:WaitStatus):Bool return false;
    @:keep
    static public function stopped( _w:WaitStatus):Bool return false;
    @:keep
    static public function coreDump( _w:WaitStatus):Bool return false;
    @:keep
    static public function signal( _w:WaitStatus):Signal return new Signal();
    @:keep
    static public function signaled( _w:WaitStatus):Bool return false;
    @:keep
    static public function exitStatus( _w:WaitStatus):GoInt return ((0 : GoInt));
    @:keep
    static public function exited( _w:WaitStatus):Bool return false;
}
class WaitStatus_wrapper {
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
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : WaitStatus;
}
