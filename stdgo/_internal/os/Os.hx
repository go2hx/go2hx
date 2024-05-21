package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
private var __go2hxdoc__package : Bool;
final _readdirName : stdgo._internal.os.Os.T_readdirMode = ((0 : stdgo.GoInt) : stdgo._internal.os.Os.T_readdirMode);
final _readdirDirEntry = ((0 : stdgo.GoInt) : stdgo._internal.os.Os.T_readdirMode);
final _readdirFileInfo = ((0 : stdgo.GoInt) : stdgo._internal.os.Os.T_readdirMode);
var _testingForceReadDirLstat : Bool = false;
final _blockSize : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _isBigEndian : Bool = false;
final o_RDONLY : stdgo.GoInt = (0 : stdgo.GoInt);
final o_WRONLY : stdgo.GoInt = (0 : stdgo.GoInt);
final o_RDWR : stdgo.GoInt = (0 : stdgo.GoInt);
final o_APPEND : stdgo.GoInt = (0 : stdgo.GoInt);
final o_CREATE : stdgo.GoInt = (0 : stdgo.GoInt);
final o_EXCL : stdgo.GoInt = (0 : stdgo.GoInt);
final o_SYNC : stdgo.GoInt = (0 : stdgo.GoInt);
final o_TRUNC : stdgo.GoInt = (0 : stdgo.GoInt);
final seek_SET : stdgo.GoInt = (0 : stdgo.GoInt);
final seek_CUR : stdgo.GoInt = (0 : stdgo.GoInt);
final seek_END : stdgo.GoInt = (0 : stdgo.GoInt);
final __UTIME_OMIT : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _kindNewFile : stdgo._internal.os.Os.T_newFileKind = ((0 : stdgo.GoInt) : stdgo._internal.os.Os.T_newFileKind);
final _kindOpenFile = ((0 : stdgo.GoInt) : stdgo._internal.os.Os.T_newFileKind);
final _kindPipe = ((0 : stdgo.GoInt) : stdgo._internal.os.Os.T_newFileKind);
final _kindNonBlock = ((0 : stdgo.GoInt) : stdgo._internal.os.Os.T_newFileKind);
final _kindNoPoll = ((0 : stdgo.GoInt) : stdgo._internal.os.Os.T_newFileKind);
final devNull : stdgo.GoString = ("" : stdgo.GoString);
var _getwdCache : T__struct_0 = ({ mutex : ({} : stdgo._internal.sync.Sync.Mutex), _dir : ("" : stdgo.GoString) } : T__struct_0);
final pathSeparator : stdgo.GoInt32 = (0 : stdgo.GoInt32);
final pathListSeparator : stdgo.GoInt32 = (0 : stdgo.GoInt32);
var args : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
final _supportsCreateWithStickyBit : Bool = false;
final _hex : stdgo.GoString = ("" : stdgo.GoString);
final _supportsCloseOnExec : Bool = false;
final modeDir : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modeAppend : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modeExclusive : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modeTemporary : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modeSymlink : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modeDevice : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modeNamedPipe : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modeSocket : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modeSetuid : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modeSetgid : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modeCharDevice : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modeSticky : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modeIrregular : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modeType : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
final modePerm : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
var _dirBufPool : stdgo._internal.sync.Sync.Pool = ({} : stdgo._internal.sync.Sync.Pool);
var errInvalid : stdgo.Error = (null : stdgo.Error);
var errPermission : stdgo.Error = (null : stdgo.Error);
var errExist : stdgo.Error = (null : stdgo.Error);
var errNotExist : stdgo.Error = (null : stdgo.Error);
var errClosed : stdgo.Error = (null : stdgo.Error);
var errNoDeadline : stdgo.Error = (null : stdgo.Error);
var errDeadlineExceeded : stdgo.Error = (null : stdgo.Error);
var errProcessDone : stdgo.Error = (null : stdgo.Error);
var interrupt : stdgo._internal.os.Os.Signal = (null : stdgo._internal.os.Os.Signal);
var kill : stdgo._internal.os.Os.Signal = (null : stdgo._internal.os.Os.Signal);
var _errWriteAtInAppendMode : stdgo.Error = (null : stdgo.Error);
var _checkWrapErr : Bool = false;
var stdin : stdgo.Ref<stdgo._internal.os.Os.File> = {
        final input:haxe.io.Input = #if (target.sys || hxnodejs) Sys.stdin() #else null #end;
        new File(input, null);
    };
var stdout : stdgo.Ref<stdgo._internal.os.Os.File> = {
        final output:haxe.io.Output = #if (target.sys || hxnodejs) Sys.stdout() #else null #end;
        new File(null, output);
    };
var stderr : stdgo.Ref<stdgo._internal.os.Os.File> = {
        final output:haxe.io.Output = #if (target.sys || hxnodejs) Sys.stderr() #else null #end;
        new File(null, output);
    };
