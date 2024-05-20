package stdgo.os;
final o_RDONLY : StdTypes.Int = stdgo._internal.os.Os.o_RDONLY;
final o_WRONLY : StdTypes.Int = stdgo._internal.os.Os.o_WRONLY;
final o_RDWR : StdTypes.Int = stdgo._internal.os.Os.o_RDWR;
final o_APPEND : StdTypes.Int = stdgo._internal.os.Os.o_APPEND;
final o_CREATE : StdTypes.Int = stdgo._internal.os.Os.o_CREATE;
final o_EXCL : StdTypes.Int = stdgo._internal.os.Os.o_EXCL;
final o_SYNC : StdTypes.Int = stdgo._internal.os.Os.o_SYNC;
final o_TRUNC : StdTypes.Int = stdgo._internal.os.Os.o_TRUNC;
final seek_SET : StdTypes.Int = stdgo._internal.os.Os.seek_SET;
final seek_CUR : StdTypes.Int = stdgo._internal.os.Os.seek_CUR;
final seek_END : StdTypes.Int = stdgo._internal.os.Os.seek_END;
final devNull : String = stdgo._internal.os.Os.devNull;
final pathSeparator : StdTypes.Int = stdgo._internal.os.Os.pathSeparator;
final pathListSeparator : StdTypes.Int = stdgo._internal.os.Os.pathListSeparator;
var args(get, set) : Array<String>;
private function get_args():Array<String> return [for (i in stdgo._internal.os.Os.args) i];
private function set_args(v:Array<String>):Array<String> {
        stdgo._internal.os.Os.args = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
final modeDir : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeDir;
final modeAppend : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeAppend;
final modeExclusive : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeExclusive;
final modeTemporary : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeTemporary;
final modeSymlink : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSymlink;
final modeDevice : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeDevice;
final modeNamedPipe : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeNamedPipe;
final modeSocket : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSocket;
final modeSetuid : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSetuid;
final modeSetgid : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSetgid;
final modeCharDevice : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeCharDevice;
final modeSticky : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeSticky;
final modeIrregular : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeIrregular;
final modeType : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modeType;
final modePerm : stdgo._internal.io.fs.Fs.FileMode = stdgo._internal.os.Os.modePerm;
var errInvalid(get, set) : stdgo.Error;
private function get_errInvalid():stdgo.Error return stdgo._internal.os.Os.errInvalid;
private function set_errInvalid(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errInvalid = v;
        return v;
    }
var errPermission(get, set) : stdgo.Error;
private function get_errPermission():stdgo.Error return stdgo._internal.os.Os.errPermission;
private function set_errPermission(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errPermission = v;
        return v;
    }
var errExist(get, set) : stdgo.Error;
private function get_errExist():stdgo.Error return stdgo._internal.os.Os.errExist;
private function set_errExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errExist = v;
        return v;
    }
var errNotExist(get, set) : stdgo.Error;
private function get_errNotExist():stdgo.Error return stdgo._internal.os.Os.errNotExist;
private function set_errNotExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errNotExist = v;
        return v;
    }
var errClosed(get, set) : stdgo.Error;
private function get_errClosed():stdgo.Error return stdgo._internal.os.Os.errClosed;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errClosed = v;
        return v;
    }
var errNoDeadline(get, set) : stdgo.Error;
private function get_errNoDeadline():stdgo.Error return stdgo._internal.os.Os.errNoDeadline;
private function set_errNoDeadline(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errNoDeadline = v;
        return v;
    }
var errDeadlineExceeded(get, set) : stdgo.Error;
private function get_errDeadlineExceeded():stdgo.Error return stdgo._internal.os.Os.errDeadlineExceeded;
private function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errDeadlineExceeded = v;
        return v;
    }
var errProcessDone(get, set) : stdgo.Error;
private function get_errProcessDone():stdgo.Error return stdgo._internal.os.Os.errProcessDone;
private function set_errProcessDone(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errProcessDone = v;
        return v;
    }
var interrupt(get, set) : stdgo._internal.os.Os.Signal;
private function get_interrupt():stdgo._internal.os.Os.Signal return stdgo._internal.os.Os.interrupt;
private function set_interrupt(v:stdgo._internal.os.Os.Signal):stdgo._internal.os.Os.Signal {
        stdgo._internal.os.Os.interrupt = v;
        return v;
    }
var kill(get, set) : stdgo._internal.os.Os.Signal;
private function get_kill():stdgo._internal.os.Os.Signal return stdgo._internal.os.Os.kill;
private function set_kill(v:stdgo._internal.os.Os.Signal):stdgo._internal.os.Os.Signal {
        stdgo._internal.os.Os.kill = v;
        return v;
    }
var stdin(get, set) : stdgo._internal.os.Os.File;
private function get_stdin():stdgo._internal.os.Os.File return stdgo._internal.os.Os.stdin;
private function set_stdin(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File {
        stdgo._internal.os.Os.stdin = v;
        return v;
    }
var stdout(get, set) : stdgo._internal.os.Os.File;
private function get_stdout():stdgo._internal.os.Os.File return stdgo._internal.os.Os.stdout;
private function set_stdout(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File {
        stdgo._internal.os.Os.stdout = v;
        return v;
    }
var stderr(get, set) : stdgo._internal.os.Os.File;
private function get_stderr():stdgo._internal.os.Os.File return stdgo._internal.os.Os.stderr;
private function set_stderr(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File {
        stdgo._internal.os.Os.stderr = v;
        return v;
    }
var atime(get, set) : stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time;
private function get_atime():stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time return _0 -> stdgo._internal.os.Os.atime(_0);
private function set_atime(v:stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time):stdgo._internal.io.fs.Fs.FileInfo -> stdgo._internal.time.Time.Time {
        stdgo._internal.os.Os.atime = v;
        return v;
    }
var lstatP(get, set) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; };
private function get_lstatP():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo._internal.os.Os.lstatP;
private function set_lstatP(v:stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; }):stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } {
        stdgo._internal.os.Os.lstatP = v;
        return v;
    }
var errWriteAtInAppendMode(get, set) : stdgo.Error;
private function get_errWriteAtInAppendMode():stdgo.Error return stdgo._internal.os.Os.errWriteAtInAppendMode;
private function set_errWriteAtInAppendMode(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errWriteAtInAppendMode = v;
        return v;
    }
var testingForceReadDirLstat(get, set) : stdgo.Pointer<Bool>;
private function get_testingForceReadDirLstat():stdgo.Pointer<Bool> return stdgo._internal.os.Os.testingForceReadDirLstat;
private function set_testingForceReadDirLstat(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.os.Os.testingForceReadDirLstat = v;
        return v;
    }
var errPatternHasSeparator(get, set) : stdgo.Error;
private function get_errPatternHasSeparator():stdgo.Error return stdgo._internal.os.Os.errPatternHasSeparator;
private function set_errPatternHasSeparator(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os.errPatternHasSeparator = v;
        return v;
    }
var splitPath(get, set) : stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; };
private function get_splitPath():stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return _0 -> stdgo._internal.os.Os.splitPath(_0);
private function set_splitPath(v:stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; }):stdgo.GoString -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        stdgo._internal.os.Os.splitPath = v;
        return v;
    }