var _errPatternHasSeparator : stdgo.Error = (null : stdgo.Error);
var _lstat : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } = null;
var atime : stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time = null;
var lstatP : stdgo.Ref<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }> = (null : stdgo.Ref<stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }>);
var errWriteAtInAppendMode : stdgo.Error = (null : stdgo.Error);
var testingForceReadDirLstat : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
var errPatternHasSeparator : stdgo.Error = (null : stdgo.Error);
var splitPath : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = null;
@:keep class T_timeout_static_extension {
    static public function timeout(t:T_timeout):Bool return t.timeout();
}
typedef T_timeout = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function timeout():Bool;
};
@:keep class Signal_static_extension {
    static public function signal(t:Signal):Void t.signal();
    static public function string(t:Signal):stdgo.GoString return t.string();
}
typedef Signal = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
    /**
        
        
        to distinguish from other Stringers
    **/
    public dynamic function signal():Void;
};
@:structInit @:private @:using(stdgo._internal.os.Os.T_dirInfo_static_extension) class T_dirInfo {
    public var _buf : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
    public var _nbuf : stdgo.GoInt = 0;
    public var _bufp : stdgo.GoInt = 0;
    public function new(?_buf:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, ?_nbuf:stdgo.GoInt, ?_bufp:stdgo.GoInt) {
        if (_buf != null) this._buf = _buf;
        if (_nbuf != null) this._nbuf = _nbuf;
        if (_bufp != null) this._bufp = _bufp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dirInfo(_buf, _nbuf, _bufp);
    }
}
@:structInit @:using(stdgo._internal.os.Os.SyscallError_static_extension) class SyscallError {
    public var syscall : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?syscall:stdgo.GoString, ?err:stdgo.Error) {
        if (syscall != null) this.syscall = syscall;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SyscallError(syscall, err);
    }
}
@:structInit @:using(stdgo._internal.os.Os.Process_static_extension) class Process {
    public var pid : stdgo.GoInt = 0;
    public var _handle : stdgo.GoUIntptr = 0;
    public var _isdone : stdgo._internal.sync.atomic_.Atomic_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic_.Bool_);
    public var _sigMu : stdgo._internal.sync.Sync.RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
    public function new(?pid:stdgo.GoInt, ?_handle:stdgo.GoUIntptr, ?_isdone:stdgo._internal.sync.atomic_.Atomic_.Bool_, ?_sigMu:stdgo._internal.sync.Sync.RWMutex) {
        if (pid != null) this.pid = pid;
        if (_handle != null) this._handle = _handle;
        if (_isdone != null) this._isdone = _isdone;
        if (_sigMu != null) this._sigMu = _sigMu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Process(pid, _handle, _isdone, _sigMu);
    }
}
@:structInit class ProcAttr {
    public var dir : stdgo.GoString = "";
    public var env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var files : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>);
    public var sys : stdgo.Ref<stdgo._internal.syscall.Syscall.SysProcAttr> = (null : stdgo.Ref<stdgo._internal.syscall.Syscall.SysProcAttr>);
    public function new(?dir:stdgo.GoString, ?env:stdgo.Slice<stdgo.GoString>, ?files:stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>, ?sys:stdgo.Ref<stdgo._internal.syscall.Syscall.SysProcAttr>) {
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
@:structInit @:using(stdgo._internal.os.Os.ProcessState_static_extension) class ProcessState {
    public var _pid : stdgo.GoInt = 0;
    public var _status : stdgo._internal.syscall.Syscall.WaitStatus = ((0 : stdgo.GoUInt32) : stdgo._internal.syscall.Syscall.WaitStatus);
    public var _rusage : stdgo.Ref<stdgo._internal.syscall.Syscall.Rusage> = (null : stdgo.Ref<stdgo._internal.syscall.Syscall.Rusage>);
    public function new(?_pid:stdgo.GoInt, ?_status:stdgo._internal.syscall.Syscall.WaitStatus, ?_rusage:stdgo.Ref<stdgo._internal.syscall.Syscall.Rusage>) {
        if (_pid != null) this._pid = _pid;
        if (_status != null) this._status = _status;
        if (_rusage != null) this._rusage = _rusage;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ProcessState(_pid, _status, _rusage);
    }
}
@:structInit @:using(stdgo._internal.os.Os.LinkError_static_extension) class LinkError {
    public var op : stdgo.GoString = "";
    public var old : stdgo.GoString = "";
    public var new_ : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?op:stdgo.GoString, ?old:stdgo.GoString, ?new_:stdgo.GoString, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (old != null) this.old = old;
        if (new_ != null) this.new_ = new_;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LinkError(op, old, new_, err);
    }
}
@:structInit @:private @:using(stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension) class T_fileWithoutReadFrom {
    @:embedded
    public var file : stdgo.Ref<stdgo._internal.os.Os.File> = (null : stdgo.Ref<stdgo._internal.os.Os.File>);
    public function new(?file:stdgo.Ref<stdgo._internal.os.Os.File>) {
        if (file != null) this.file = file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function chdir():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function chmod(_mode:stdgo._internal.io.fs.Fs.FileMode):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function chown(_uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function close():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function fd():stdgo.GoUIntptr return (0 : stdgo.GoUIntptr);
    @:embedded
    public function name():stdgo.GoString return ("" : stdgo.GoString);
    @:embedded
    public function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function readAt(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function readDir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function readdir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function readdirnames(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function setDeadline(__0:stdgo._internal.time.Time.Time):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function setReadDeadline(__0:stdgo._internal.time.Time.Time):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function setWriteDeadline(__0:stdgo._internal.time.Time.Time):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function stat():{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function sync():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function syscallConn():{ var _0 : stdgo._internal.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function truncate(__0:stdgo.GoInt64):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function writeAt(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _checkValid(__0:stdgo.GoString):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _chmod(_mode:stdgo._internal.io.fs.Fs.FileMode):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _close():stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _pread(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _pwrite(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _readdir(_n:stdgo.GoInt, _mode:stdgo._internal.os.Os.T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _2 : stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:typeType null;
    @:embedded
    public function _setDeadline(__0:stdgo._internal.time.Time.Time):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _setReadDeadline(__0:stdgo._internal.time.Time.Time):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _setWriteDeadline(__0:stdgo._internal.time.Time.Time):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _wrapErr(_op:stdgo.GoString, _err:stdgo.Error):stdgo.Error return (null : stdgo.Error);
    @:embedded
    public function _write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:typeType null;
    public function __copy__() {
        return new T_fileWithoutReadFrom(file);
    }
}
@:structInit @:private @:using(stdgo._internal.os.Os.T_file_static_extension) class T_file {
    public var _pfd : stdgo._internal.internal.poll.Poll.FD = ({} : stdgo._internal.internal.poll.Poll.FD);
    public var _name : stdgo.GoString = "";
    public var _dirinfo : stdgo.Ref<stdgo._internal.os.Os.T_dirInfo> = (null : stdgo.Ref<stdgo._internal.os.Os.T_dirInfo>);
    public var _nonblock : Bool = false;
    public var _stdoutOrErr : Bool = false;
    public var _appendMode : Bool = false;
    public function new(?_pfd:stdgo._internal.internal.poll.Poll.FD, ?_name:stdgo.GoString, ?_dirinfo:stdgo.Ref<stdgo._internal.os.Os.T_dirInfo>, ?_nonblock:Bool, ?_stdoutOrErr:Bool, ?_appendMode:Bool) {
        if (_pfd != null) this._pfd = _pfd;
        if (_name != null) this._name = _name;
        if (_dirinfo != null) this._dirinfo = _dirinfo;
        if (_nonblock != null) this._nonblock = _nonblock;
        if (_stdoutOrErr != null) this._stdoutOrErr = _stdoutOrErr;
        if (_appendMode != null) this._appendMode = _appendMode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_file(_pfd, _name, _dirinfo, _nonblock, _stdoutOrErr, _appendMode);
    }
}
@:structInit @:private @:using(stdgo._internal.os.Os.T_unixDirent_static_extension) class T_unixDirent {
    public var _parent : stdgo.GoString = "";
    public var _name : stdgo.GoString = "";
    public var _typ : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
    public var _info : stdgo._internal.io.fs.Fs.FileInfo = (null : stdgo._internal.io.fs.Fs.FileInfo);
    public function new(?_parent:stdgo.GoString, ?_name:stdgo.GoString, ?_typ:stdgo._internal.io.fs.Fs.FileMode, ?_info:stdgo._internal.io.fs.Fs.FileInfo) {
        if (_parent != null) this._parent = _parent;
        if (_name != null) this._name = _name;
        if (_typ != null) this._typ = _typ;
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unixDirent(_parent, _name, _typ, _info);
    }
}
@:structInit @:private @:using(stdgo._internal.os.Os.T_rawConn_static_extension) class T_rawConn {
    public var _file : stdgo.Ref<stdgo._internal.os.Os.File> = (null : stdgo.Ref<stdgo._internal.os.Os.File>);
    public function new(?_file:stdgo.Ref<stdgo._internal.os.Os.File>) {
        if (_file != null) this._file = _file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rawConn(_file);
    }
}
@:structInit @:using(stdgo._internal.os.Os.File_static_extension) class File {
    @:embedded
    public var _file : stdgo.Ref<stdgo._internal.os.Os.T_file> = (null : stdgo.Ref<stdgo._internal.os.Os.T_file>);
    @:local
    var _input : haxe.io.Input = null;
    @:local
    var _output : haxe.io.Output = null;
    public function new(?_file:stdgo.Ref<stdgo._internal.os.Os.T_file>, ?_input:haxe.io.Input, ?_output:haxe.io.Output) {
        if (_file != null) this._file = _file;
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _close():stdgo.Error return (null : stdgo.Error);
    public function __copy__() {
        return new File(_file, _input, _output);
    }
}
@:structInit @:private @:using(stdgo._internal.os.Os.T_fileStat_static_extension) class T_fileStat {
    public var _name : stdgo.GoString = "";
    public var _size : stdgo.GoInt64 = 0;
    public var _mode : stdgo._internal.io.fs.Fs.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs.FileMode);
    public var _modTime : stdgo._internal.time.Time.Time = ({} : stdgo._internal.time.Time.Time);
    public var _sys : stdgo._internal.syscall.Syscall.Stat_t = ({} : stdgo._internal.syscall.Syscall.Stat_t);
    public function new(?_name:stdgo.GoString, ?_size:stdgo.GoInt64, ?_mode:stdgo._internal.io.fs.Fs.FileMode, ?_modTime:stdgo._internal.time.Time.Time, ?_sys:stdgo._internal.syscall.Syscall.Stat_t) {
        if (_name != null) this._name = _name;
        if (_size != null) this._size = _size;
        if (_mode != null) this._mode = _mode;
        if (_modTime != null) this._modTime = _modTime;
        if (_sys != null) this._sys = _sys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fileStat(_name, _size, _mode, _modTime, _sys);
    }
}
class T__struct_0_asInterface {
    @:embedded
    public dynamic function _unlockSlow(__0:stdgo.GoInt32):Void __self__.value._unlockSlow(__0);
    @:embedded
    public dynamic function _lockSlow():Void __self__.value._lockSlow();
    @:embedded
    public dynamic function unlock():Void __self__.value.unlock();
    @:embedded
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:embedded
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.Os.T__struct_0_asInterface) class T__struct_0_static_extension {
    @:embedded
    public static function _unlockSlow( __self__:T__struct_0, __0:stdgo.GoInt32) @:typeType null;
    @:embedded
    public static function _lockSlow( __self__:T__struct_0) @:typeType null;
    @:embedded
    public static function unlock( __self__:T__struct_0) @:typeType null;
    @:embedded
    public static function tryLock( __self__:T__struct_0):Bool return return false;
    @:embedded
    public static function lock( __self__:T__struct_0) @:typeType null;
}
@:local @:using(stdgo._internal.os.Os.T__struct_0_static_extension) typedef T__struct_0 = {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync.Mutex;
    public var _dir : stdgo.GoString;
};
@:named typedef T_readdirMode = stdgo.GoInt;
@:follow typedef DirEntry = stdgo._internal.io.fs.Fs.DirEntry;
@:follow typedef PathError = stdgo._internal.io.fs.Fs.PathError;
@:follow typedef T_syscallErrorType = stdgo._internal.syscall.Syscall.Errno;
@:named @:using(stdgo._internal.os.Os.T_dirFS_static_extension) typedef T_dirFS = stdgo.GoString;
@:named typedef T_newFileKind = stdgo.GoInt;
@:follow typedef FileInfo = stdgo._internal.io.fs.Fs.FileInfo;
@:follow typedef FileMode = stdgo._internal.io.fs.Fs.FileMode;
function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } throw ":os.readDir is not yet implemented";
function _readInt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoUIntptr, _size:stdgo.GoUIntptr):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } throw ":os._readInt is not yet implemented";
function _readIntBE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):stdgo.GoUInt64 throw ":os._readIntBE is not yet implemented";
function _readIntLE(_b:stdgo.Slice<stdgo.GoByte>, _size:stdgo.GoUIntptr):stdgo.GoUInt64 throw ":os._readIntLE is not yet implemented";
function _direntIno(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } throw ":os._direntIno is not yet implemented";
function _direntReclen(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } throw ":os._direntReclen is not yet implemented";
function _direntNamlen(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } throw ":os._direntNamlen is not yet implemented";
function _direntType(_buf:stdgo.Slice<stdgo.GoByte>):FileMode throw ":os._direntType is not yet implemented";
function expand(_s:stdgo.GoString, _mapping:stdgo.GoString -> stdgo.GoString):stdgo.GoString throw ":os.expand is not yet implemented";
function expandEnv(_s:stdgo.GoString):stdgo.GoString throw ":os.expandEnv is not yet implemented";
function _isShellSpecialVar(_c:stdgo.GoUInt8):Bool throw ":os._isShellSpecialVar is not yet implemented";
function _isAlphaNum(_c:stdgo.GoUInt8):Bool throw ":os._isAlphaNum is not yet implemented";
function _getShellName(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } throw ":os._getShellName is not yet implemented";
function getenv(_key:stdgo.GoString):stdgo.GoString throw ":os.getenv is not yet implemented";
function lookupEnv(_key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } throw ":os.lookupEnv is not yet implemented";
function setenv(_key:stdgo.GoString, _value:stdgo.GoString):stdgo.Error throw ":os.setenv is not yet implemented";
function unsetenv(_key:stdgo.GoString):stdgo.Error throw ":os.unsetenv is not yet implemented";
function clearenv():Void throw ":os.clearenv is not yet implemented";
function environ():stdgo.Slice<stdgo.GoString> {
        final slice = new stdgo.Slice<stdgo.GoString>(0, 0);
        return slice;
    }
function _errNoDeadline():stdgo.Error throw ":os._errNoDeadline is not yet implemented";
function _errDeadlineExceeded():stdgo.Error throw ":os._errDeadlineExceeded is not yet implemented";
function newSyscallError(_syscall:stdgo.GoString, _err:stdgo.Error):stdgo.Error throw ":os.newSyscallError is not yet implemented";
function isExist(_err:stdgo.Error):Bool throw ":os.isExist is not yet implemented";
function isNotExist(_err:stdgo.Error):Bool throw ":os.isNotExist is not yet implemented";
function isPermission(_err:stdgo.Error):Bool throw ":os.isPermission is not yet implemented";
function isTimeout(_err:stdgo.Error):Bool throw ":os.isTimeout is not yet implemented";
function _underlyingErrorIs(_err:stdgo.Error, _target:stdgo.Error):Bool throw ":os._underlyingErrorIs is not yet implemented";
function _underlyingError(_err:stdgo.Error):stdgo.Error throw ":os._underlyingError is not yet implemented";
function _wrapSyscallError(_name:stdgo.GoString, _err:stdgo.Error):stdgo.Error throw ":os._wrapSyscallError is not yet implemented";
function _newProcess(_pid:stdgo.GoInt, _handle:stdgo.GoUIntptr):stdgo.Ref<Process> throw ":os._newProcess is not yet implemented";
function getpid():stdgo.GoInt throw ":os.getpid is not yet implemented";
function getppid():stdgo.GoInt throw ":os.getppid is not yet implemented";
function findProcess(_pid:stdgo.GoInt):{ var _0 : stdgo.Ref<Process>; var _1 : stdgo.Error; } throw ":os.findProcess is not yet implemented";
function startProcess(_name:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<ProcAttr>):{ var _0 : stdgo.Ref<Process>; var _1 : stdgo.Error; } throw ":os.startProcess is not yet implemented";
function _startProcess(_name:stdgo.GoString, _argv:stdgo.Slice<stdgo.GoString>, _attr:stdgo.Ref<ProcAttr>):{ var _0 : stdgo.Ref<Process>; var _1 : stdgo.Error; } throw ":os._startProcess is not yet implemented";
function _findProcess(_pid:stdgo.GoInt):{ var _0 : stdgo.Ref<Process>; var _1 : stdgo.Error; } throw ":os._findProcess is not yet implemented";
function executable():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.executable is not yet implemented";
function _executable():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os._executable is not yet implemented";
function _genericReadFrom(_f:stdgo.Ref<File>, _r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw ":os._genericReadFrom is not yet implemented";
function mkdir(_name:stdgo.GoString, _perm:FileMode):stdgo.Error throw ":os.mkdir is not yet implemented";
function _setStickyBit(_name:stdgo.GoString):stdgo.Error throw ":os._setStickyBit is not yet implemented";
function chdir(_dir:stdgo.GoString):stdgo.Error throw ":os.chdir is not yet implemented";
function open(_name:stdgo.GoString):{ var _0 : stdgo.Ref<File>; var _1 : stdgo.Error; } {
        if (!sys.FileSystem.exists(_name)) return { _0 : null, _1 : stdgo._internal.errors.Errors.new_("open " + _name + ": no such file or directory") };
        throw "os.open is not yet implemented";
        return { _0 : null, _1 : null };
    }
function create(_name:stdgo.GoString):{ var _0 : stdgo.Ref<File>; var _1 : stdgo.Error; } throw ":os.create is not yet implemented";
function openFile(_name:stdgo.GoString, _flag:stdgo.GoInt, _perm:FileMode):{ var _0 : stdgo.Ref<File>; var _1 : stdgo.Error; } {
        return #if target.sys {
            if (!sys.FileSystem.exists(_name)) {
                sys.io.File.saveBytes(_name, haxe.io.Bytes.alloc(0));
            };
            try {
                { _0 : { _file : { _name : _name }, _input : sys.io.File.read(_name), _output : sys.io.File.write(_name) }, _1 : null };
            } catch(e) {
                { _0 : null, _1 : stdgo._internal.errors.Errors.new_(e.details()) };
            };
        } #else null #end;
    }
function rename(_oldpath:stdgo.GoString, _newpath:stdgo.GoString):stdgo.Error throw ":os.rename is not yet implemented";
function _fixCount(_n:stdgo.GoInt, _err:stdgo.Error):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw ":os._fixCount is not yet implemented";
function tempDir():stdgo.GoString throw ":os.tempDir is not yet implemented";
function userCacheDir():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.userCacheDir is not yet implemented";
function userConfigDir():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.userConfigDir is not yet implemented";
function userHomeDir():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.userHomeDir is not yet implemented";
function chmod(_name:stdgo.GoString, _mode:FileMode):stdgo.Error throw ":os.chmod is not yet implemented";
function dirFS(_dir:stdgo.GoString):stdgo._internal.io.fs.Fs.FS throw ":os.dirFS is not yet implemented";
function _containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool throw ":os._containsAny is not yet implemented";
function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        return #if target.sys {
            if (!sys.FileSystem.exists(_name)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors.new_("readFile " + _name + ": no such file or directory") };
            } else {
                try {
                    return { _0 : sys.io.File.getBytes(_name), _1 : null };
                } catch(e) {
                    { _0 : null, _1 : stdgo._internal.errors.Errors.new_(e.details()) };
                };
            };
        } #else null #end;
    }
function writeFile(_name:stdgo.GoString, _data:stdgo.Slice<stdgo.GoByte>, _perm:FileMode):stdgo.Error throw ":os.writeFile is not yet implemented";
function _open(_path:stdgo.GoString, _flag:stdgo.GoInt, _perm:stdgo.GoUInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.internal.poll.Poll.SysFile; var _2 : stdgo.Error; } throw ":os._open is not yet implemented";
function _syscallMode(_i:FileMode):stdgo.GoUInt32 throw ":os._syscallMode is not yet implemented";
function _chmod(_name:stdgo.GoString, _mode:FileMode):stdgo.Error throw ":os._chmod is not yet implemented";
function chown(_name:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error throw ":os.chown is not yet implemented";
function lchown(_name:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error throw ":os.lchown is not yet implemented";
function chtimes(_name:stdgo.GoString, _atime:stdgo._internal.time.Time.Time, _mtime:stdgo._internal.time.Time.Time):stdgo.Error throw ":os.chtimes is not yet implemented";
function _ignoringEINTR(_fn:() -> stdgo.Error):stdgo.Error throw ":os._ignoringEINTR is not yet implemented";
function _fixLongPath(_path:stdgo.GoString):stdgo.GoString throw ":os._fixLongPath is not yet implemented";
function _rename(_oldname:stdgo.GoString, _newname:stdgo.GoString):stdgo.Error throw ":os._rename is not yet implemented";
function newFile(_fd:stdgo.GoUIntptr, _name:stdgo.GoString):stdgo.Ref<File> throw ":os.newFile is not yet implemented";
function _net_newUnixFile(_fd:stdgo.GoInt, _name:stdgo.GoString):stdgo.Ref<File> throw ":os._net_newUnixFile is not yet implemented";
function _newFile(_fd:stdgo.GoInt, _name:stdgo.GoString, _kind:T_newFileKind):stdgo.Ref<File> throw ":os._newFile is not yet implemented";
function _sigpipe():Void throw ":os._sigpipe is not yet implemented";
function _epipecheck(_file:stdgo.Ref<File>, _e:stdgo.Error):Void throw ":os._epipecheck is not yet implemented";
function _openFileNolog(_name:stdgo.GoString, _flag:stdgo.GoInt, _perm:FileMode):{ var _0 : stdgo.Ref<File>; var _1 : stdgo.Error; } throw ":os._openFileNolog is not yet implemented";
function truncate(_name:stdgo.GoString, _size:stdgo.GoInt64):stdgo.Error {
        trace("os.truncate not implemented");
        return null;
    }
function remove(_name:stdgo.GoString):stdgo.Error throw ":os.remove is not yet implemented";
function _tempDir():stdgo.GoString throw ":os._tempDir is not yet implemented";
function link(_oldname:stdgo.GoString, _newname:stdgo.GoString):stdgo.Error throw ":os.link is not yet implemented";
function symlink(_oldname:stdgo.GoString, _newname:stdgo.GoString):stdgo.Error throw ":os.symlink is not yet implemented";
function readlink(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.readlink is not yet implemented";
function _newUnixDirent(_parent:stdgo.GoString, _name:stdgo.GoString, _typ:FileMode):{ var _0 : DirEntry; var _1 : stdgo.Error; } throw ":os._newUnixDirent is not yet implemented";
function getwd():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        try {
            return { _0 : Sys.getCwd(), _1 : null };
        } catch(e) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors.new_(e.details()) };
        };
    }
function mkdirAll(_path:stdgo.GoString, _perm:FileMode):stdgo.Error throw ":os.mkdirAll is not yet implemented";
function removeAll(_path:stdgo.GoString):stdgo.Error throw ":os.removeAll is not yet implemented";
function _endsWithDot(_path:stdgo.GoString):Bool throw ":os._endsWithDot is not yet implemented";
function isPathSeparator(_c:stdgo.GoUInt8):Bool throw ":os.isPathSeparator is not yet implemented";
function _basename(_name:stdgo.GoString):stdgo.GoString throw ":os._basename is not yet implemented";
function _splitPath(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } throw ":os._splitPath is not yet implemented";
function _fixRootDirectory(_p:stdgo.GoString):stdgo.GoString throw ":os._fixRootDirectory is not yet implemented";
function pipe():{ var _0 : stdgo.Ref<File>; var _1 : stdgo.Ref<File>; var _2 : stdgo.Error; } throw ":os.pipe is not yet implemented";
function _runtime_args():stdgo.Slice<stdgo.GoString> {
        #if js return new stdgo.Slice<stdgo.GoString>(0, 0).__setString__() #else null #end;
        #if target.sys {
            final args:Array<stdgo.GoString> = Sys.args().map(arg -> (arg : stdgo.GoString));
            args.unshift(Sys.getCwd());
            return new stdgo.Slice<stdgo.GoString>(args.length, args.length, ...args).__setString__();
        } #else null #end;
    }
function getuid():stdgo.GoInt throw ":os.getuid is not yet implemented";
function geteuid():stdgo.GoInt throw ":os.geteuid is not yet implemented";
function getgid():stdgo.GoInt throw ":os.getgid is not yet implemented";
function getegid():stdgo.GoInt throw ":os.getegid is not yet implemented";
function getgroups():{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.Error; } throw ":os.getgroups is not yet implemented";
function exit(_code:stdgo.GoInt):Void throw ":os.exit is not yet implemented";
function _runtime_beforeExit(_exitCode:stdgo.GoInt):Void throw ":os._runtime_beforeExit is not yet implemented";
function _newRawConn(_file:stdgo.Ref<File>):{ var _0 : stdgo.Ref<T_rawConn>; var _1 : stdgo.Error; } throw ":os._newRawConn is not yet implemented";
function _removeAll(_path:stdgo.GoString):stdgo.Error throw ":os._removeAll is not yet implemented";
function stat(_name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } throw ":os.stat is not yet implemented";
function lstat(_name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } throw ":os.lstat is not yet implemented";
function _fillFileStatFromSys(_fs:stdgo.Ref<T_fileStat>, _name:stdgo.GoString):Void throw ":os._fillFileStatFromSys is not yet implemented";
function _atime(_fi:FileInfo):stdgo._internal.time.Time.Time throw ":os._atime is not yet implemented";
function _statNolog(_name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } throw ":os._statNolog is not yet implemented";
function _lstatNolog(_name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } throw ":os._lstatNolog is not yet implemented";
function _itox(_val:stdgo.GoInt):stdgo.GoString throw ":os._itox is not yet implemented";
function _uitox(_val:stdgo.GoUInt):stdgo.GoString throw ":os._uitox is not yet implemented";
function hostname():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.hostname is not yet implemented";
function _hostname():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os._hostname is not yet implemented";
function _fastrand():stdgo.GoUInt32 return Std.random(1) > 0 ? -Std.random(2147483647) - 1 : Std.random(2147483647);
function _nextRandom():stdgo.GoString throw ":os._nextRandom is not yet implemented";
function createTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.Ref<File>; var _1 : stdgo.Error; } throw ":os.createTemp is not yet implemented";
function _prefixAndSuffix(_pattern:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } throw ":os._prefixAndSuffix is not yet implemented";
function mkdirTemp(_dir:stdgo.GoString, _pattern:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw ":os.mkdirTemp is not yet implemented";
function _joinPath(_dir:stdgo.GoString, _name:stdgo.GoString):stdgo.GoString throw ":os._joinPath is not yet implemented";
function _lastIndex(_s:stdgo.GoString, _sep:stdgo.GoByte):stdgo.GoInt throw ":os._lastIndex is not yet implemented";
function getpagesize():stdgo.GoInt throw ":os.getpagesize is not yet implemented";
function sameFile(_fi1:FileInfo, _fi2:FileInfo):Bool throw ":os.sameFile is not yet implemented";
function _sameFile(_fs1:stdgo.Ref<T_fileStat>, _fs2:stdgo.Ref<T_fileStat>):Bool throw ":os._sameFile is not yet implemented";
@:keep var _ = {
        try {
            args = _runtime_args();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_dirInfo_asInterface {
    @:keep
    public dynamic function _close():Void __self__.value._close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dirInfo>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.Os.T_dirInfo_asInterface) class T_dirInfo_static_extension {
    @:keep
    static public function _close( _d:stdgo.Ref<T_dirInfo>):Void throw "T_dirInfo:os._close is not yet implemented";
}
class SyscallError_asInterface {
    @:keep
    public dynamic function timeout():Bool return __self__.value.timeout();
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SyscallError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.Os.SyscallError_asInterface) class SyscallError_static_extension {
    @:keep
    static public function timeout( _e:stdgo.Ref<SyscallError>):Bool throw "SyscallError:os.timeout is not yet implemented";
    @:keep
    static public function unwrap( _e:stdgo.Ref<SyscallError>):stdgo.Error throw "SyscallError:os.unwrap is not yet implemented";
    @:keep
    static public function error( _e:stdgo.Ref<SyscallError>):stdgo.GoString throw "SyscallError:os.error is not yet implemented";
}
class Process_asInterface {
    @:keep
    public dynamic function _blockUntilWaitable():{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value._blockUntilWaitable();
    @:keep
    public dynamic function _release():stdgo.Error return __self__.value._release();
    @:keep
    public dynamic function _signal(_sig:Signal):stdgo.Error return __self__.value._signal(_sig);
    @:keep
    public dynamic function _wait():{ var _0 : stdgo.Ref<ProcessState>; var _1 : stdgo.Error; } return __self__.value._wait();
    @:keep
    public dynamic function _kill():stdgo.Error return __self__.value._kill();
    @:keep
    public dynamic function signal(_sig:Signal):stdgo.Error return __self__.value.signal(_sig);
    @:keep
    public dynamic function wait_():{ var _0 : stdgo.Ref<ProcessState>; var _1 : stdgo.Error; } return __self__.value.wait_();
    @:keep
    public dynamic function kill():stdgo.Error return __self__.value.kill();
    @:keep
    public dynamic function release():stdgo.Error return __self__.value.release();
    @:keep
    public dynamic function _done():Bool return __self__.value._done();
    @:keep
    public dynamic function _setDone():Void __self__.value._setDone();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Process>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.Os.Process_asInterface) class Process_static_extension {
    @:keep
    static public function _blockUntilWaitable( _p:stdgo.Ref<Process>):{ var _0 : Bool; var _1 : stdgo.Error; } throw "Process:os._blockUntilWaitable is not yet implemented";
    @:keep
    static public function _release( _p:stdgo.Ref<Process>):stdgo.Error throw "Process:os._release is not yet implemented";
    @:keep
    static public function _signal( _p:stdgo.Ref<Process>, _sig:Signal):stdgo.Error throw "Process:os._signal is not yet implemented";
    @:keep
    static public function _wait( _p:stdgo.Ref<Process>):{ var _0 : stdgo.Ref<ProcessState>; var _1 : stdgo.Error; } throw "Process:os._wait is not yet implemented";
    @:keep
    static public function _kill( _p:stdgo.Ref<Process>):stdgo.Error throw "Process:os._kill is not yet implemented";
    @:keep
    static public function signal( _p:stdgo.Ref<Process>, _sig:Signal):stdgo.Error throw "Process:os.signal is not yet implemented";
    @:keep
    static public function wait_( _p:stdgo.Ref<Process>):{ var _0 : stdgo.Ref<ProcessState>; var _1 : stdgo.Error; } throw "Process:os.wait_ is not yet implemented";
    @:keep
    static public function kill( _p:stdgo.Ref<Process>):stdgo.Error throw "Process:os.kill is not yet implemented";
    @:keep
    static public function release( _p:stdgo.Ref<Process>):stdgo.Error throw "Process:os.release is not yet implemented";
    @:keep
    static public function _done( _p:stdgo.Ref<Process>):Bool throw "Process:os._done is not yet implemented";
    @:keep
    static public function _setDone( _p:stdgo.Ref<Process>):Void throw "Process:os._setDone is not yet implemented";
}
class ProcessState_asInterface {
    @:keep
    public dynamic function _systemTime():stdgo._internal.time.Time.Duration return __self__.value._systemTime();
    @:keep
    public dynamic function _userTime():stdgo._internal.time.Time.Duration return __self__.value._userTime();
    @:keep
    public dynamic function exitCode():stdgo.GoInt return __self__.value.exitCode();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function _sysUsage():stdgo.AnyInterface return __self__.value._sysUsage();
    @:keep
    public dynamic function _sys():stdgo.AnyInterface return __self__.value._sys();
    @:keep
    public dynamic function _success():Bool return __self__.value._success();
    @:keep
    public dynamic function _exited():Bool return __self__.value._exited();
    @:keep
    public dynamic function pid():stdgo.GoInt return __self__.value.pid();
    @:keep
    public dynamic function sysUsage():stdgo.AnyInterface return __self__.value.sysUsage();
    @:keep
    public dynamic function sys():stdgo.AnyInterface return __self__.value.sys();
    @:keep
    public dynamic function success():Bool return __self__.value.success();
    @:keep
    public dynamic function exited():Bool return __self__.value.exited();
    @:keep
    public dynamic function systemTime():stdgo._internal.time.Time.Duration return __self__.value.systemTime();
    @:keep
    public dynamic function userTime():stdgo._internal.time.Time.Duration return __self__.value.userTime();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ProcessState>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.Os.ProcessState_asInterface) class ProcessState_static_extension {
    @:keep
    static public function _systemTime( _p:stdgo.Ref<ProcessState>):stdgo._internal.time.Time.Duration throw "ProcessState:os._systemTime is not yet implemented";
    @:keep
    static public function _userTime( _p:stdgo.Ref<ProcessState>):stdgo._internal.time.Time.Duration throw "ProcessState:os._userTime is not yet implemented";
    @:keep
    static public function exitCode( _p:stdgo.Ref<ProcessState>):stdgo.GoInt throw "ProcessState:os.exitCode is not yet implemented";
    @:keep
    static public function string( _p:stdgo.Ref<ProcessState>):stdgo.GoString throw "ProcessState:os.string is not yet implemented";
    @:keep
    static public function _sysUsage( _p:stdgo.Ref<ProcessState>):stdgo.AnyInterface throw "ProcessState:os._sysUsage is not yet implemented";
    @:keep
    static public function _sys( _p:stdgo.Ref<ProcessState>):stdgo.AnyInterface throw "ProcessState:os._sys is not yet implemented";
    @:keep
    static public function _success( _p:stdgo.Ref<ProcessState>):Bool throw "ProcessState:os._success is not yet implemented";
    @:keep
    static public function _exited( _p:stdgo.Ref<ProcessState>):Bool throw "ProcessState:os._exited is not yet implemented";
    @:keep
    static public function pid( _p:stdgo.Ref<ProcessState>):stdgo.GoInt throw "ProcessState:os.pid is not yet implemented";
    @:keep
    static public function sysUsage( _p:stdgo.Ref<ProcessState>):stdgo.AnyInterface throw "ProcessState:os.sysUsage is not yet implemented";
    @:keep
    static public function sys( _p:stdgo.Ref<ProcessState>):stdgo.AnyInterface throw "ProcessState:os.sys is not yet implemented";
    @:keep
    static public function success( _p:stdgo.Ref<ProcessState>):Bool throw "ProcessState:os.success is not yet implemented";
    @:keep
    static public function exited( _p:stdgo.Ref<ProcessState>):Bool throw "ProcessState:os.exited is not yet implemented";
    @:keep
    static public function systemTime( _p:stdgo.Ref<ProcessState>):stdgo._internal.time.Time.Duration throw "ProcessState:os.systemTime is not yet implemented";
    @:keep
    static public function userTime( _p:stdgo.Ref<ProcessState>):stdgo._internal.time.Time.Duration throw "ProcessState:os.userTime is not yet implemented";
}
class LinkError_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<LinkError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.Os.LinkError_asInterface) class LinkError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.Ref<LinkError>):stdgo.Error throw "LinkError:os.unwrap is not yet implemented";
    @:keep
    static public function error( _e:stdgo.Ref<LinkError>):stdgo.GoString throw "LinkError:os.error is not yet implemented";
}
class T_fileWithoutReadFrom_asInterface {
    @:keep
    public dynamic function readFrom(_0:T_fileWithoutReadFrom):Void __self__.value.readFrom(_0);
    @:embedded
    public dynamic function _write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._write(_b);
    @:embedded
    public dynamic function _wrapErr(_op:stdgo.GoString, _err:stdgo.Error):stdgo.Error return __self__.value._wrapErr(_op, _err);
    @:embedded
    public dynamic function _setWriteDeadline(__0:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value._setWriteDeadline(__0);
    @:embedded
    public dynamic function _setReadDeadline(__0:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value._setReadDeadline(__0);
    @:embedded
    public dynamic function _setDeadline(__0:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value._setDeadline(__0);
    @:embedded
    public dynamic function _seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value._seek(_offset, _whence);
    @:embedded
    public dynamic function _readdir(_n:stdgo.GoInt, _mode:stdgo._internal.os.Os.T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _2 : stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return __self__.value._readdir(_n, _mode);
    @:embedded
    public dynamic function _readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return __self__.value._readFrom(_r);
    @:embedded
    public dynamic function _read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_b);
    @:embedded
    public dynamic function _pwrite(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._pwrite(_b, _off);
    @:embedded
    public dynamic function _pread(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._pread(_b, _off);
    @:embedded
    public dynamic function _close():stdgo.Error return __self__.value._close();
    @:embedded
    public dynamic function _chmod(_mode:stdgo._internal.io.fs.Fs.FileMode):stdgo.Error return __self__.value._chmod(_mode);
    @:embedded
    public dynamic function _checkValid(__0:stdgo.GoString):stdgo.Error return __self__.value._checkValid(__0);
    @:embedded
    public dynamic function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(__0);
    @:embedded
    public dynamic function writeAt(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeAt(_b, _off);
    @:embedded
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:embedded
    public dynamic function truncate(__0:stdgo.GoInt64):stdgo.Error return __self__.value.truncate(__0);
    @:embedded
    public dynamic function syscallConn():{ var _0 : stdgo._internal.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return __self__.value.syscallConn();
    @:embedded
    public dynamic function sync():stdgo.Error return __self__.value.sync();
    @:embedded
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat();
    @:embedded
    public dynamic function setWriteDeadline(__0:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value.setWriteDeadline(__0);
    @:embedded
    public dynamic function setReadDeadline(__0:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value.setReadDeadline(__0);
    @:embedded
    public dynamic function setDeadline(__0:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value.setDeadline(__0);
    @:embedded
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:embedded
    public dynamic function readdirnames(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.readdirnames(_n);
    @:embedded
    public dynamic function readdir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return __self__.value.readdir(_n);
    @:embedded
    public dynamic function readDir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_n);
    @:embedded
    public dynamic function readAt(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_b, _off);
    @:embedded
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:embedded
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:embedded
    public dynamic function fd():stdgo.GoUIntptr return __self__.value.fd();
    @:embedded
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:embedded
    public dynamic function chown(_uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return __self__.value.chown(_uid, _gid);
    @:embedded
    public dynamic function chmod(_mode:stdgo._internal.io.fs.Fs.FileMode):stdgo.Error return __self__.value.chmod(_mode);
    @:embedded
    public dynamic function chdir():stdgo.Error return __self__.value.chdir();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fileWithoutReadFrom>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.Os.T_fileWithoutReadFrom_asInterface) class T_fileWithoutReadFrom_static_extension {
    @:keep
    static public function readFrom( _:T_fileWithoutReadFrom, _0:T_fileWithoutReadFrom):Void throw "T_fileWithoutReadFrom:os.readFrom is not yet implemented";
    @:embedded
    public static function _write( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__._write(_b);
    @:embedded
    public static function _wrapErr( __self__:T_fileWithoutReadFrom, _op:stdgo.GoString, _err:stdgo.Error):stdgo.Error return __self__._wrapErr(_op, _err);
    @:embedded
    public static function _setWriteDeadline( __self__:T_fileWithoutReadFrom, __0:stdgo._internal.time.Time.Time):stdgo.Error return __self__._setWriteDeadline(__0);
    @:embedded
    public static function _setReadDeadline( __self__:T_fileWithoutReadFrom, __0:stdgo._internal.time.Time.Time):stdgo.Error return __self__._setReadDeadline(__0);
    @:embedded
    public static function _setDeadline( __self__:T_fileWithoutReadFrom, __0:stdgo._internal.time.Time.Time):stdgo.Error return __self__._setDeadline(__0);
    @:embedded
    public static function _seek( __self__:T_fileWithoutReadFrom, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__._seek(_offset, _whence);
    @:embedded
    public static function _readdir( __self__:T_fileWithoutReadFrom, _n:stdgo.GoInt, _mode:stdgo._internal.os.Os.T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _2 : stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return __self__._readdir(_n, _mode);
    @:embedded
    public static function _readFrom( __self__:T_fileWithoutReadFrom, _r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return __self__._readFrom(_r);
    @:embedded
    public static function _read( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__._read(_b);
    @:embedded
    public static function _pwrite( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__._pwrite(_b, _off);
    @:embedded
    public static function _pread( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__._pread(_b, _off);
    @:embedded
    public static function _close( __self__:T_fileWithoutReadFrom):stdgo.Error return __self__._close();
    @:embedded
    public static function _chmod( __self__:T_fileWithoutReadFrom, _mode:stdgo._internal.io.fs.Fs.FileMode):stdgo.Error return __self__._chmod(_mode);
    @:embedded
    public static function _checkValid( __self__:T_fileWithoutReadFrom, __0:stdgo.GoString):stdgo.Error return __self__._checkValid(__0);
    @:embedded
    public static function writeString( __self__:T_fileWithoutReadFrom, __0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeAt( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeAt(_b, _off);
    @:embedded
    public static function write( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_b);
    @:embedded
    public static function truncate( __self__:T_fileWithoutReadFrom, __0:stdgo.GoInt64):stdgo.Error return __self__.truncate(__0);
    @:embedded
    public static function syscallConn( __self__:T_fileWithoutReadFrom):{ var _0 : stdgo._internal.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return __self__.syscallConn();
    @:embedded
    public static function sync( __self__:T_fileWithoutReadFrom):stdgo.Error return __self__.sync();
    @:embedded
    public static function stat( __self__:T_fileWithoutReadFrom):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.stat();
    @:embedded
    public static function setWriteDeadline( __self__:T_fileWithoutReadFrom, __0:stdgo._internal.time.Time.Time):stdgo.Error return __self__.setWriteDeadline(__0);
    @:embedded
    public static function setReadDeadline( __self__:T_fileWithoutReadFrom, __0:stdgo._internal.time.Time.Time):stdgo.Error return __self__.setReadDeadline(__0);
    @:embedded
    public static function setDeadline( __self__:T_fileWithoutReadFrom, __0:stdgo._internal.time.Time.Time):stdgo.Error return __self__.setDeadline(__0);
    @:embedded
    public static function seek( __self__:T_fileWithoutReadFrom, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.seek(_offset, _whence);
    @:embedded
    public static function readdirnames( __self__:T_fileWithoutReadFrom, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.readdirnames(_n);
    @:embedded
    public static function readdir( __self__:T_fileWithoutReadFrom, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return __self__.readdir(_n);
    @:embedded
    public static function readDir( __self__:T_fileWithoutReadFrom, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return __self__.readDir(_n);
    @:embedded
    public static function readAt( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.readAt(_b, _off);
    @:embedded
    public static function read( __self__:T_fileWithoutReadFrom, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_b);
    @:embedded
    public static function name( __self__:T_fileWithoutReadFrom):stdgo.GoString return __self__.name();
    @:embedded
    public static function fd( __self__:T_fileWithoutReadFrom):stdgo.GoUIntptr return __self__.fd();
    @:embedded
    public static function close( __self__:T_fileWithoutReadFrom):stdgo.Error return __self__.close();
    @:embedded
    public static function chown( __self__:T_fileWithoutReadFrom, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return __self__.chown(_uid, _gid);
    @:embedded
    public static function chmod( __self__:T_fileWithoutReadFrom, _mode:stdgo._internal.io.fs.Fs.FileMode):stdgo.Error return __self__.chmod(_mode);
    @:embedded
    public static function chdir( __self__:T_fileWithoutReadFrom):stdgo.Error return __self__.chdir();
}
class T_file_asInterface {
    @:keep
    public dynamic function _close():stdgo.Error return __self__.value._close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_file>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.Os.T_file_asInterface) class T_file_static_extension {
    @:keep
    static public function _close( _file:stdgo.Ref<T_file>):stdgo.Error throw "T_file:os._close is not yet implemented";
}
class T_unixDirent_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function info():{ var _0 : FileInfo; var _1 : stdgo.Error; } return __self__.value.info();
    @:keep
    public dynamic function type():FileMode return __self__.value.type();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_unixDirent>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.Os.T_unixDirent_asInterface) class T_unixDirent_static_extension {
    @:keep
    static public function string( _d:stdgo.Ref<T_unixDirent>):stdgo.GoString throw "T_unixDirent:os.string is not yet implemented";
    @:keep
    static public function info( _d:stdgo.Ref<T_unixDirent>):{ var _0 : FileInfo; var _1 : stdgo.Error; } throw "T_unixDirent:os.info is not yet implemented";
    @:keep
    static public function type( _d:stdgo.Ref<T_unixDirent>):FileMode throw "T_unixDirent:os.type is not yet implemented";
    @:keep
    static public function isDir( _d:stdgo.Ref<T_unixDirent>):Bool throw "T_unixDirent:os.isDir is not yet implemented";
    @:keep
    static public function name( _d:stdgo.Ref<T_unixDirent>):stdgo.GoString throw "T_unixDirent:os.name is not yet implemented";
}
class T_rawConn_asInterface {
    @:keep
    public dynamic function write(_f:stdgo.GoUIntptr -> Bool):stdgo.Error return __self__.value.write(_f);
    @:keep
    public dynamic function read(_f:stdgo.GoUIntptr -> Bool):stdgo.Error return __self__.value.read(_f);
    @:keep
    public dynamic function control(_f:stdgo.GoUIntptr -> Void):stdgo.Error return __self__.value.control(_f);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_rawConn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.Os.T_rawConn_asInterface) class T_rawConn_static_extension {
    @:keep
    static public function write( _c:stdgo.Ref<T_rawConn>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error throw "T_rawConn:os.write is not yet implemented";
    @:keep
    static public function read( _c:stdgo.Ref<T_rawConn>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error throw "T_rawConn:os.read is not yet implemented";
    @:keep
    static public function control( _c:stdgo.Ref<T_rawConn>, _f:stdgo.GoUIntptr -> Void):stdgo.Error throw "T_rawConn:os.control is not yet implemented";
}
class File_asInterface {
    @:keep
    public dynamic function stat():{ var _0 : FileInfo; var _1 : stdgo.Error; } return __self__.value.stat();
    @:keep
    public dynamic function _readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return __self__.value._readFrom(_r);
    @:keep
    public dynamic function _seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value._seek(_offset, _whence);
    @:keep
    public dynamic function fd():stdgo.GoUIntptr return __self__.value.fd();
    @:keep
    public dynamic function _checkValid(_op:stdgo.GoString):stdgo.Error return __self__.value._checkValid(_op);
    @:keep
    public dynamic function _setWriteDeadline(_t:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value._setWriteDeadline(_t);
    @:keep
    public dynamic function _setReadDeadline(_t:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value._setReadDeadline(_t);
    @:keep
    public dynamic function _setDeadline(_t:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value._setDeadline(_t);
    @:keep
    public dynamic function chdir():stdgo.Error return __self__.value.chdir();
    @:keep
    public dynamic function sync():stdgo.Error return __self__.value.sync();
    @:keep
    public dynamic function truncate(_size:stdgo.GoInt64):stdgo.Error return __self__.value.truncate(_size);
    @:keep
    public dynamic function chown(_uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error return __self__.value.chown(_uid, _gid);
    @:keep
    public dynamic function _chmod(_mode:FileMode):stdgo.Error return __self__.value._chmod(_mode);
    @:keep
    public dynamic function _pwrite(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._pwrite(_b, _off);
    @:keep
    public dynamic function _write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._write(_b);
    @:keep
    public dynamic function _pread(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._pread(_b, _off);
    @:keep
    public dynamic function _read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_b);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function syscallConn():{ var _0 : stdgo._internal.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return __self__.value.syscallConn();
    @:keep
    public dynamic function setWriteDeadline(_t:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value.setWriteDeadline(_t);
    @:keep
    public dynamic function setReadDeadline(_t:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value.setReadDeadline(_t);
    @:keep
    public dynamic function setDeadline(_t:stdgo._internal.time.Time.Time):stdgo.Error return __self__.value.setDeadline(_t);
    @:keep
    public dynamic function chmod(_mode:FileMode):stdgo.Error return __self__.value.chmod(_mode);
    @:keep
    public dynamic function _wrapErr(_op:stdgo.GoString, _err:stdgo.Error):stdgo.Error return __self__.value._wrapErr(_op, _err);
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function writeAt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeAt(_b, _off);
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:keep
    public dynamic function readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:keep
    public dynamic function readAt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_b, _off);
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:keep
    public dynamic function _readdir(_n:stdgo.GoInt, _mode:T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<DirEntry>; var _2 : stdgo.Slice<FileInfo>; var _3 : stdgo.Error; } return __self__.value._readdir(_n, _mode);
    @:keep
    public dynamic function readDir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_n);
    @:keep
    public dynamic function readdirnames(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.readdirnames(_n);
    @:keep
    public dynamic function readdir(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<FileInfo>; var _1 : stdgo.Error; } return __self__.value.readdir(_n);
    @:embedded
    public dynamic function _close():stdgo.Error return __self__.value._close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<File>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.Os.File_asInterface) class File_static_extension {
    @:keep
    static public function stat( _f:stdgo.Ref<File>):{ var _0 : FileInfo; var _1 : stdgo.Error; } throw "File:os.stat is not yet implemented";
    @:keep
    static public function _readFrom( _f:stdgo.Ref<File>, _r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : Bool; var _2 : stdgo.Error; } throw "File:os._readFrom is not yet implemented";
    @:keep
    static public function _seek( _f:stdgo.Ref<File>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "File:os._seek is not yet implemented";
    @:keep
    static public function fd( _f:stdgo.Ref<File>):stdgo.GoUIntptr throw "File:os.fd is not yet implemented";
    @:keep
    static public function _checkValid( _f:stdgo.Ref<File>, _op:stdgo.GoString):stdgo.Error throw "File:os._checkValid is not yet implemented";
    @:keep
    static public function _setWriteDeadline( _f:stdgo.Ref<File>, _t:stdgo._internal.time.Time.Time):stdgo.Error throw "File:os._setWriteDeadline is not yet implemented";
    @:keep
    static public function _setReadDeadline( _f:stdgo.Ref<File>, _t:stdgo._internal.time.Time.Time):stdgo.Error throw "File:os._setReadDeadline is not yet implemented";
    @:keep
    static public function _setDeadline( _f:stdgo.Ref<File>, _t:stdgo._internal.time.Time.Time):stdgo.Error throw "File:os._setDeadline is not yet implemented";
    @:keep
    static public function chdir( _f:stdgo.Ref<File>):stdgo.Error throw "File:os.chdir is not yet implemented";
    @:keep
    static public function sync( _f:stdgo.Ref<File>):stdgo.Error throw "File:os.sync is not yet implemented";
    @:keep
    static public function truncate( _f:stdgo.Ref<File>, _size:stdgo.GoInt64):stdgo.Error {
        @:recv var _f:stdgo.Ref<File> = _f;
        #if target.sys {
            @:privateAccess _f._output.close();
            final bytes = _size == 0 ? haxe.io.Bytes.alloc(0) : sys.io.File.getBytes(@:privateAccess _f._file._name);
            sys.io.File.saveBytes(@:privateAccess _f._file._name, bytes.sub(0, (_size : stdgo.GoInt).toBasic()));
            @:privateAccess _f._output = sys.io.File.write(@:privateAccess _f._file._name);
        } #else null #end;
        return null;
    }
    @:keep
    static public function chown( _f:stdgo.Ref<File>, _uid:stdgo.GoInt, _gid:stdgo.GoInt):stdgo.Error throw "File:os.chown is not yet implemented";
    @:keep
    static public function _chmod( _f:stdgo.Ref<File>, _mode:FileMode):stdgo.Error throw "File:os._chmod is not yet implemented";
    @:keep
    static public function _pwrite( _f:stdgo.Ref<File>, _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os._pwrite is not yet implemented";
    @:keep
    static public function _write( _f:stdgo.Ref<File>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os._write is not yet implemented";
    @:keep
    static public function _pread( _f:stdgo.Ref<File>, _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os._pread is not yet implemented";
    @:keep
    static public function _read( _f:stdgo.Ref<File>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os._read is not yet implemented";
    @:keep
    static public function close( _f:stdgo.Ref<File>):stdgo.Error {
        @:recv var _f:stdgo.Ref<File> = _f;
        @:privateAccess _f._input.close();
        @:privateAccess _f._output.close();
        return null;
    }
    @:keep
    static public function syscallConn( _f:stdgo.Ref<File>):{ var _0 : stdgo._internal.syscall.Syscall.RawConn; var _1 : stdgo.Error; } throw "File:os.syscallConn is not yet implemented";
    @:keep
    static public function setWriteDeadline( _f:stdgo.Ref<File>, _t:stdgo._internal.time.Time.Time):stdgo.Error throw "File:os.setWriteDeadline is not yet implemented";
    @:keep
    static public function setReadDeadline( _f:stdgo.Ref<File>, _t:stdgo._internal.time.Time.Time):stdgo.Error throw "File:os.setReadDeadline is not yet implemented";
    @:keep
    static public function setDeadline( _f:stdgo.Ref<File>, _t:stdgo._internal.time.Time.Time):stdgo.Error throw "File:os.setDeadline is not yet implemented";
    @:keep
    static public function chmod( _f:stdgo.Ref<File>, _mode:FileMode):stdgo.Error throw "File:os.chmod is not yet implemented";
    @:keep
    static public function _wrapErr( _f:stdgo.Ref<File>, _op:stdgo.GoString, _err:stdgo.Error):stdgo.Error throw "File:os._wrapErr is not yet implemented";
    @:keep
    static public function writeString( _f:stdgo.Ref<File>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return _f.write(_s);
    @:keep
    static public function seek( _f:stdgo.Ref<File>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "File:os.seek is not yet implemented";
    @:keep
    static public function writeAt( _f:stdgo.Ref<File>, _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os.writeAt is not yet implemented";
    @:keep
    static public function write( _f:stdgo.Ref<File>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<File> = _f;
        if (_b.length == 0) return { _0 : 0, _1 : null };
        final i = @:privateAccess _f._output.writeBytes(_b.toBytes(), 0, _b.length.toBasic());
        if (i != _b.length.toBasic()) return { _0 : i, _1 : stdgo._internal.errors.Errors.new_("invalid write") };
        return { _0 : i, _1 : null };
    }
    @:keep
    static public function readFrom( _f:stdgo.Ref<File>, _r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } throw "File:os.readFrom is not yet implemented";
    @:keep
    static public function readAt( _f:stdgo.Ref<File>, _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os.readAt is not yet implemented";
    @:keep
    static public function read( _f:stdgo.Ref<File>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "File:os.read is not yet implemented";
    @:keep
    static public function name( _f:stdgo.Ref<File>):stdgo.GoString throw "File:os.name is not yet implemented";
    @:keep
    static public function _readdir( _f:stdgo.Ref<File>, _n:stdgo.GoInt, _mode:T_readdirMode):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<DirEntry>; var _2 : stdgo.Slice<FileInfo>; var _3 : stdgo.Error; } throw "File:os._readdir is not yet implemented";
    @:keep
    static public function readDir( _f:stdgo.Ref<File>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } throw "File:os.readDir is not yet implemented";
    @:keep
    static public function readdirnames( _f:stdgo.Ref<File>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw "File:os.readdirnames is not yet implemented";
    @:keep
    static public function readdir( _f:stdgo.Ref<File>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<FileInfo>; var _1 : stdgo.Error; } throw "File:os.readdir is not yet implemented";
    @:embedded
    public static function _close( __self__:File):stdgo.Error return __self__._close();
}
class T_fileStat_asInterface {
    @:keep
    public dynamic function sys():stdgo.AnyInterface return __self__.value.sys();
    @:keep
    public dynamic function modTime():stdgo._internal.time.Time.Time return __self__.value.modTime();
    @:keep
    public dynamic function mode():FileMode return __self__.value.mode();
    @:keep
    public dynamic function size():stdgo.GoInt64 return __self__.value.size();
    @:keep
    public dynamic function isDir():Bool return __self__.value.isDir();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fileStat>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.Os.T_fileStat_asInterface) class T_fileStat_static_extension {
    @:keep
    static public function sys( _fs:stdgo.Ref<T_fileStat>):stdgo.AnyInterface throw "T_fileStat:os.sys is not yet implemented";
    @:keep
    static public function modTime( _fs:stdgo.Ref<T_fileStat>):stdgo._internal.time.Time.Time throw "T_fileStat:os.modTime is not yet implemented";
    @:keep
    static public function mode( _fs:stdgo.Ref<T_fileStat>):FileMode throw "T_fileStat:os.mode is not yet implemented";
    @:keep
    static public function size( _fs:stdgo.Ref<T_fileStat>):stdgo.GoInt64 throw "T_fileStat:os.size is not yet implemented";
    @:keep
    static public function isDir( _fs:stdgo.Ref<T_fileStat>):Bool throw "T_fileStat:os.isDir is not yet implemented";
    @:keep
    static public function name( _fs:stdgo.Ref<T_fileStat>):stdgo.GoString throw "T_fileStat:os.name is not yet implemented";
}
class T_dirFS_asInterface {
    @:keep
    public dynamic function _join(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._join(_name);
    @:keep
    public dynamic function stat(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return __self__.value.stat(_name);
    @:keep
    public dynamic function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } return __self__.value.readDir(_name);
    @:keep
    public dynamic function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.readFile(_name);
    @:keep
    public dynamic function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.File; var _1 : stdgo.Error; } return __self__.value.open(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dirFS>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os.Os.T_dirFS_asInterface) class T_dirFS_static_extension {
    @:keep
    static public function _join( _dir:T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } throw "T_dirFS:os._join is not yet implemented";
    @:keep
    static public function stat( _dir:T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } throw "T_dirFS:os.stat is not yet implemented";
    @:keep
    static public function readDir( _dir:T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<DirEntry>; var _1 : stdgo.Error; } throw "T_dirFS:os.readDir is not yet implemented";
    @:keep
    static public function readFile( _dir:T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } throw "T_dirFS:os.readFile is not yet implemented";
    @:keep
    static public function open( _dir:T_dirFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs.File; var _1 : stdgo.Error; } throw "T_dirFS:os.open is not yet implemented";
}