class T_timeout_static_extension {
    static public function timeout(t:T_timeout):Bool {
        return stdgo._internal.os.Os.T_timeout_static_extension.timeout(t);
    }
}
typedef T_timeout = stdgo._internal.os.Os.T_timeout;
class Signal_static_extension {
    static public function signal(t:Signal):Void {
        stdgo._internal.os.Os.Signal_static_extension.signal(t);
    }
    static public function string(t:Signal):String {
        return stdgo._internal.os.Os.Signal_static_extension.string(t);
    }
}
typedef Signal = stdgo._internal.os.Os.Signal;
@:structInit @:private @:using(stdgo.os.Os.T_dirInfo_static_extension) abstract T_dirInfo(stdgo._internal.os.Os.T_dirInfo) from stdgo._internal.os.Os.T_dirInfo to stdgo._internal.os.Os.T_dirInfo {
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return this._buf;
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = v;
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = v;
        return v;
    }
    public var _bufp(get, set) : StdTypes.Int;
    function get__bufp():StdTypes.Int return this._bufp;
    function set__bufp(v:StdTypes.Int):StdTypes.Int {
        this._bufp = v;
        return v;
    }
    public function new(?_buf:Array<std.UInt>, ?_nbuf:StdTypes.Int, ?_bufp:StdTypes.Int) this = new stdgo._internal.os.Os.T_dirInfo(_buf, _nbuf, _bufp);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.SyscallError_static_extension) abstract SyscallError(stdgo._internal.os.Os.SyscallError) from stdgo._internal.os.Os.SyscallError to stdgo._internal.os.Os.SyscallError {
    public var syscall(get, set) : String;
    function get_syscall():String return this.syscall;
    function set_syscall(v:String):String {
        this.syscall = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?syscall:String, ?err:stdgo.Error) this = new stdgo._internal.os.Os.SyscallError(syscall, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.Process_static_extension) abstract Process(stdgo._internal.os.Os.Process) from stdgo._internal.os.Os.Process to stdgo._internal.os.Os.Process {
    public var pid(get, set) : StdTypes.Int;
    function get_pid():StdTypes.Int return this.pid;
    function set_pid(v:StdTypes.Int):StdTypes.Int {
        this.pid = v;
        return v;
    }
    public var _handle(get, set) : stdgo.GoUIntptr;
    function get__handle():stdgo.GoUIntptr return this._handle;
    function set__handle(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._handle = v;
        return v;
    }
    public var _isdone(get, set) : stdgo._internal.sync.atomic_.Atomic_.Bool_;
    function get__isdone():stdgo._internal.sync.atomic_.Atomic_.Bool_ return this._isdone;
    function set__isdone(v:stdgo._internal.sync.atomic_.Atomic_.Bool_):stdgo._internal.sync.atomic_.Atomic_.Bool_ {
        this._isdone = v;
        return v;
    }
    public var _sigMu(get, set) : stdgo._internal.sync.Sync.RWMutex;
    function get__sigMu():stdgo._internal.sync.Sync.RWMutex return this._sigMu;
    function set__sigMu(v:stdgo._internal.sync.Sync.RWMutex):stdgo._internal.sync.Sync.RWMutex {
        this._sigMu = v;
        return v;
    }
    public function new(?pid:StdTypes.Int, ?_handle:stdgo.GoUIntptr, ?_isdone:stdgo._internal.sync.atomic_.Atomic_.Bool_, ?_sigMu:stdgo._internal.sync.Sync.RWMutex) this = new stdgo._internal.os.Os.Process(pid, _handle, _isdone, _sigMu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract ProcAttr(stdgo._internal.os.Os.ProcAttr) from stdgo._internal.os.Os.ProcAttr to stdgo._internal.os.Os.ProcAttr {
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
    public var files(get, set) : Array<stdgo._internal.os.Os.File>;
    function get_files():Array<stdgo._internal.os.Os.File> return [for (i in this.files) i];
    function set_files(v:Array<stdgo._internal.os.Os.File>):Array<stdgo._internal.os.Os.File> {
        this.files = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>);
        return v;
    }
    public var sys(get, set) : stdgo._internal.syscall.Syscall.SysProcAttr;
    function get_sys():stdgo._internal.syscall.Syscall.SysProcAttr return this.sys;
    function set_sys(v:stdgo._internal.syscall.Syscall.SysProcAttr):stdgo._internal.syscall.Syscall.SysProcAttr {
        this.sys = v;
        return v;
    }
    public function new(?dir:String, ?env:Array<String>, ?files:Array<stdgo._internal.os.Os.File>, ?sys:stdgo._internal.syscall.Syscall.SysProcAttr) this = new stdgo._internal.os.Os.ProcAttr(dir, ([for (i in env) i] : stdgo.Slice<stdgo.GoString>), ([for (i in files) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>), sys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.ProcessState_static_extension) abstract ProcessState(stdgo._internal.os.Os.ProcessState) from stdgo._internal.os.Os.ProcessState to stdgo._internal.os.Os.ProcessState {
    public var _pid(get, set) : StdTypes.Int;
    function get__pid():StdTypes.Int return this._pid;
    function set__pid(v:StdTypes.Int):StdTypes.Int {
        this._pid = v;
        return v;
    }
    public var _status(get, set) : stdgo._internal.syscall.Syscall.WaitStatus;
    function get__status():stdgo._internal.syscall.Syscall.WaitStatus return this._status;
    function set__status(v:stdgo._internal.syscall.Syscall.WaitStatus):stdgo._internal.syscall.Syscall.WaitStatus {
        this._status = v;
        return v;
    }
    public var _rusage(get, set) : stdgo._internal.syscall.Syscall.Rusage;
    function get__rusage():stdgo._internal.syscall.Syscall.Rusage return this._rusage;
    function set__rusage(v:stdgo._internal.syscall.Syscall.Rusage):stdgo._internal.syscall.Syscall.Rusage {
        this._rusage = v;
        return v;
    }
    public function new(?_pid:StdTypes.Int, ?_status:stdgo._internal.syscall.Syscall.WaitStatus, ?_rusage:stdgo._internal.syscall.Syscall.Rusage) this = new stdgo._internal.os.Os.ProcessState(_pid, _status, _rusage);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.LinkError_static_extension) abstract LinkError(stdgo._internal.os.Os.LinkError) from stdgo._internal.os.Os.LinkError to stdgo._internal.os.Os.LinkError {
    public var op(get, set) : String;
    function get_op():String return this.op;
    function set_op(v:String):String {
        this.op = v;
        return v;
    }
    public var old(get, set) : String;
    function get_old():String return this.old;
    function set_old(v:String):String {
        this.old = v;
        return v;
    }
    public var new_(get, set) : String;
    function get_new_():String return this.new_;
    function set_new_(v:String):String {
        this.new_ = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?op:String, ?old:String, ?new_:String, ?err:stdgo.Error) this = new stdgo._internal.os.Os.LinkError(op, old, new_, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.os.Os.T_fileWithoutReadFrom_static_extension) abstract T_fileWithoutReadFrom(stdgo._internal.os.Os.T_fileWithoutReadFrom) from stdgo._internal.os.Os.T_fileWithoutReadFrom to stdgo._internal.os.Os.T_fileWithoutReadFrom {
    public var file(get, set) : stdgo._internal.os.Os.File;
    function get_file():stdgo._internal.os.Os.File return this.file;
    function set_file(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File {
        this.file = v;
        return v;
    }
    public function new(?file:stdgo._internal.os.Os.File) this = new stdgo._internal.os.Os.T_fileWithoutReadFrom(file);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.os.Os.T_file_static_extension) abstract T_file(stdgo._internal.os.Os.T_file) from stdgo._internal.os.Os.T_file to stdgo._internal.os.Os.T_file {
    public var _pfd(get, set) : stdgo._internal.internal.poll.Poll.FD;
    function get__pfd():stdgo._internal.internal.poll.Poll.FD return this._pfd;
    function set__pfd(v:stdgo._internal.internal.poll.Poll.FD):stdgo._internal.internal.poll.Poll.FD {
        this._pfd = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _dirinfo(get, set) : stdgo._internal.os.Os.T_dirInfo;
    function get__dirinfo():stdgo._internal.os.Os.T_dirInfo return this._dirinfo;
    function set__dirinfo(v:stdgo._internal.os.Os.T_dirInfo):stdgo._internal.os.Os.T_dirInfo {
        this._dirinfo = v;
        return v;
    }
    public var _nonblock(get, set) : Bool;
    function get__nonblock():Bool return this._nonblock;
    function set__nonblock(v:Bool):Bool {
        this._nonblock = v;
        return v;
    }
    public var _stdoutOrErr(get, set) : Bool;
    function get__stdoutOrErr():Bool return this._stdoutOrErr;
    function set__stdoutOrErr(v:Bool):Bool {
        this._stdoutOrErr = v;
        return v;
    }
    public var _appendMode(get, set) : Bool;
    function get__appendMode():Bool return this._appendMode;
    function set__appendMode(v:Bool):Bool {
        this._appendMode = v;
        return v;
    }
    public function new(?_pfd:stdgo._internal.internal.poll.Poll.FD, ?_name:String, ?_dirinfo:stdgo._internal.os.Os.T_dirInfo, ?_nonblock:Bool, ?_stdoutOrErr:Bool, ?_appendMode:Bool) this = new stdgo._internal.os.Os.T_file(_pfd, _name, _dirinfo, _nonblock, _stdoutOrErr, _appendMode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.os.Os.T_unixDirent_static_extension) abstract T_unixDirent(stdgo._internal.os.Os.T_unixDirent) from stdgo._internal.os.Os.T_unixDirent to stdgo._internal.os.Os.T_unixDirent {
    public var _parent(get, set) : String;
    function get__parent():String return this._parent;
    function set__parent(v:String):String {
        this._parent = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _typ(get, set) : stdgo._internal.io.fs.Fs.FileMode;
    function get__typ():stdgo._internal.io.fs.Fs.FileMode return this._typ;
    function set__typ(v:stdgo._internal.io.fs.Fs.FileMode):stdgo._internal.io.fs.Fs.FileMode {
        this._typ = v;
        return v;
    }
    public var _info(get, set) : stdgo._internal.io.fs.Fs.FileInfo;
    function get__info():stdgo._internal.io.fs.Fs.FileInfo return this._info;
    function set__info(v:stdgo._internal.io.fs.Fs.FileInfo):stdgo._internal.io.fs.Fs.FileInfo {
        this._info = v;
        return v;
    }
    public function new(?_parent:String, ?_name:String, ?_typ:stdgo._internal.io.fs.Fs.FileMode, ?_info:stdgo._internal.io.fs.Fs.FileInfo) this = new stdgo._internal.os.Os.T_unixDirent(_parent, _name, _typ, _info);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.os.Os.T_rawConn_static_extension) abstract T_rawConn(stdgo._internal.os.Os.T_rawConn) from stdgo._internal.os.Os.T_rawConn to stdgo._internal.os.Os.T_rawConn {
    public var _file(get, set) : stdgo._internal.os.Os.File;
    function get__file():stdgo._internal.os.Os.File return this._file;
    function set__file(v:stdgo._internal.os.Os.File):stdgo._internal.os.Os.File {
        this._file = v;
        return v;
    }
    public function new(?_file:stdgo._internal.os.Os.File) this = new stdgo._internal.os.Os.T_rawConn(_file);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.File_static_extension) abstract File(stdgo._internal.os.Os.File) from stdgo._internal.os.Os.File to stdgo._internal.os.Os.File {
    public var _file(get, set) : stdgo._internal.os.Os.T_file;
    function get__file():stdgo._internal.os.Os.T_file return this._file;
    function set__file(v:stdgo._internal.os.Os.T_file):stdgo._internal.os.Os.T_file {
        this._file = v;
        return v;
    }
    public function new(?_file:stdgo._internal.os.Os.T_file, ?_input:haxe.io.Input, ?_output:haxe.io.Output) this = new stdgo._internal.os.Os.File(_file, _input, _output);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.os.Os.T_fileStat_static_extension) abstract T_fileStat(stdgo._internal.os.Os.T_fileStat) from stdgo._internal.os.Os.T_fileStat to stdgo._internal.os.Os.T_fileStat {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _size(get, set) : haxe.Int64;
    function get__size():haxe.Int64 return this._size;
    function set__size(v:haxe.Int64):haxe.Int64 {
        this._size = v;
        return v;
    }
    public var _mode(get, set) : stdgo._internal.io.fs.Fs.FileMode;
    function get__mode():stdgo._internal.io.fs.Fs.FileMode return this._mode;
    function set__mode(v:stdgo._internal.io.fs.Fs.FileMode):stdgo._internal.io.fs.Fs.FileMode {
        this._mode = v;
        return v;
    }
    public var _modTime(get, set) : stdgo._internal.time.Time.Time;
    function get__modTime():stdgo._internal.time.Time.Time return this._modTime;
    function set__modTime(v:stdgo._internal.time.Time.Time):stdgo._internal.time.Time.Time {
        this._modTime = v;
        return v;
    }
    public var _sys(get, set) : stdgo._internal.syscall.Syscall.Stat_t;
    function get__sys():stdgo._internal.syscall.Syscall.Stat_t return this._sys;
    function set__sys(v:stdgo._internal.syscall.Syscall.Stat_t):stdgo._internal.syscall.Syscall.Stat_t {
        this._sys = v;
        return v;
    }
    public function new(?_name:String, ?_size:haxe.Int64, ?_mode:stdgo._internal.io.fs.Fs.FileMode, ?_modTime:stdgo._internal.time.Time.Time, ?_sys:stdgo._internal.syscall.Syscall.Stat_t) this = new stdgo._internal.os.Os.T_fileStat(_name, _size, _mode, _modTime, _sys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {
    public static function _unlockSlow(__self__:T__struct_0, __0:StdTypes.Int) {
        stdgo._internal.os.Os.T__struct_0_static_extension._unlockSlow(__self__, __0);
    }
    public static function _lockSlow(__self__:T__struct_0) {
        stdgo._internal.os.Os.T__struct_0_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:T__struct_0) {
        stdgo._internal.os.Os.T__struct_0_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:T__struct_0):Bool {
        return stdgo._internal.os.Os.T__struct_0_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:T__struct_0) {
        stdgo._internal.os.Os.T__struct_0_static_extension.lock(__self__);
    }
}
typedef T__struct_0 = stdgo._internal.os.Os.T__struct_0;
typedef T_readdirMode = stdgo._internal.os.Os.T_readdirMode;
typedef DirEntry = stdgo._internal.os.Os.DirEntry;
typedef PathError = stdgo._internal.os.Os.PathError;
typedef T_syscallErrorType = stdgo._internal.os.Os.T_syscallErrorType;
typedef T_dirFS = stdgo._internal.os.Os.T_dirFS;
typedef T_newFileKind = stdgo._internal.os.Os.T_newFileKind;
typedef FileInfo = stdgo._internal.os.Os.FileInfo;
typedef FileMode = stdgo._internal.os.Os.FileMode;
class T_dirInfo_static_extension {
    static public function _close(_d:T_dirInfo):Void {
        stdgo._internal.os.Os.T_dirInfo_static_extension._close(_d);
    }
}
class SyscallError_static_extension {
    static public function timeout(_e:SyscallError):Bool {
        return stdgo._internal.os.Os.SyscallError_static_extension.timeout(_e);
    }
    static public function unwrap(_e:SyscallError):stdgo.Error {
        return stdgo._internal.os.Os.SyscallError_static_extension.unwrap(_e);
    }
    static public function error(_e:SyscallError):String {
        return stdgo._internal.os.Os.SyscallError_static_extension.error(_e);
    }
}
class Process_static_extension {
    static public function _blockUntilWaitable(_p:Process):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.Process_static_extension._blockUntilWaitable(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _release(_p:Process):stdgo.Error {
        return stdgo._internal.os.Os.Process_static_extension._release(_p);
    }
    static public function _signal(_p:Process, _sig:Signal):stdgo.Error {
        return stdgo._internal.os.Os.Process_static_extension._signal(_p, _sig);
    }
    static public function _wait(_p:Process):stdgo.Tuple<ProcessState, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.Process_static_extension._wait(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _kill(_p:Process):stdgo.Error {
        return stdgo._internal.os.Os.Process_static_extension._kill(_p);
    }
    static public function signal(_p:Process, _sig:Signal):stdgo.Error {
        return stdgo._internal.os.Os.Process_static_extension.signal(_p, _sig);
    }
    static public function wait_(_p:Process):stdgo.Tuple<ProcessState, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.Process_static_extension.wait_(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function kill(_p:Process):stdgo.Error {
        return stdgo._internal.os.Os.Process_static_extension.kill(_p);
    }
    static public function release(_p:Process):stdgo.Error {
        return stdgo._internal.os.Os.Process_static_extension.release(_p);
    }
    static public function _done(_p:Process):Bool {
        return stdgo._internal.os.Os.Process_static_extension._done(_p);
    }
    static public function _setDone(_p:Process):Void {
        stdgo._internal.os.Os.Process_static_extension._setDone(_p);
    }
}
class ProcessState_static_extension {
    static public function _systemTime(_p:ProcessState):stdgo._internal.time.Time.Duration {
        return stdgo._internal.os.Os.ProcessState_static_extension._systemTime(_p);
    }
    static public function _userTime(_p:ProcessState):stdgo._internal.time.Time.Duration {
        return stdgo._internal.os.Os.ProcessState_static_extension._userTime(_p);
    }
    static public function exitCode(_p:ProcessState):StdTypes.Int {
        return stdgo._internal.os.Os.ProcessState_static_extension.exitCode(_p);
    }
    static public function string(_p:ProcessState):String {
        return stdgo._internal.os.Os.ProcessState_static_extension.string(_p);
    }
    static public function _sysUsage(_p:ProcessState):stdgo.AnyInterface {
        return stdgo._internal.os.Os.ProcessState_static_extension._sysUsage(_p);
    }
    static public function _sys(_p:ProcessState):stdgo.AnyInterface {
        return stdgo._internal.os.Os.ProcessState_static_extension._sys(_p);
    }
    static public function _success(_p:ProcessState):Bool {
        return stdgo._internal.os.Os.ProcessState_static_extension._success(_p);
    }
    static public function _exited(_p:ProcessState):Bool {
        return stdgo._internal.os.Os.ProcessState_static_extension._exited(_p);
    }
    static public function pid(_p:ProcessState):StdTypes.Int {
        return stdgo._internal.os.Os.ProcessState_static_extension.pid(_p);
    }
    static public function sysUsage(_p:ProcessState):stdgo.AnyInterface {
        return stdgo._internal.os.Os.ProcessState_static_extension.sysUsage(_p);
    }
    static public function sys(_p:ProcessState):stdgo.AnyInterface {
        return stdgo._internal.os.Os.ProcessState_static_extension.sys(_p);
    }
    static public function success(_p:ProcessState):Bool {
        return stdgo._internal.os.Os.ProcessState_static_extension.success(_p);
    }
    static public function exited(_p:ProcessState):Bool {
        return stdgo._internal.os.Os.ProcessState_static_extension.exited(_p);
    }
    static public function systemTime(_p:ProcessState):stdgo._internal.time.Time.Duration {
        return stdgo._internal.os.Os.ProcessState_static_extension.systemTime(_p);
    }
    static public function userTime(_p:ProcessState):stdgo._internal.time.Time.Duration {
        return stdgo._internal.os.Os.ProcessState_static_extension.userTime(_p);
    }
}
class LinkError_static_extension {
    static public function unwrap(_e:LinkError):stdgo.Error {
        return stdgo._internal.os.Os.LinkError_static_extension.unwrap(_e);
    }
    static public function error(_e:LinkError):String {
        return stdgo._internal.os.Os.LinkError_static_extension.error(_e);
    }
}
class T_fileWithoutReadFrom_static_extension {
    static public function readFrom(_:T_fileWithoutReadFrom, _0:T_fileWithoutReadFrom):Void {
        stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.readFrom(_, _0);
    }
    public static function _write(__self__:T_fileWithoutReadFrom, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._write(__self__, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _wrapErr(__self__:T_fileWithoutReadFrom, _op:String, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._wrapErr(__self__, _op, _err);
    }
    public static function _setWriteDeadline(__self__:T_fileWithoutReadFrom, __0:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._setWriteDeadline(__self__, __0);
    }
    public static function _setReadDeadline(__self__:T_fileWithoutReadFrom, __0:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._setReadDeadline(__self__, __0);
    }
    public static function _setDeadline(__self__:T_fileWithoutReadFrom, __0:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._setDeadline(__self__, __0);
    }
    public static function _seek(__self__:T_fileWithoutReadFrom, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._seek(__self__, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _readdir(__self__:T_fileWithoutReadFrom, _n:StdTypes.Int, _mode:stdgo._internal.os.Os.T_readdirMode):stdgo.Tuple.Tuple4<Array<String>, Array<stdgo._internal.io.fs.Fs.DirEntry>, Array<stdgo._internal.io.fs.Fs.FileInfo>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._readdir(__self__, _n, _mode);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : [for (i in obj._2) i], _3 : obj._3 };
        };
    }
    public static function _readFrom(__self__:T_fileWithoutReadFrom, _r:stdgo._internal.io.Io.Reader):stdgo.Tuple.Tuple3<haxe.Int64, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._readFrom(__self__, _r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _read(__self__:T_fileWithoutReadFrom, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._read(__self__, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pwrite(__self__:T_fileWithoutReadFrom, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._pwrite(__self__, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pread(__self__:T_fileWithoutReadFrom, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._pread(__self__, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _close(__self__:T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._close(__self__);
    }
    public static function _chmod(__self__:T_fileWithoutReadFrom, _mode:stdgo._internal.io.fs.Fs.FileMode):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._chmod(__self__, _mode);
    }
    public static function _checkValid(__self__:T_fileWithoutReadFrom, __0:String):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension._checkValid(__self__, __0);
    }
    public static function writeString(__self__:T_fileWithoutReadFrom, __0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.writeString(__self__, __0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeAt(__self__:T_fileWithoutReadFrom, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.writeAt(__self__, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function write(__self__:T_fileWithoutReadFrom, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.write(__self__, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function truncate(__self__:T_fileWithoutReadFrom, __0:haxe.Int64):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.truncate(__self__, __0);
    }
    public static function syscallConn(__self__:T_fileWithoutReadFrom):stdgo.Tuple<stdgo._internal.syscall.Syscall.RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.syscallConn(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function sync(__self__:T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.sync(__self__);
    }
    public static function stat(__self__:T_fileWithoutReadFrom):stdgo.Tuple<stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.stat(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:T_fileWithoutReadFrom, __0:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.setWriteDeadline(__self__, __0);
    }
    public static function setReadDeadline(__self__:T_fileWithoutReadFrom, __0:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.setReadDeadline(__self__, __0);
    }
    public static function setDeadline(__self__:T_fileWithoutReadFrom, __0:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.setDeadline(__self__, __0);
    }
    public static function seek(__self__:T_fileWithoutReadFrom, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.seek(__self__, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readdirnames(__self__:T_fileWithoutReadFrom, _n:StdTypes.Int):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.readdirnames(__self__, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readdir(__self__:T_fileWithoutReadFrom, _n:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs.FileInfo>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.readdir(__self__, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readDir(__self__:T_fileWithoutReadFrom, _n:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs.DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.readDir(__self__, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readAt(__self__:T_fileWithoutReadFrom, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.readAt(__self__, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:T_fileWithoutReadFrom, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.read(__self__, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function name(__self__:T_fileWithoutReadFrom):String {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.name(__self__);
    }
    public static function fd(__self__:T_fileWithoutReadFrom):stdgo.GoUIntptr {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.fd(__self__);
    }
    public static function close(__self__:T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.close(__self__);
    }
    public static function chown(__self__:T_fileWithoutReadFrom, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.chown(__self__, _uid, _gid);
    }
    public static function chmod(__self__:T_fileWithoutReadFrom, _mode:stdgo._internal.io.fs.Fs.FileMode):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.chmod(__self__, _mode);
    }
    public static function chdir(__self__:T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os.T_fileWithoutReadFrom_static_extension.chdir(__self__);
    }
}
class T_file_static_extension {
    static public function _close(_file:T_file):stdgo.Error {
        return stdgo._internal.os.Os.T_file_static_extension._close(_file);
    }
}
class T_unixDirent_static_extension {
    static public function string(_d:T_unixDirent):String {
        return stdgo._internal.os.Os.T_unixDirent_static_extension.string(_d);
    }
    static public function info(_d:T_unixDirent):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_unixDirent_static_extension.info(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(_d:T_unixDirent):FileMode {
        return stdgo._internal.os.Os.T_unixDirent_static_extension.type(_d);
    }
    static public function isDir(_d:T_unixDirent):Bool {
        return stdgo._internal.os.Os.T_unixDirent_static_extension.isDir(_d);
    }
    static public function name(_d:T_unixDirent):String {
        return stdgo._internal.os.Os.T_unixDirent_static_extension.name(_d);
    }
}
class T_rawConn_static_extension {
    static public function write(_c:T_rawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.os.Os.T_rawConn_static_extension.write(_c, _f);
    }
    static public function read(_c:T_rawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _f = _f;
        return stdgo._internal.os.Os.T_rawConn_static_extension.read(_c, _f);
    }
    static public function control(_c:T_rawConn, _f:stdgo.GoUIntptr -> Void):stdgo.Error {
        final _f = _f;
        return stdgo._internal.os.Os.T_rawConn_static_extension.control(_c, _f);
    }
}
class File_static_extension {
    static public function stat(_f:File):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.stat(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readFrom(_f:File, _r:stdgo._internal.io.Io.Reader):stdgo.Tuple.Tuple3<haxe.Int64, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._readFrom(_f, _r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _seek(_f:File, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._seek(_f, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fd(_f:File):stdgo.GoUIntptr {
        return stdgo._internal.os.Os.File_static_extension.fd(_f);
    }
    static public function _checkValid(_f:File, _op:String):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._checkValid(_f, _op);
    }
    static public function _setWriteDeadline(_f:File, _t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._setWriteDeadline(_f, _t);
    }
    static public function _setReadDeadline(_f:File, _t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._setReadDeadline(_f, _t);
    }
    static public function _setDeadline(_f:File, _t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._setDeadline(_f, _t);
    }
    static public function chdir(_f:File):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.chdir(_f);
    }
    static public function sync(_f:File):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.sync(_f);
    }
    static public function truncate(_f:File, _size:haxe.Int64):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.truncate(_f, _size);
    }
    static public function chown(_f:File, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.chown(_f, _uid, _gid);
    }
    static public function _chmod(_f:File, _mode:FileMode):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._chmod(_f, _mode);
    }
    static public function _pwrite(_f:File, _b:Array<StdTypes.Int>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._pwrite(_f, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _write(_f:File, _b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._write(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pread(_f:File, _b:Array<StdTypes.Int>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._pread(_f, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _read(_f:File, _b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_f:File):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.close(_f);
    }
    static public function syscallConn(_f:File):stdgo.Tuple<stdgo._internal.syscall.Syscall.RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.syscallConn(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setWriteDeadline(_f:File, _t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.setWriteDeadline(_f, _t);
    }
    static public function setReadDeadline(_f:File, _t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.setReadDeadline(_f, _t);
    }
    static public function setDeadline(_f:File, _t:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.setDeadline(_f, _t);
    }
    static public function chmod(_f:File, _mode:FileMode):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension.chmod(_f, _mode);
    }
    static public function _wrapErr(_f:File, _op:String, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._wrapErr(_f, _op, _err);
    }
    static public function writeString(_f:File, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.writeString(_f, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_f:File, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.seek(_f, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeAt(_f:File, _b:Array<StdTypes.Int>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.writeAt(_f, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_f:File, _b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.write(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(_f:File, _r:stdgo._internal.io.Io.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.readFrom(_f, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(_f:File, _b:Array<StdTypes.Int>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.readAt(_f, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_f:File, _b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function name(_f:File):String {
        return stdgo._internal.os.Os.File_static_extension.name(_f);
    }
    static public function _readdir(_f:File, _n:StdTypes.Int, _mode:T_readdirMode):stdgo.Tuple.Tuple4<Array<String>, Array<DirEntry>, Array<FileInfo>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension._readdir(_f, _n, _mode);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : [for (i in obj._2) i], _3 : obj._3 };
        };
    }
    static public function readDir(_f:File, _n:StdTypes.Int):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.readDir(_f, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readdirnames(_f:File, _n:StdTypes.Int):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.readdirnames(_f, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readdir(_f:File, _n:StdTypes.Int):stdgo.Tuple<Array<FileInfo>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.File_static_extension.readdir(_f, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function _close(__self__:File):stdgo.Error {
        return stdgo._internal.os.Os.File_static_extension._close(__self__);
    }
}
class T_fileStat_static_extension {
    static public function sys(_fs:T_fileStat):stdgo.AnyInterface {
        return stdgo._internal.os.Os.T_fileStat_static_extension.sys(_fs);
    }
    static public function modTime(_fs:T_fileStat):stdgo._internal.time.Time.Time {
        return stdgo._internal.os.Os.T_fileStat_static_extension.modTime(_fs);
    }
    static public function mode(_fs:T_fileStat):FileMode {
        return stdgo._internal.os.Os.T_fileStat_static_extension.mode(_fs);
    }
    static public function size(_fs:T_fileStat):haxe.Int64 {
        return stdgo._internal.os.Os.T_fileStat_static_extension.size(_fs);
    }
    static public function isDir(_fs:T_fileStat):Bool {
        return stdgo._internal.os.Os.T_fileStat_static_extension.isDir(_fs);
    }
    static public function name(_fs:T_fileStat):String {
        return stdgo._internal.os.Os.T_fileStat_static_extension.name(_fs);
    }
}
class T_dirFS_static_extension {
    static public function _join(_dir:T_dirFS, _name:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_dirFS_static_extension._join(_dir, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_dir:T_dirFS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_dirFS_static_extension.stat(_dir, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readDir(_dir:T_dirFS, _name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_dirFS_static_extension.readDir(_dir, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readFile(_dir:T_dirFS, _name:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_dirFS_static_extension.readFile(_dir, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function open(_dir:T_dirFS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs.File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.T_dirFS_static_extension.open(_dir, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package os provides a platform-independent interface to operating system
    functionality. The design is Unix-like, although the error handling is
    Go-like; failing calls return values of type error rather than error numbers.
    Often, more information is available within the error. For example,
    if a call that takes a file name fails, such as Open or Stat, the error
    will include the failing file name when printed and will be of type
    *PathError, which may be unpacked for more information.
    
    The os interface is intended to be uniform across all operating systems.
    Features not generally available appear in the system-specific package syscall.
    
    Here is a simple example, opening a file and reading some of it.
    
    	file, err := os.Open("file.go") // For read access.
    	if err != nil {
    		log.Fatal(err)
    	}
    
    If the open fails, the error string will be self-explanatory, like
    
    	open file.go: no such file or directory
    
    The file's data can then be read into a slice of bytes. Read and
    Write take their byte counts from the length of the argument slice.
    
    	data := make([]byte, 100)
    	count, err := file.Read(data)
    	if err != nil {
    		log.Fatal(err)
    	}
    	fmt.Printf("read %d bytes: %q\n", count, data[:count])
    
    Note: The maximum number of concurrent operations on a File may be limited by
    the OS or the system. The number should be high, but exceeding it may degrade
    performance or cause other issues.
**/
class Os {
    /**
        ReadDir reads the named directory,
        returning all its directory entries sorted by filename.
        If an error occurs reading the directory,
        ReadDir returns the entries it was able to read before the error,
        along with the error.
    **/
    static public function readDir(_name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.readDir(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Expand replaces ${var} or $var in the string based on the mapping function.
        For example, os.ExpandEnv(s) is equivalent to os.Expand(s, os.Getenv).
    **/
    static public function expand(_s:String, _mapping:stdgo.GoString -> stdgo.GoString):String {
        final _mapping = _mapping;
        return stdgo._internal.os.Os.expand(_s, _mapping);
    }
    /**
        ExpandEnv replaces ${var} or $var in the string according to the values
        of the current environment variables. References to undefined
        variables are replaced by the empty string.
    **/
    static public function expandEnv(_s:String):String {
        return stdgo._internal.os.Os.expandEnv(_s);
    }
    /**
        Getenv retrieves the value of the environment variable named by the key.
        It returns the value, which will be empty if the variable is not present.
        To distinguish between an empty value and an unset value, use LookupEnv.
    **/
    static public function getenv(_key:String):String {
        return stdgo._internal.os.Os.getenv(_key);
    }
    /**
        LookupEnv retrieves the value of the environment variable named
        by the key. If the variable is present in the environment the
        value (which may be empty) is returned and the boolean is true.
        Otherwise the returned value will be empty and the boolean will
        be false.
    **/
    static public function lookupEnv(_key:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.os.Os.lookupEnv(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Setenv sets the value of the environment variable named by the key.
        It returns an error, if any.
    **/
    static public function setenv(_key:String, _value:String):stdgo.Error {
        return stdgo._internal.os.Os.setenv(_key, _value);
    }
    /**
        Unsetenv unsets a single environment variable.
    **/
    static public function unsetenv(_key:String):stdgo.Error {
        return stdgo._internal.os.Os.unsetenv(_key);
    }
    /**
        Clearenv deletes all environment variables.
    **/
    static public function clearenv():Void {
        stdgo._internal.os.Os.clearenv();
    }
    /**
        Environ returns a copy of strings representing the environment,
        in the form "key=value".
    **/
    static public function environ():Array<String> {
        return [for (i in stdgo._internal.os.Os.environ()) i];
    }
    /**
        NewSyscallError returns, as an error, a new SyscallError
        with the given system call name and error details.
        As a convenience, if err is nil, NewSyscallError returns nil.
    **/
    static public function newSyscallError(_syscall:String, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.os.Os.newSyscallError(_syscall, _err);
    }
    /**
        IsExist returns a boolean indicating whether the error is known to report
        that a file or directory already exists. It is satisfied by ErrExist as
        well as some syscall errors.
        
        This function predates errors.Is. It only supports errors returned by
        the os package. New code should use errors.Is(err, fs.ErrExist).
    **/
    static public function isExist(_err:stdgo.Error):Bool {
        return stdgo._internal.os.Os.isExist(_err);
    }
    /**
        IsNotExist returns a boolean indicating whether the error is known to
        report that a file or directory does not exist. It is satisfied by
        ErrNotExist as well as some syscall errors.
        
        This function predates errors.Is. It only supports errors returned by
        the os package. New code should use errors.Is(err, fs.ErrNotExist).
    **/
    static public function isNotExist(_err:stdgo.Error):Bool {
        return stdgo._internal.os.Os.isNotExist(_err);
    }
    /**
        IsPermission returns a boolean indicating whether the error is known to
        report that permission is denied. It is satisfied by ErrPermission as well
        as some syscall errors.
        
        This function predates errors.Is. It only supports errors returned by
        the os package. New code should use errors.Is(err, fs.ErrPermission).
    **/
    static public function isPermission(_err:stdgo.Error):Bool {
        return stdgo._internal.os.Os.isPermission(_err);
    }
    /**
        IsTimeout returns a boolean indicating whether the error is known
        to report that a timeout occurred.
        
        This function predates errors.Is, and the notion of whether an
        error indicates a timeout can be ambiguous. For example, the Unix
        error EWOULDBLOCK sometimes indicates a timeout and sometimes does not.
        New code should use errors.Is with a value appropriate to the call
        returning the error, such as os.ErrDeadlineExceeded.
    **/
    static public function isTimeout(_err:stdgo.Error):Bool {
        return stdgo._internal.os.Os.isTimeout(_err);
    }
    /**
        Getpid returns the process id of the caller.
    **/
    static public function getpid():StdTypes.Int {
        return stdgo._internal.os.Os.getpid();
    }
    /**
        Getppid returns the process id of the caller's parent.
    **/
    static public function getppid():StdTypes.Int {
        return stdgo._internal.os.Os.getppid();
    }
    /**
        FindProcess looks for a running process by its pid.
        
        The Process it returns can be used to obtain information
        about the underlying operating system process.
        
        On Unix systems, FindProcess always succeeds and returns a Process
        for the given pid, regardless of whether the process exists. To test whether
        the process actually exists, see whether p.Signal(syscall.Signal(0)) reports
        an error.
    **/
    static public function findProcess(_pid:StdTypes.Int):stdgo.Tuple<Process, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.findProcess(_pid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        StartProcess starts a new process with the program, arguments and attributes
        specified by name, argv and attr. The argv slice will become os.Args in the
        new process, so it normally starts with the program name.
        
        If the calling goroutine has locked the operating system thread
        with runtime.LockOSThread and modified any inheritable OS-level
        thread state (for example, Linux or Plan 9 name spaces), the new
        process will inherit the caller's thread state.
        
        StartProcess is a low-level interface. The os/exec package provides
        higher-level interfaces.
        
        If there is an error, it will be of type *PathError.
    **/
    static public function startProcess(_name:String, _argv:Array<String>, _attr:ProcAttr):stdgo.Tuple<Process, stdgo.Error> {
        final _argv = ([for (i in _argv) i] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.os.Os.startProcess(_name, _argv, _attr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Executable returns the path name for the executable that started
        the current process. There is no guarantee that the path is still
        pointing to the correct executable. If a symlink was used to start
        the process, depending on the operating system, the result might
        be the symlink or the path it pointed to. If a stable result is
        needed, path/filepath.EvalSymlinks might help.
        
        Executable returns an absolute path unless an error occurred.
        
        The main use case is finding resources located relative to an
        executable.
    **/
    static public function executable():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.executable();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Mkdir creates a new directory with the specified name and permission
        bits (before umask).
        If there is an error, it will be of type *PathError.
    **/
    static public function mkdir(_name:String, _perm:FileMode):stdgo.Error {
        return stdgo._internal.os.Os.mkdir(_name, _perm);
    }
    /**
        Chdir changes the current working directory to the named directory.
        If there is an error, it will be of type *PathError.
    **/
    static public function chdir(_dir:String):stdgo.Error {
        return stdgo._internal.os.Os.chdir(_dir);
    }
    /**
        Open opens the named file for reading. If successful, methods on
        the returned file can be used for reading; the associated file
        descriptor has mode O_RDONLY.
        If there is an error, it will be of type *PathError.
    **/
    static public function open(_name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.open(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Create creates or truncates the named file. If the file already exists,
        it is truncated. If the file does not exist, it is created with mode 0666
        (before umask). If successful, methods on the returned File can
        be used for I/O; the associated file descriptor has mode O_RDWR.
        If there is an error, it will be of type *PathError.
    **/
    static public function create(_name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.create(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        OpenFile is the generalized open call; most users will use Open
        or Create instead. It opens the named file with specified flag
        (O_RDONLY etc.). If the file does not exist, and the O_CREATE flag
        is passed, it is created with mode perm (before umask). If successful,
        methods on the returned File can be used for I/O.
        If there is an error, it will be of type *PathError.
    **/
    static public function openFile(_name:String, _flag:StdTypes.Int, _perm:FileMode):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.openFile(_name, _flag, _perm);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Rename renames (moves) oldpath to newpath.
        If newpath already exists and is not a directory, Rename replaces it.
        OS-specific restrictions may apply when oldpath and newpath are in different directories.
        Even within the same directory, on non-Unix platforms Rename is not an atomic operation.
        If there is an error, it will be of type *LinkError.
    **/
    static public function rename(_oldpath:String, _newpath:String):stdgo.Error {
        return stdgo._internal.os.Os.rename(_oldpath, _newpath);
    }
    /**
        TempDir returns the default directory to use for temporary files.
        
        On Unix systems, it returns $TMPDIR if non-empty, else /tmp.
        On Windows, it uses GetTempPath, returning the first non-empty
        value from %TMP%, %TEMP%, %USERPROFILE%, or the Windows directory.
        On Plan 9, it returns /tmp.
        
        The directory is neither guaranteed to exist nor have accessible
        permissions.
    **/
    static public function tempDir():String {
        return stdgo._internal.os.Os.tempDir();
    }
    /**
        UserCacheDir returns the default root directory to use for user-specific
        cached data. Users should create their own application-specific subdirectory
        within this one and use that.
        
        On Unix systems, it returns $XDG_CACHE_HOME as specified by
        https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
        non-empty, else $HOME/.cache.
        On Darwin, it returns $HOME/Library/Caches.
        On Windows, it returns %LocalAppData%.
        On Plan 9, it returns $home/lib/cache.
        
        If the location cannot be determined (for example, $HOME is not defined),
        then it will return an error.
    **/
    static public function userCacheDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.userCacheDir();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        UserConfigDir returns the default root directory to use for user-specific
        configuration data. Users should create their own application-specific
        subdirectory within this one and use that.
        
        On Unix systems, it returns $XDG_CONFIG_HOME as specified by
        https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
        non-empty, else $HOME/.config.
        On Darwin, it returns $HOME/Library/Application Support.
        On Windows, it returns %AppData%.
        On Plan 9, it returns $home/lib.
        
        If the location cannot be determined (for example, $HOME is not defined),
        then it will return an error.
    **/
    static public function userConfigDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.userConfigDir();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        UserHomeDir returns the current user's home directory.
        
        On Unix, including macOS, it returns the $HOME environment variable.
        On Windows, it returns %USERPROFILE%.
        On Plan 9, it returns the $home environment variable.
        
        If the expected variable is not set in the environment, UserHomeDir
        returns either a platform-specific default value or a non-nil error.
    **/
    static public function userHomeDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.userHomeDir();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Chmod changes the mode of the named file to mode.
        If the file is a symbolic link, it changes the mode of the link's target.
        If there is an error, it will be of type *PathError.
        
        A different subset of the mode bits are used, depending on the
        operating system.
        
        On Unix, the mode's permission bits, ModeSetuid, ModeSetgid, and
        ModeSticky are used.
        
        On Windows, only the 0200 bit (owner writable) of mode is used; it
        controls whether the file's read-only attribute is set or cleared.
        The other bits are currently unused. For compatibility with Go 1.12
        and earlier, use a non-zero mode. Use mode 0400 for a read-only
        file and 0600 for a readable+writable file.
        
        On Plan 9, the mode's permission bits, ModeAppend, ModeExclusive,
        and ModeTemporary are used.
    **/
    static public function chmod(_name:String, _mode:FileMode):stdgo.Error {
        return stdgo._internal.os.Os.chmod(_name, _mode);
    }
    /**
        DirFS returns a file system (an fs.FS) for the tree of files rooted at the directory dir.
        
        Note that DirFS("/prefix") only guarantees that the Open calls it makes to the
        operating system will begin with "/prefix": DirFS("/prefix").Open("file") is the
        same as os.Open("/prefix/file"). So if /prefix/file is a symbolic link pointing outside
        the /prefix tree, then using DirFS does not stop the access any more than using
        os.Open does. Additionally, the root of the fs.FS returned for a relative path,
        DirFS("prefix"), will be affected by later calls to Chdir. DirFS is therefore not
        a general substitute for a chroot-style security mechanism when the directory tree
        contains arbitrary content.
        
        The directory dir must not be "".
        
        The result implements [io/fs.StatFS], [io/fs.ReadFileFS] and
        [io/fs.ReadDirFS].
    **/
    static public function dirFS(_dir:String):stdgo._internal.io.fs.Fs.FS {
        return stdgo._internal.os.Os.dirFS(_dir);
    }
    /**
        ReadFile reads the named file and returns the contents.
        A successful call returns err == nil, not err == EOF.
        Because ReadFile reads the whole file, it does not treat an EOF from Read
        as an error to be reported.
    **/
    static public function readFile(_name:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.readFile(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        WriteFile writes data to the named file, creating it if necessary.
        If the file does not exist, WriteFile creates it with permissions perm (before umask);
        otherwise WriteFile truncates it before writing, without changing permissions.
        Since WriteFile requires multiple system calls to complete, a failure mid-operation
        can leave the file in a partially written state.
    **/
    static public function writeFile(_name:String, _data:Array<StdTypes.Int>, _perm:FileMode):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.os.Os.writeFile(_name, _data, _perm);
    }
    /**
        Chown changes the numeric uid and gid of the named file.
        If the file is a symbolic link, it changes the uid and gid of the link's target.
        A uid or gid of -1 means to not change that value.
        If there is an error, it will be of type *PathError.
        
        On Windows or Plan 9, Chown always returns the syscall.EWINDOWS or
        EPLAN9 error, wrapped in *PathError.
    **/
    static public function chown(_name:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.os.Os.chown(_name, _uid, _gid);
    }
    /**
        Lchown changes the numeric uid and gid of the named file.
        If the file is a symbolic link, it changes the uid and gid of the link itself.
        If there is an error, it will be of type *PathError.
        
        On Windows, it always returns the syscall.EWINDOWS error, wrapped
        in *PathError.
    **/
    static public function lchown(_name:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        return stdgo._internal.os.Os.lchown(_name, _uid, _gid);
    }
    /**
        Chtimes changes the access and modification times of the named
        file, similar to the Unix utime() or utimes() functions.
        A zero time.Time value will leave the corresponding file time unchanged.
        
        The underlying filesystem may truncate or round the values to a
        less precise time unit.
        If there is an error, it will be of type *PathError.
    **/
    static public function chtimes(_name:String, _atime:stdgo._internal.time.Time.Time, _mtime:stdgo._internal.time.Time.Time):stdgo.Error {
        return stdgo._internal.os.Os.chtimes(_name, _atime, _mtime);
    }
    /**
        NewFile returns a new File with the given file descriptor and
        name. The returned value will be nil if fd is not a valid file
        descriptor. On Unix systems, if the file descriptor is in
        non-blocking mode, NewFile will attempt to return a pollable File
        (one for which the SetDeadline methods work).
        
        After passing it to NewFile, fd may become invalid under the same
        conditions described in the comments of the Fd method, and the same
        constraints apply.
    **/
    static public function newFile(_fd:stdgo.GoUIntptr, _name:String):File {
        return stdgo._internal.os.Os.newFile(_fd, _name);
    }
    /**
        Truncate changes the size of the named file.
        If the file is a symbolic link, it changes the size of the link's target.
        If there is an error, it will be of type *PathError.
    **/
    static public function truncate(_name:String, _size:haxe.Int64):stdgo.Error {
        return stdgo._internal.os.Os.truncate(_name, _size);
    }
    /**
        Remove removes the named file or (empty) directory.
        If there is an error, it will be of type *PathError.
    **/
    static public function remove(_name:String):stdgo.Error {
        return stdgo._internal.os.Os.remove(_name);
    }
    /**
        Link creates newname as a hard link to the oldname file.
        If there is an error, it will be of type *LinkError.
    **/
    static public function link(_oldname:String, _newname:String):stdgo.Error {
        return stdgo._internal.os.Os.link(_oldname, _newname);
    }
    /**
        Symlink creates newname as a symbolic link to oldname.
        On Windows, a symlink to a non-existent oldname creates a file symlink;
        if oldname is later created as a directory the symlink will not work.
        If there is an error, it will be of type *LinkError.
    **/
    static public function symlink(_oldname:String, _newname:String):stdgo.Error {
        return stdgo._internal.os.Os.symlink(_oldname, _newname);
    }
    /**
        Readlink returns the destination of the named symbolic link.
        If there is an error, it will be of type *PathError.
    **/
    static public function readlink(_name:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.readlink(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Getwd returns a rooted path name corresponding to the
        current directory. If the current directory can be
        reached via multiple paths (due to symbolic links),
        Getwd may return any one of them.
    **/
    static public function getwd():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.getwd();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MkdirAll creates a directory named path,
        along with any necessary parents, and returns nil,
        or else returns an error.
        The permission bits perm (before umask) are used for all
        directories that MkdirAll creates.
        If path is already a directory, MkdirAll does nothing
        and returns nil.
    **/
    static public function mkdirAll(_path:String, _perm:FileMode):stdgo.Error {
        return stdgo._internal.os.Os.mkdirAll(_path, _perm);
    }
    /**
        RemoveAll removes path and any children it contains.
        It removes everything it can but returns the first error
        it encounters. If the path does not exist, RemoveAll
        returns nil (no error).
        If there is an error, it will be of type *PathError.
    **/
    static public function removeAll(_path:String):stdgo.Error {
        return stdgo._internal.os.Os.removeAll(_path);
    }
    /**
        IsPathSeparator reports whether c is a directory separator character.
    **/
    static public function isPathSeparator(_c:std.UInt):Bool {
        return stdgo._internal.os.Os.isPathSeparator(_c);
    }
    /**
        Pipe returns a connected pair of Files; reads from r return bytes written to w.
        It returns the files and an error, if any.
    **/
    static public function pipe():stdgo.Tuple.Tuple3<File, File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.pipe();
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        Getuid returns the numeric user id of the caller.
        
        On Windows, it returns -1.
    **/
    static public function getuid():StdTypes.Int {
        return stdgo._internal.os.Os.getuid();
    }
    /**
        Geteuid returns the numeric effective user id of the caller.
        
        On Windows, it returns -1.
    **/
    static public function geteuid():StdTypes.Int {
        return stdgo._internal.os.Os.geteuid();
    }
    /**
        Getgid returns the numeric group id of the caller.
        
        On Windows, it returns -1.
    **/
    static public function getgid():StdTypes.Int {
        return stdgo._internal.os.Os.getgid();
    }
    /**
        Getegid returns the numeric effective group id of the caller.
        
        On Windows, it returns -1.
    **/
    static public function getegid():StdTypes.Int {
        return stdgo._internal.os.Os.getegid();
    }
    /**
        Getgroups returns a list of the numeric ids of groups that the caller belongs to.
        
        On Windows, it returns syscall.EWINDOWS. See the os/user package
        for a possible alternative.
    **/
    static public function getgroups():stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.getgroups();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Exit causes the current program to exit with the given status code.
        Conventionally, code zero indicates success, non-zero an error.
        The program terminates immediately; deferred functions are not run.
        
        For portability, the status code should be in the range [0, 125].
    **/
    static public function exit(_code:StdTypes.Int):Void {
        stdgo._internal.os.Os.exit(_code);
    }
    /**
        Stat returns a FileInfo describing the named file.
        If there is an error, it will be of type *PathError.
    **/
    static public function stat(_name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.stat(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Lstat returns a FileInfo describing the named file.
        If the file is a symbolic link, the returned FileInfo
        describes the symbolic link. Lstat makes no attempt to follow the link.
        If there is an error, it will be of type *PathError.
    **/
    static public function lstat(_name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.lstat(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Hostname returns the host name reported by the kernel.
    **/
    static public function hostname():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.hostname();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        CreateTemp creates a new temporary file in the directory dir,
        opens the file for reading and writing, and returns the resulting file.
        The filename is generated by taking pattern and adding a random string to the end.
        If pattern includes a "*", the random string replaces the last "*".
        If dir is the empty string, CreateTemp uses the default directory for temporary files, as returned by TempDir.
        Multiple programs or goroutines calling CreateTemp simultaneously will not choose the same file.
        The caller can use the file's Name method to find the pathname of the file.
        It is the caller's responsibility to remove the file when it is no longer needed.
    **/
    static public function createTemp(_dir:String, _pattern:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.createTemp(_dir, _pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MkdirTemp creates a new temporary directory in the directory dir
        and returns the pathname of the new directory.
        The new directory's name is generated by adding a random string to the end of pattern.
        If pattern includes a "*", the random string replaces the last "*" instead.
        If dir is the empty string, MkdirTemp uses the default directory for temporary files, as returned by TempDir.
        Multiple programs or goroutines calling MkdirTemp simultaneously will not choose the same directory.
        It is the caller's responsibility to remove the directory when it is no longer needed.
    **/
    static public function mkdirTemp(_dir:String, _pattern:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os.mkdirTemp(_dir, _pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Getpagesize returns the underlying system's memory page size.
    **/
    static public function getpagesize():StdTypes.Int {
        return stdgo._internal.os.Os.getpagesize();
    }
    /**
        SameFile reports whether fi1 and fi2 describe the same file.
        For example, on Unix this means that the device and inode fields
        of the two underlying structures are identical; on other systems
        the decision may be based on the path names.
        SameFile only applies to results returned by this package's Stat.
        It returns false in other cases.
    **/
    static public function sameFile(_fi1:FileInfo, _fi2:FileInfo):Bool {
        return stdgo._internal.os.Os.sameFile(_fi1, _fi2);
    }
}
