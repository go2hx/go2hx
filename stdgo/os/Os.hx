package stdgo.os;
final o_RDONLY : StdTypes.Int = stdgo._internal.os.Os_o_rdonly.o_RDONLY;
final o_WRONLY : StdTypes.Int = stdgo._internal.os.Os_o_wronly.o_WRONLY;
final o_RDWR : StdTypes.Int = stdgo._internal.os.Os_o_rdwr.o_RDWR;
final o_APPEND : StdTypes.Int = stdgo._internal.os.Os_o_append.o_APPEND;
final o_CREATE : StdTypes.Int = stdgo._internal.os.Os_o_create.o_CREATE;
final o_EXCL : StdTypes.Int = stdgo._internal.os.Os_o_excl.o_EXCL;
final o_SYNC : StdTypes.Int = stdgo._internal.os.Os_o_sync.o_SYNC;
final o_TRUNC : StdTypes.Int = stdgo._internal.os.Os_o_trunc.o_TRUNC;
final sEEK_SET : StdTypes.Int = stdgo._internal.os.Os_seek_set.sEEK_SET;
final sEEK_CUR : StdTypes.Int = stdgo._internal.os.Os_seek_cur.sEEK_CUR;
final sEEK_END : StdTypes.Int = stdgo._internal.os.Os_seek_end.sEEK_END;
final devNull : String = stdgo._internal.os.Os_devnull.devNull;
final pathSeparator : StdTypes.Int = stdgo._internal.os.Os_pathseparator.pathSeparator;
final pathListSeparator : StdTypes.Int = stdgo._internal.os.Os_pathlistseparator.pathListSeparator;
var args(get, set) : Array<String>;
private function get_args():Array<String> return [for (i in stdgo._internal.os.Os_args.args) i];
private function set_args(v:Array<String>):Array<String> {
        stdgo._internal.os.Os_args.args = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
final modeDir : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modedir.modeDir;
final modeAppend : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modeappend.modeAppend;
final modeExclusive : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modeexclusive.modeExclusive;
final modeTemporary : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modetemporary.modeTemporary;
final modeSymlink : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modesymlink.modeSymlink;
final modeDevice : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modedevice.modeDevice;
final modeNamedPipe : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modenamedpipe.modeNamedPipe;
final modeSocket : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modesocket.modeSocket;
final modeSetuid : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modesetuid.modeSetuid;
final modeSetgid : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modesetgid.modeSetgid;
final modeCharDevice : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modechardevice.modeCharDevice;
final modeSticky : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modesticky.modeSticky;
final modeIrregular : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modeirregular.modeIrregular;
final modeType : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modetype.modeType;
final modePerm : stdgo._internal.io.fs.Fs_filemode.FileMode = stdgo._internal.os.Os_modeperm.modePerm;
var errInvalid(get, set) : stdgo.Error;
private function get_errInvalid():stdgo.Error return stdgo._internal.os.Os_errinvalid.errInvalid;
private function set_errInvalid(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errinvalid.errInvalid = (v : stdgo.Error);
        return v;
    }
var errPermission(get, set) : stdgo.Error;
private function get_errPermission():stdgo.Error return stdgo._internal.os.Os_errpermission.errPermission;
private function set_errPermission(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errpermission.errPermission = (v : stdgo.Error);
        return v;
    }
var errExist(get, set) : stdgo.Error;
private function get_errExist():stdgo.Error return stdgo._internal.os.Os_errexist.errExist;
private function set_errExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errexist.errExist = (v : stdgo.Error);
        return v;
    }
var errNotExist(get, set) : stdgo.Error;
private function get_errNotExist():stdgo.Error return stdgo._internal.os.Os_errnotexist.errNotExist;
private function set_errNotExist(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errnotexist.errNotExist = (v : stdgo.Error);
        return v;
    }
var errClosed(get, set) : stdgo.Error;
private function get_errClosed():stdgo.Error return stdgo._internal.os.Os_errclosed.errClosed;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errclosed.errClosed = (v : stdgo.Error);
        return v;
    }
var errNoDeadline(get, set) : stdgo.Error;
private function get_errNoDeadline():stdgo.Error return stdgo._internal.os.Os_errnodeadline.errNoDeadline;
private function set_errNoDeadline(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errnodeadline.errNoDeadline = (v : stdgo.Error);
        return v;
    }
var errDeadlineExceeded(get, set) : stdgo.Error;
private function get_errDeadlineExceeded():stdgo.Error return stdgo._internal.os.Os_errdeadlineexceeded.errDeadlineExceeded;
private function set_errDeadlineExceeded(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errdeadlineexceeded.errDeadlineExceeded = (v : stdgo.Error);
        return v;
    }
var errProcessDone(get, set) : stdgo.Error;
private function get_errProcessDone():stdgo.Error return stdgo._internal.os.Os_errprocessdone.errProcessDone;
private function set_errProcessDone(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errprocessdone.errProcessDone = (v : stdgo.Error);
        return v;
    }
var interrupt(get, set) : Signal;
private function get_interrupt():Signal return stdgo._internal.os.Os_interrupt.interrupt;
private function set_interrupt(v:Signal):Signal {
        stdgo._internal.os.Os_interrupt.interrupt = v;
        return v;
    }
var kill(get, set) : Signal;
private function get_kill():Signal return stdgo._internal.os.Os_kill.kill;
private function set_kill(v:Signal):Signal {
        stdgo._internal.os.Os_kill.kill = v;
        return v;
    }
var stdin(get, set) : File;
private function get_stdin():File return stdgo._internal.os.Os_stdin.stdin;
private function set_stdin(v:File):File {
        stdgo._internal.os.Os_stdin.stdin = (v : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return v;
    }
var stdout(get, set) : File;
private function get_stdout():File return stdgo._internal.os.Os_stdout.stdout;
private function set_stdout(v:File):File {
        stdgo._internal.os.Os_stdout.stdout = (v : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return v;
    }
var stderr(get, set) : File;
private function get_stderr():File return stdgo._internal.os.Os_stderr.stderr;
private function set_stderr(v:File):File {
        stdgo._internal.os.Os_stderr.stderr = (v : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return v;
    }
var atime(get, set) : stdgo._internal.io.fs.Fs_fileinfo.FileInfo -> stdgo._internal.time.Time_time.Time;
private function get_atime():stdgo._internal.io.fs.Fs_fileinfo.FileInfo -> stdgo._internal.time.Time_time.Time return _0 -> stdgo._internal.os.Os_atime.atime(_0);
private function set_atime(v:stdgo._internal.io.fs.Fs_fileinfo.FileInfo -> stdgo._internal.time.Time_time.Time):stdgo._internal.io.fs.Fs_fileinfo.FileInfo -> stdgo._internal.time.Time_time.Time {
        stdgo._internal.os.Os_atime.atime = _0 -> v(_0);
        return v;
    }
var lstatP(get, set) : stdgo.Pointer<String -> stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error>>;
private function get_lstatP():stdgo.Pointer<String -> stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error>> return _0 -> stdgo._internal.os.Os_lstatp.lstatP(_0);
private function set_lstatP(v:stdgo.Pointer<String -> stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error>>):stdgo.Pointer<String -> stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error>> {
        stdgo._internal.os.Os_lstatp.lstatP = v;
        return v;
    }
var errWriteAtInAppendMode(get, set) : stdgo.Error;
private function get_errWriteAtInAppendMode():stdgo.Error return stdgo._internal.os.Os_errwriteatinappendmode.errWriteAtInAppendMode;
private function set_errWriteAtInAppendMode(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errwriteatinappendmode.errWriteAtInAppendMode = (v : stdgo.Error);
        return v;
    }
var testingForceReadDirLstat(get, set) : stdgo.Pointer<Bool>;
private function get_testingForceReadDirLstat():stdgo.Pointer<Bool> return stdgo._internal.os.Os_testingforcereaddirlstat.testingForceReadDirLstat;
private function set_testingForceReadDirLstat(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        stdgo._internal.os.Os_testingforcereaddirlstat.testingForceReadDirLstat = v;
        return v;
    }
var errPatternHasSeparator(get, set) : stdgo.Error;
private function get_errPatternHasSeparator():stdgo.Error return stdgo._internal.os.Os_errpatternhasseparator.errPatternHasSeparator;
private function set_errPatternHasSeparator(v:stdgo.Error):stdgo.Error {
        stdgo._internal.os.Os_errpatternhasseparator.errPatternHasSeparator = (v : stdgo.Error);
        return v;
    }
var splitPath(get, set) : String -> stdgo.Tuple<String, String>;
private function get_splitPath():String -> stdgo.Tuple<String, String> return _0 -> stdgo._internal.os.Os_splitpath.splitPath(_0);
private function set_splitPath(v:String -> stdgo.Tuple<String, String>):String -> stdgo.Tuple<String, String> {
        stdgo._internal.os.Os_splitpath.splitPath = _0 -> v((_0 : stdgo.GoString));
        return v;
    }
@:dox(hide) class T_timeout_static_extension {
    static public function timeout(t:stdgo._internal.os.Os_t_timeout.T_timeout):Bool {
        return stdgo._internal.os.Os_t_timeout_static_extension.T_timeout_static_extension.timeout(t);
    }
}
@:interface @:dox(hide) @:forward abstract T_timeout(stdgo._internal.os.Os_t_timeout.T_timeout) from stdgo._internal.os.Os_t_timeout.T_timeout to stdgo._internal.os.Os_t_timeout.T_timeout {
    @:from
    static function fromHaxeInterface(x:{ function timeout():Bool; }):T_timeout {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_timeout = { timeout : () -> x.timeout(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Signal_static_extension {
    static public function signal(t:stdgo._internal.os.Os_signal.Signal):Void {
        stdgo._internal.os.Os_signal_static_extension.Signal_static_extension.signal(t);
    }
    static public function string(t:stdgo._internal.os.Os_signal.Signal):String {
        return stdgo._internal.os.Os_signal_static_extension.Signal_static_extension.string(t);
    }
}
@:interface @:forward abstract Signal(stdgo._internal.os.Os_signal.Signal) from stdgo._internal.os.Os_signal.Signal to stdgo._internal.os.Os_signal.Signal {
    @:from
    static function fromHaxeInterface(x:{ function string():String; function signal():Void; }):Signal {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Signal = { string : () -> x.string(), signal : () -> x.signal(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.os.Os.T_dirInfo_static_extension) @:dox(hide) abstract T_dirInfo(stdgo._internal.os.Os_t_dirinfo.T_dirInfo) from stdgo._internal.os.Os_t_dirinfo.T_dirInfo to stdgo._internal.os.Os_t_dirinfo.T_dirInfo {
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return this._buf;
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = (v : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = (v : stdgo.GoInt);
        return v;
    }
    public var _bufp(get, set) : StdTypes.Int;
    function get__bufp():StdTypes.Int return this._bufp;
    function set__bufp(v:StdTypes.Int):StdTypes.Int {
        this._bufp = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_buf:Array<std.UInt>, ?_nbuf:StdTypes.Int, ?_bufp:StdTypes.Int) this = new stdgo._internal.os.Os_t_dirinfo.T_dirInfo((_buf : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (_nbuf : stdgo.GoInt), (_bufp : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.SyscallError_static_extension) abstract SyscallError(stdgo._internal.os.Os_syscallerror.SyscallError) from stdgo._internal.os.Os_syscallerror.SyscallError to stdgo._internal.os.Os_syscallerror.SyscallError {
    public var syscall(get, set) : String;
    function get_syscall():String return this.syscall;
    function set_syscall(v:String):String {
        this.syscall = (v : stdgo.GoString);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?syscall:String, ?err:stdgo.Error) this = new stdgo._internal.os.Os_syscallerror.SyscallError((syscall : stdgo.GoString), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.Process_static_extension) abstract Process(stdgo._internal.os.Os_process.Process) from stdgo._internal.os.Os_process.Process to stdgo._internal.os.Os_process.Process {
    public var pid(get, set) : StdTypes.Int;
    function get_pid():StdTypes.Int return this.pid;
    function set_pid(v:StdTypes.Int):StdTypes.Int {
        this.pid = (v : stdgo.GoInt);
        return v;
    }
    public var _handle(get, set) : stdgo.GoUIntptr;
    function get__handle():stdgo.GoUIntptr return this._handle;
    function set__handle(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._handle = (v : stdgo.GoUIntptr);
        return v;
    }
    public var _isdone(get, set) : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_;
    function get__isdone():stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ return this._isdone;
    function set__isdone(v:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ {
        this._isdone = v;
        return v;
    }
    public var _sigMu(get, set) : stdgo._internal.sync.Sync_rwmutex.RWMutex;
    function get__sigMu():stdgo._internal.sync.Sync_rwmutex.RWMutex return this._sigMu;
    function set__sigMu(v:stdgo._internal.sync.Sync_rwmutex.RWMutex):stdgo._internal.sync.Sync_rwmutex.RWMutex {
        this._sigMu = v;
        return v;
    }
    public function new(?pid:StdTypes.Int, ?_handle:stdgo.GoUIntptr, ?_isdone:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_sigMu:stdgo._internal.sync.Sync_rwmutex.RWMutex) this = new stdgo._internal.os.Os_process.Process((pid : stdgo.GoInt), (_handle : stdgo.GoUIntptr), _isdone, _sigMu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.ProcAttr_static_extension) abstract ProcAttr(stdgo._internal.os.Os_procattr.ProcAttr) from stdgo._internal.os.Os_procattr.ProcAttr to stdgo._internal.os.Os_procattr.ProcAttr {
    public var dir(get, set) : String;
    function get_dir():String return this.dir;
    function set_dir(v:String):String {
        this.dir = (v : stdgo.GoString);
        return v;
    }
    public var env(get, set) : Array<String>;
    function get_env():Array<String> return [for (i in this.env) i];
    function set_env(v:Array<String>):Array<String> {
        this.env = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var files(get, set) : Array<File>;
    function get_files():Array<File> return [for (i in this.files) i];
    function set_files(v:Array<File>):Array<File> {
        this.files = ([for (i in v) (i : stdgo.Ref<stdgo._internal.os.Os_file.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_file.File>>);
        return v;
    }
    public var sys(get, set) : stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr;
    function get_sys():stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr return this.sys;
    function set_sys(v:stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr):stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr {
        this.sys = (v : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>);
        return v;
    }
    public function new(?dir:String, ?env:Array<String>, ?files:Array<File>, ?sys:stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr) this = new stdgo._internal.os.Os_procattr.ProcAttr((dir : stdgo.GoString), ([for (i in env) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in files) (i : stdgo.Ref<stdgo._internal.os.Os_file.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_file.File>>), (sys : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.ProcessState_static_extension) abstract ProcessState(stdgo._internal.os.Os_processstate.ProcessState) from stdgo._internal.os.Os_processstate.ProcessState to stdgo._internal.os.Os_processstate.ProcessState {
    public var _pid(get, set) : StdTypes.Int;
    function get__pid():StdTypes.Int return this._pid;
    function set__pid(v:StdTypes.Int):StdTypes.Int {
        this._pid = (v : stdgo.GoInt);
        return v;
    }
    public var _status(get, set) : stdgo._internal.syscall.Syscall_waitstatus.WaitStatus;
    function get__status():stdgo._internal.syscall.Syscall_waitstatus.WaitStatus return this._status;
    function set__status(v:stdgo._internal.syscall.Syscall_waitstatus.WaitStatus):stdgo._internal.syscall.Syscall_waitstatus.WaitStatus {
        this._status = v;
        return v;
    }
    public var _rusage(get, set) : stdgo._internal.syscall.Syscall_rusage.Rusage;
    function get__rusage():stdgo._internal.syscall.Syscall_rusage.Rusage return this._rusage;
    function set__rusage(v:stdgo._internal.syscall.Syscall_rusage.Rusage):stdgo._internal.syscall.Syscall_rusage.Rusage {
        this._rusage = (v : stdgo.Ref<stdgo._internal.syscall.Syscall_rusage.Rusage>);
        return v;
    }
    public function new(?_pid:StdTypes.Int, ?_status:stdgo._internal.syscall.Syscall_waitstatus.WaitStatus, ?_rusage:stdgo._internal.syscall.Syscall_rusage.Rusage) this = new stdgo._internal.os.Os_processstate.ProcessState((_pid : stdgo.GoInt), _status, (_rusage : stdgo.Ref<stdgo._internal.syscall.Syscall_rusage.Rusage>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.LinkError_static_extension) abstract LinkError(stdgo._internal.os.Os_linkerror.LinkError) from stdgo._internal.os.Os_linkerror.LinkError to stdgo._internal.os.Os_linkerror.LinkError {
    public var op(get, set) : String;
    function get_op():String return this.op;
    function set_op(v:String):String {
        this.op = (v : stdgo.GoString);
        return v;
    }
    public var old(get, set) : String;
    function get_old():String return this.old;
    function set_old(v:String):String {
        this.old = (v : stdgo.GoString);
        return v;
    }
    public var new_(get, set) : String;
    function get_new_():String return this.new_;
    function set_new_(v:String):String {
        this.new_ = (v : stdgo.GoString);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?op:String, ?old:String, ?new_:String, ?err:stdgo.Error) this = new stdgo._internal.os.Os_linkerror.LinkError((op : stdgo.GoString), (old : stdgo.GoString), (new_ : stdgo.GoString), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.T_fileWithoutReadFrom_static_extension) @:dox(hide) abstract T_fileWithoutReadFrom(stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom) from stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom to stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom {
    public var file(get, set) : File;
    function get_file():File return this.file;
    function set_file(v:File):File {
        this.file = (v : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return v;
    }
    public function new(?file:File) this = new stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom((file : stdgo.Ref<stdgo._internal.os.Os_file.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.T_file_static_extension) @:dox(hide) abstract T_file(stdgo._internal.os.Os_t_file.T_file) from stdgo._internal.os.Os_t_file.T_file to stdgo._internal.os.Os_t_file.T_file {
    public var _pfd(get, set) : stdgo._internal.internal.poll.Poll_fd.FD;
    function get__pfd():stdgo._internal.internal.poll.Poll_fd.FD return this._pfd;
    function set__pfd(v:stdgo._internal.internal.poll.Poll_fd.FD):stdgo._internal.internal.poll.Poll_fd.FD {
        this._pfd = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _dirinfo(get, set) : T_dirInfo;
    function get__dirinfo():T_dirInfo return this._dirinfo;
    function set__dirinfo(v:T_dirInfo):T_dirInfo {
        this._dirinfo = (v : stdgo.Ref<stdgo._internal.os.Os_t_dirinfo.T_dirInfo>);
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
    public function new(?_pfd:stdgo._internal.internal.poll.Poll_fd.FD, ?_name:String, ?_dirinfo:T_dirInfo, ?_nonblock:Bool, ?_stdoutOrErr:Bool, ?_appendMode:Bool) this = new stdgo._internal.os.Os_t_file.T_file(_pfd, (_name : stdgo.GoString), (_dirinfo : stdgo.Ref<stdgo._internal.os.Os_t_dirinfo.T_dirInfo>), _nonblock, _stdoutOrErr, _appendMode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.T_unixDirent_static_extension) @:dox(hide) abstract T_unixDirent(stdgo._internal.os.Os_t_unixdirent.T_unixDirent) from stdgo._internal.os.Os_t_unixdirent.T_unixDirent to stdgo._internal.os.Os_t_unixdirent.T_unixDirent {
    public var _parent(get, set) : String;
    function get__parent():String return this._parent;
    function set__parent(v:String):String {
        this._parent = (v : stdgo.GoString);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _typ(get, set) : stdgo._internal.io.fs.Fs_filemode.FileMode;
    function get__typ():stdgo._internal.io.fs.Fs_filemode.FileMode return this._typ;
    function set__typ(v:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo._internal.io.fs.Fs_filemode.FileMode {
        this._typ = v;
        return v;
    }
    public var _info(get, set) : stdgo._internal.io.fs.Fs_fileinfo.FileInfo;
    function get__info():stdgo._internal.io.fs.Fs_fileinfo.FileInfo return this._info;
    function set__info(v:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo._internal.io.fs.Fs_fileinfo.FileInfo {
        this._info = v;
        return v;
    }
    public function new(?_parent:String, ?_name:String, ?_typ:stdgo._internal.io.fs.Fs_filemode.FileMode, ?_info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo) this = new stdgo._internal.os.Os_t_unixdirent.T_unixDirent((_parent : stdgo.GoString), (_name : stdgo.GoString), _typ, _info);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.T_rawConn_static_extension) @:dox(hide) abstract T_rawConn(stdgo._internal.os.Os_t_rawconn.T_rawConn) from stdgo._internal.os.Os_t_rawconn.T_rawConn to stdgo._internal.os.Os_t_rawconn.T_rawConn {
    public var _file(get, set) : File;
    function get__file():File return this._file;
    function set__file(v:File):File {
        this._file = (v : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return v;
    }
    public function new(?_file:File) this = new stdgo._internal.os.Os_t_rawconn.T_rawConn((_file : stdgo.Ref<stdgo._internal.os.Os_file.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.File_static_extension) abstract File(stdgo._internal.os.Os_file.File) from stdgo._internal.os.Os_file.File to stdgo._internal.os.Os_file.File {
    public var _file(get, set) : T_file;
    function get__file():T_file return this._file;
    function set__file(v:T_file):T_file {
        this._file = (v : stdgo.Ref<stdgo._internal.os.Os_t_file.T_file>);
        return v;
    }
    public function new(?_file:T_file, ?_input:haxe.io.Input, ?_output:haxe.io.Output) this = new stdgo._internal.os.Os_file.File((_file : stdgo.Ref<stdgo._internal.os.Os_t_file.T_file>), _input, _output);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.Os.T_fileStat_static_extension) @:dox(hide) abstract T_fileStat(stdgo._internal.os.Os_t_filestat.T_fileStat) from stdgo._internal.os.Os_t_filestat.T_fileStat to stdgo._internal.os.Os_t_filestat.T_fileStat {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _size(get, set) : haxe.Int64;
    function get__size():haxe.Int64 return this._size;
    function set__size(v:haxe.Int64):haxe.Int64 {
        this._size = (v : stdgo.GoInt64);
        return v;
    }
    public var _mode(get, set) : stdgo._internal.io.fs.Fs_filemode.FileMode;
    function get__mode():stdgo._internal.io.fs.Fs_filemode.FileMode return this._mode;
    function set__mode(v:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo._internal.io.fs.Fs_filemode.FileMode {
        this._mode = v;
        return v;
    }
    public var _modTime(get, set) : stdgo._internal.time.Time_time.Time;
    function get__modTime():stdgo._internal.time.Time_time.Time return this._modTime;
    function set__modTime(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this._modTime = v;
        return v;
    }
    public var _sys(get, set) : stdgo._internal.syscall.Syscall_stat_t.Stat_t;
    function get__sys():stdgo._internal.syscall.Syscall_stat_t.Stat_t return this._sys;
    function set__sys(v:stdgo._internal.syscall.Syscall_stat_t.Stat_t):stdgo._internal.syscall.Syscall_stat_t.Stat_t {
        this._sys = v;
        return v;
    }
    public function new(?_name:String, ?_size:haxe.Int64, ?_mode:stdgo._internal.io.fs.Fs_filemode.FileMode, ?_modTime:stdgo._internal.time.Time_time.Time, ?_sys:stdgo._internal.syscall.Syscall_stat_t.Stat_t) this = new stdgo._internal.os.Os_t_filestat.T_fileStat((_name : stdgo.GoString), (_size : stdgo.GoInt64), _mode, _modTime, _sys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.os.Os_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {
    public static function _unlockSlow(__self__:stdgo._internal.os.Os_t__struct_0.T__struct_0, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt32);
        stdgo._internal.os.Os_t__struct_0_static_extension.T__struct_0_static_extension._unlockSlow(__self__, _0);
    }
    public static function _lockSlow(__self__:stdgo._internal.os.Os_t__struct_0.T__struct_0):Void {
        stdgo._internal.os.Os_t__struct_0_static_extension.T__struct_0_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:stdgo._internal.os.Os_t__struct_0.T__struct_0):Void {
        stdgo._internal.os.Os_t__struct_0_static_extension.T__struct_0_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.os.Os_t__struct_0.T__struct_0):Bool {
        return stdgo._internal.os.Os_t__struct_0_static_extension.T__struct_0_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.os.Os_t__struct_0.T__struct_0):Void {
        stdgo._internal.os.Os_t__struct_0_static_extension.T__struct_0_static_extension.lock(__self__);
    }
}
@:dox(hide) typedef T__struct_0 = stdgo._internal.os.Os_t__struct_0.T__struct_0;
@:dox(hide) typedef T_readdirMode = stdgo._internal.os.Os_t_readdirmode.T_readdirMode;
typedef DirEntry = stdgo._internal.os.Os_direntry.DirEntry;
typedef PathError = stdgo._internal.os.Os_patherror.PathError;
@:dox(hide) typedef T_syscallErrorType = stdgo._internal.os.Os_t_syscallerrortype.T_syscallErrorType;
@:dox(hide) typedef T_dirFS = stdgo._internal.os.Os_t_dirfs.T_dirFS;
@:dox(hide) typedef T_newFileKind = stdgo._internal.os.Os_t_newfilekind.T_newFileKind;
typedef FileInfo = stdgo._internal.os.Os_fileinfo.FileInfo;
typedef FileMode = stdgo._internal.os.Os_filemode.FileMode;
@:using(stdgo.os.Os.JsOutput_static_extension) abstract JsOutput(stdgo._internal.os.Os_jsoutput.JsOutput) from stdgo._internal.os.Os_jsoutput.JsOutput to stdgo._internal.os.Os_jsoutput.JsOutput {
    public function new() this = new stdgo._internal.os.Os_jsoutput.JsOutput();
}
@:dox(hide) typedef T_dirInfoPointer = stdgo._internal.os.Os_t_dirinfopointer.T_dirInfoPointer;
@:dox(hide) class T_dirInfo_static_extension {
    static public function _close(_d:T_dirInfo):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.os.Os_t_dirinfo.T_dirInfo>);
        stdgo._internal.os.Os_t_dirinfo_static_extension.T_dirInfo_static_extension._close(_d);
    }
}
typedef SyscallErrorPointer = stdgo._internal.os.Os_syscallerrorpointer.SyscallErrorPointer;
class SyscallError_static_extension {
    static public function timeout(_e:SyscallError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.os.Os_syscallerror.SyscallError>);
        return stdgo._internal.os.Os_syscallerror_static_extension.SyscallError_static_extension.timeout(_e);
    }
    static public function unwrap(_e:SyscallError):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.os.Os_syscallerror.SyscallError>);
        return stdgo._internal.os.Os_syscallerror_static_extension.SyscallError_static_extension.unwrap(_e);
    }
    static public function error(_e:SyscallError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.os.Os_syscallerror.SyscallError>);
        return stdgo._internal.os.Os_syscallerror_static_extension.SyscallError_static_extension.error(_e);
    }
}
typedef ProcessPointer = stdgo._internal.os.Os_processpointer.ProcessPointer;
class Process_static_extension {
    static public function _blockUntilWaitable(_p:Process):stdgo.Tuple<Bool, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_process.Process>);
        return {
            final obj = stdgo._internal.os.Os_process_static_extension.Process_static_extension._blockUntilWaitable(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _release(_p:Process):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_process.Process>);
        return stdgo._internal.os.Os_process_static_extension.Process_static_extension._release(_p);
    }
    static public function _signal(_p:Process, _sig:Signal):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_process.Process>);
        return stdgo._internal.os.Os_process_static_extension.Process_static_extension._signal(_p, _sig);
    }
    static public function _wait(_p:Process):stdgo.Tuple<ProcessState, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_process.Process>);
        return {
            final obj = stdgo._internal.os.Os_process_static_extension.Process_static_extension._wait(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _kill(_p:Process):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_process.Process>);
        return stdgo._internal.os.Os_process_static_extension.Process_static_extension._kill(_p);
    }
    static public function signal(_p:Process, _sig:Signal):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_process.Process>);
        return stdgo._internal.os.Os_process_static_extension.Process_static_extension.signal(_p, _sig);
    }
    static public function wait_(_p:Process):stdgo.Tuple<ProcessState, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_process.Process>);
        return {
            final obj = stdgo._internal.os.Os_process_static_extension.Process_static_extension.wait_(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function kill(_p:Process):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_process.Process>);
        return stdgo._internal.os.Os_process_static_extension.Process_static_extension.kill(_p);
    }
    static public function release(_p:Process):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_process.Process>);
        return stdgo._internal.os.Os_process_static_extension.Process_static_extension.release(_p);
    }
    static public function _done(_p:Process):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_process.Process>);
        return stdgo._internal.os.Os_process_static_extension.Process_static_extension._done(_p);
    }
    static public function _setDone(_p:Process):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_process.Process>);
        stdgo._internal.os.Os_process_static_extension.Process_static_extension._setDone(_p);
    }
}
typedef ProcAttrPointer = stdgo._internal.os.Os_procattrpointer.ProcAttrPointer;
class ProcAttr_static_extension {

}
typedef ProcessStatePointer = stdgo._internal.os.Os_processstatepointer.ProcessStatePointer;
class ProcessState_static_extension {
    static public function _systemTime(_p:ProcessState):stdgo._internal.time.Time_duration.Duration {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension._systemTime(_p);
    }
    static public function _userTime(_p:ProcessState):stdgo._internal.time.Time_duration.Duration {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension._userTime(_p);
    }
    static public function exitCode(_p:ProcessState):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension.exitCode(_p);
    }
    static public function string(_p:ProcessState):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension.string(_p);
    }
    static public function _sysUsage(_p:ProcessState):stdgo.AnyInterface {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension._sysUsage(_p);
    }
    static public function _sys(_p:ProcessState):stdgo.AnyInterface {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension._sys(_p);
    }
    static public function _success(_p:ProcessState):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension._success(_p);
    }
    static public function _exited(_p:ProcessState):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension._exited(_p);
    }
    static public function pid(_p:ProcessState):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension.pid(_p);
    }
    static public function sysUsage(_p:ProcessState):stdgo.AnyInterface {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension.sysUsage(_p);
    }
    static public function sys(_p:ProcessState):stdgo.AnyInterface {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension.sys(_p);
    }
    static public function success(_p:ProcessState):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension.success(_p);
    }
    static public function exited(_p:ProcessState):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension.exited(_p);
    }
    static public function systemTime(_p:ProcessState):stdgo._internal.time.Time_duration.Duration {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension.systemTime(_p);
    }
    static public function userTime(_p:ProcessState):stdgo._internal.time.Time_duration.Duration {
        final _p = (_p : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
        return stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension.userTime(_p);
    }
}
typedef LinkErrorPointer = stdgo._internal.os.Os_linkerrorpointer.LinkErrorPointer;
class LinkError_static_extension {
    static public function unwrap(_e:LinkError):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.os.Os_linkerror.LinkError>);
        return stdgo._internal.os.Os_linkerror_static_extension.LinkError_static_extension.unwrap(_e);
    }
    static public function error(_e:LinkError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.os.Os_linkerror.LinkError>);
        return stdgo._internal.os.Os_linkerror_static_extension.LinkError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_fileWithoutReadFromPointer = stdgo._internal.os.Os_t_filewithoutreadfrompointer.T_fileWithoutReadFromPointer;
@:dox(hide) class T_fileWithoutReadFrom_static_extension {
    static public function readFrom(_:T_fileWithoutReadFrom, _0:T_fileWithoutReadFrom):Void {
        stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.readFrom(_, _0);
    }
    public static function _write(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _wrapErr(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:String, _1:stdgo.Error):stdgo.Error {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.Error);
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._wrapErr(__self__, _0, _1);
    }
    public static function _setWriteDeadline(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._setWriteDeadline(__self__, _0);
    }
    public static function _setReadDeadline(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._setReadDeadline(__self__, _0);
    }
    public static function _setDeadline(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._setDeadline(__self__, _0);
    }
    public static function _seek(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:haxe.Int64, _1:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt64);
        final _1 = (_1 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._seek(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _readdir(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:StdTypes.Int, _1:T_readdirMode):stdgo.Tuple.Tuple4<Array<String>, Array<stdgo._internal.io.fs.Fs_direntry.DirEntry>, Array<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._readdir(__self__, _0, _1);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : [for (i in obj._2) i], _3 : obj._3 };
        };
    }
    public static function _readFrom(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple.Tuple3<haxe.Int64, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._readFrom(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _read(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pwrite(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._pwrite(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pread(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._pread(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _close(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._close(__self__);
    }
    public static function _chmod(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._chmod(__self__, _0);
    }
    public static function _checkValid(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:String):stdgo.Error {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension._checkValid(__self__, _0);
    }
    public static function writeString(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.writeString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeAt(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.writeAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function write(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function truncate(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:haxe.Int64):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt64);
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.truncate(__self__, _0);
    }
    public static function syscallConn(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):stdgo.Tuple<stdgo._internal.syscall.Syscall_rawconn.RawConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.syscallConn(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function sync(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.sync(__self__);
    }
    public static function stat(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.stat(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.setDeadline(__self__, _0);
    }
    public static function seek(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:haxe.Int64, _1:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt64);
        final _1 = (_1 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.seek(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readdirnames(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:StdTypes.Int):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.readdirnames(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readdir(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.readdir(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readDir(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_direntry.DirEntry>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.readDir(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readAt(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:Array<std.UInt>, _1:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _1 = (_1 : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.readAt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function name(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):String {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.name(__self__);
    }
    public static function fd(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):stdgo.GoUIntptr {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.fd(__self__);
    }
    public static function close(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.close(__self__);
    }
    public static function chown(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:StdTypes.Int, _1:StdTypes.Int):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.chown(__self__, _0, _1);
    }
    public static function chmod(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom, _0:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.chmod(__self__, _0);
    }
    public static function chdir(__self__:stdgo._internal.os.Os_t_filewithoutreadfrom.T_fileWithoutReadFrom):stdgo.Error {
        return stdgo._internal.os.Os_t_filewithoutreadfrom_static_extension.T_fileWithoutReadFrom_static_extension.chdir(__self__);
    }
}
@:dox(hide) typedef T_filePointer = stdgo._internal.os.Os_t_filepointer.T_filePointer;
@:dox(hide) class T_file_static_extension {
    static public function _close(_file:T_file):stdgo.Error {
        final _file = (_file : stdgo.Ref<stdgo._internal.os.Os_t_file.T_file>);
        return stdgo._internal.os.Os_t_file_static_extension.T_file_static_extension._close(_file);
    }
}
@:dox(hide) typedef T_unixDirentPointer = stdgo._internal.os.Os_t_unixdirentpointer.T_unixDirentPointer;
@:dox(hide) class T_unixDirent_static_extension {
    static public function string(_d:T_unixDirent):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.os.Os_t_unixdirent.T_unixDirent>);
        return stdgo._internal.os.Os_t_unixdirent_static_extension.T_unixDirent_static_extension.string(_d);
    }
    static public function info(_d:T_unixDirent):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.os.Os_t_unixdirent.T_unixDirent>);
        return {
            final obj = stdgo._internal.os.Os_t_unixdirent_static_extension.T_unixDirent_static_extension.info(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(_d:T_unixDirent):stdgo._internal.io.fs.Fs_filemode.FileMode {
        final _d = (_d : stdgo.Ref<stdgo._internal.os.Os_t_unixdirent.T_unixDirent>);
        return stdgo._internal.os.Os_t_unixdirent_static_extension.T_unixDirent_static_extension.type(_d);
    }
    static public function isDir(_d:T_unixDirent):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.os.Os_t_unixdirent.T_unixDirent>);
        return stdgo._internal.os.Os_t_unixdirent_static_extension.T_unixDirent_static_extension.isDir(_d);
    }
    static public function name(_d:T_unixDirent):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.os.Os_t_unixdirent.T_unixDirent>);
        return stdgo._internal.os.Os_t_unixdirent_static_extension.T_unixDirent_static_extension.name(_d);
    }
}
@:dox(hide) typedef T_rawConnPointer = stdgo._internal.os.Os_t_rawconnpointer.T_rawConnPointer;
@:dox(hide) class T_rawConn_static_extension {
    static public function write(_c:T_rawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.Os_t_rawconn.T_rawConn>);
        final _f = _0 -> _f((_0 : stdgo.GoUIntptr));
        return stdgo._internal.os.Os_t_rawconn_static_extension.T_rawConn_static_extension.write(_c, _f);
    }
    static public function read(_c:T_rawConn, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.Os_t_rawconn.T_rawConn>);
        final _f = _0 -> _f((_0 : stdgo.GoUIntptr));
        return stdgo._internal.os.Os_t_rawconn_static_extension.T_rawConn_static_extension.read(_c, _f);
    }
    static public function control(_c:T_rawConn, _f:stdgo.GoUIntptr -> Void):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.Os_t_rawconn.T_rawConn>);
        final _f = _0 -> _f((_0 : stdgo.GoUIntptr));
        return stdgo._internal.os.Os_t_rawconn_static_extension.T_rawConn_static_extension.control(_c, _f);
    }
}
typedef FilePointer = stdgo._internal.os.Os_filepointer.FilePointer;
class File_static_extension {
    static public function stat(_f:File):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension.stat(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readFrom(_f:File, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple.Tuple3<haxe.Int64, Bool, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension._readFrom(_f, _r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _seek(_f:File, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension._seek(_f, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fd(_f:File):stdgo.GoUIntptr {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension.fd(_f);
    }
    static public function _checkValid(_f:File, _op:String):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _op = (_op : stdgo.GoString);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension._checkValid(_f, _op);
    }
    static public function _setWriteDeadline(_f:File, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension._setWriteDeadline(_f, _t);
    }
    static public function _setReadDeadline(_f:File, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension._setReadDeadline(_f, _t);
    }
    static public function _setDeadline(_f:File, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension._setDeadline(_f, _t);
    }
    static public function chdir(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension.chdir(_f);
    }
    static public function sync(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension.sync(_f);
    }
    static public function truncate(_f:File, _size:haxe.Int64):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _size = (_size : stdgo.GoInt64);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension.truncate(_f, _size);
    }
    static public function chown(_f:File, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _uid = (_uid : stdgo.GoInt);
        final _gid = (_gid : stdgo.GoInt);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension.chown(_f, _uid, _gid);
    }
    static public function _chmod(_f:File, _mode:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension._chmod(_f, _mode);
    }
    static public function _pwrite(_f:File, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension._pwrite(_f, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _write(_f:File, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension._write(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pread(_f:File, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension._pread(_f, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _read(_f:File, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension._read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_f:File):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension.close(_f);
    }
    static public function syscallConn(_f:File):stdgo.Tuple<stdgo._internal.syscall.Syscall_rawconn.RawConn, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension.syscallConn(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function setWriteDeadline(_f:File, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension.setWriteDeadline(_f, _t);
    }
    static public function setReadDeadline(_f:File, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension.setReadDeadline(_f, _t);
    }
    static public function setDeadline(_f:File, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension.setDeadline(_f, _t);
    }
    static public function chmod(_f:File, _mode:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension.chmod(_f, _mode);
    }
    static public function _wrapErr(_f:File, _op:String, _err:stdgo.Error):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _op = (_op : stdgo.GoString);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension._wrapErr(_f, _op, _err);
    }
    static public function writeString(_f:File, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension.writeString(_f, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_f:File, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension.seek(_f, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeAt(_f:File, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension.writeAt(_f, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_f:File, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension.write(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(_f:File, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension.readFrom(_f, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(_f:File, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension.readAt(_f, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_f:File, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension.read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function name(_f:File):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return stdgo._internal.os.Os_file_static_extension.File_static_extension.name(_f);
    }
    static public function _readdir(_f:File, _n:StdTypes.Int, _mode:T_readdirMode):stdgo.Tuple.Tuple4<Array<String>, Array<stdgo._internal.io.fs.Fs_direntry.DirEntry>, Array<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension._readdir(_f, _n, _mode);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : [for (i in obj._2) i], _3 : obj._3 };
        };
    }
    static public function readDir(_f:File, _n:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_direntry.DirEntry>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension.readDir(_f, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readdirnames(_f:File, _n:StdTypes.Int):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension.readdirnames(_f, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readdir(_f:File, _n:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_file_static_extension.File_static_extension.readdir(_f, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function _close(__self__:stdgo._internal.os.Os_file.File):stdgo.Error {
        return stdgo._internal.os.Os_file_static_extension.File_static_extension._close(__self__);
    }
}
@:dox(hide) typedef T_fileStatPointer = stdgo._internal.os.Os_t_filestatpointer.T_fileStatPointer;
@:dox(hide) class T_fileStat_static_extension {
    static public function sys(_fs:T_fileStat):stdgo.AnyInterface {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat>);
        return stdgo._internal.os.Os_t_filestat_static_extension.T_fileStat_static_extension.sys(_fs);
    }
    static public function modTime(_fs:T_fileStat):stdgo._internal.time.Time_time.Time {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat>);
        return stdgo._internal.os.Os_t_filestat_static_extension.T_fileStat_static_extension.modTime(_fs);
    }
    static public function mode(_fs:T_fileStat):stdgo._internal.io.fs.Fs_filemode.FileMode {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat>);
        return stdgo._internal.os.Os_t_filestat_static_extension.T_fileStat_static_extension.mode(_fs);
    }
    static public function size(_fs:T_fileStat):haxe.Int64 {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat>);
        return stdgo._internal.os.Os_t_filestat_static_extension.T_fileStat_static_extension.size(_fs);
    }
    static public function isDir(_fs:T_fileStat):Bool {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat>);
        return stdgo._internal.os.Os_t_filestat_static_extension.T_fileStat_static_extension.isDir(_fs);
    }
    static public function name(_fs:T_fileStat):String {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat>);
        return stdgo._internal.os.Os_t_filestat_static_extension.T_fileStat_static_extension.name(_fs);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.os.Os_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T_readdirModePointer = stdgo._internal.os.Os_t_readdirmodepointer.T_readdirModePointer;
@:dox(hide) class T_readdirMode_static_extension {

}
typedef DirEntryPointer = stdgo._internal.os.Os_direntrypointer.DirEntryPointer;
class DirEntry_static_extension {

}
typedef PathErrorPointer = stdgo._internal.os.Os_patherrorpointer.PathErrorPointer;
class PathError_static_extension {

}
@:dox(hide) typedef T_syscallErrorTypePointer = stdgo._internal.os.Os_t_syscallerrortypepointer.T_syscallErrorTypePointer;
@:dox(hide) class T_syscallErrorType_static_extension {

}
@:dox(hide) typedef T_dirFSPointer = stdgo._internal.os.Os_t_dirfspointer.T_dirFSPointer;
@:dox(hide) class T_dirFS_static_extension {
    static public function _join(_dir:T_dirFS, _name:String):stdgo.Tuple<String, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_t_dirfs_static_extension.T_dirFS_static_extension._join(_dir, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_dir:T_dirFS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_t_dirfs_static_extension.T_dirFS_static_extension.stat(_dir, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readDir(_dir:T_dirFS, _name:String):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_direntry.DirEntry>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_t_dirfs_static_extension.T_dirFS_static_extension.readDir(_dir, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readFile(_dir:T_dirFS, _name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_t_dirfs_static_extension.T_dirFS_static_extension.readFile(_dir, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function open(_dir:T_dirFS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_file.File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_t_dirfs_static_extension.T_dirFS_static_extension.open(_dir, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_newFileKindPointer = stdgo._internal.os.Os_t_newfilekindpointer.T_newFileKindPointer;
@:dox(hide) class T_newFileKind_static_extension {

}
typedef FileInfoPointer = stdgo._internal.os.Os_fileinfopointer.FileInfoPointer;
class FileInfo_static_extension {

}
typedef FileModePointer = stdgo._internal.os.Os_filemodepointer.FileModePointer;
class FileMode_static_extension {

}
typedef JsOutputPointer = stdgo._internal.os.Os_jsoutputpointer.JsOutputPointer;
class JsOutput_static_extension {

}
/**
    * Package os provides a platform-independent interface to operating system
    * functionality. The design is Unix-like, although the error handling is
    * Go-like; failing calls return values of type error rather than error numbers.
    * Often, more information is available within the error. For example,
    * if a call that takes a file name fails, such as Open or Stat, the error
    * will include the failing file name when printed and will be of type
    * *PathError, which may be unpacked for more information.
    * 
    * The os interface is intended to be uniform across all operating systems.
    * Features not generally available appear in the system-specific package syscall.
    * 
    * Here is a simple example, opening a file and reading some of it.
    * 
    * 	file, err := os.Open("file.go") // For read access.
    * 	if err != nil {
    * 		log.Fatal(err)
    * 	}
    * 
    * If the open fails, the error string will be self-explanatory, like
    * 
    * 	open file.go: no such file or directory
    * 
    * The file's data can then be read into a slice of bytes. Read and
    * Write take their byte counts from the length of the argument slice.
    * 
    * 	data := make([]byte, 100)
    * 	count, err := file.Read(data)
    * 	if err != nil {
    * 		log.Fatal(err)
    * 	}
    * 	fmt.Printf("read %d bytes: %q\n", count, data[:count])
    * 
    * Note: The maximum number of concurrent operations on a File may be limited by
    * the OS or the system. The number should be high, but exceeding it may degrade
    * performance or cause other issues.
**/
class Os {
    /**
        * ReadDir reads the named directory,
        * returning all its directory entries sorted by filename.
        * If an error occurs reading the directory,
        * ReadDir returns the entries it was able to read before the error,
        * along with the error.
    **/
    static public inline function readDir(_name:String):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_direntry.DirEntry>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_readdir.readDir(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * Expand replaces ${var} or $var in the string based on the mapping function.
        * For example, os.ExpandEnv(s) is equivalent to os.Expand(s, os.Getenv).
    **/
    static public inline function expand(_s:String, _mapping:String -> String):String {
        final _s = (_s : stdgo.GoString);
        final _mapping = _0 -> _mapping((_0 : stdgo.GoString));
        return stdgo._internal.os.Os_expand.expand(_s, _mapping);
    }
    /**
        * ExpandEnv replaces ${var} or $var in the string according to the values
        * of the current environment variables. References to undefined
        * variables are replaced by the empty string.
    **/
    static public inline function expandEnv(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.os.Os_expandenv.expandEnv(_s);
    }
    /**
        * Getenv retrieves the value of the environment variable named by the key.
        * It returns the value, which will be empty if the variable is not present.
        * To distinguish between an empty value and an unset value, use LookupEnv.
    **/
    static public inline function getenv(_key:String):String {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.os.Os_getenv.getenv(_key);
    }
    /**
        * LookupEnv retrieves the value of the environment variable named
        * by the key. If the variable is present in the environment the
        * value (which may be empty) is returned and the boolean is true.
        * Otherwise the returned value will be empty and the boolean will
        * be false.
    **/
    static public inline function lookupEnv(_key:String):stdgo.Tuple<String, Bool> {
        final _key = (_key : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_lookupenv.lookupEnv(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Setenv sets the value of the environment variable named by the key.
        * It returns an error, if any.
    **/
    static public inline function setenv(_key:String, _value:String):stdgo.Error {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        return stdgo._internal.os.Os_setenv.setenv(_key, _value);
    }
    /**
        * Unsetenv unsets a single environment variable.
    **/
    static public inline function unsetenv(_key:String):stdgo.Error {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.os.Os_unsetenv.unsetenv(_key);
    }
    /**
        * Clearenv deletes all environment variables.
    **/
    static public inline function clearenv():Void {
        stdgo._internal.os.Os_clearenv.clearenv();
    }
    /**
        * Environ returns a copy of strings representing the environment,
        * in the form "key=value".
    **/
    static public inline function environ_():Array<String> {
        return [for (i in stdgo._internal.os.Os_environ_.environ_()) i];
    }
    /**
        * NewSyscallError returns, as an error, a new SyscallError
        * with the given system call name and error details.
        * As a convenience, if err is nil, NewSyscallError returns nil.
    **/
    static public inline function newSyscallError(_syscall:String, _err:stdgo.Error):stdgo.Error {
        final _syscall = (_syscall : stdgo.GoString);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.os.Os_newsyscallerror.newSyscallError(_syscall, _err);
    }
    /**
        * IsExist returns a boolean indicating whether the error is known to report
        * that a file or directory already exists. It is satisfied by ErrExist as
        * well as some syscall errors.
        * 
        * This function predates errors.Is. It only supports errors returned by
        * the os package. New code should use errors.Is(err, fs.ErrExist).
    **/
    static public inline function isExist(_err:stdgo.Error):Bool {
        final _err = (_err : stdgo.Error);
        return stdgo._internal.os.Os_isexist.isExist(_err);
    }
    /**
        * IsNotExist returns a boolean indicating whether the error is known to
        * report that a file or directory does not exist. It is satisfied by
        * ErrNotExist as well as some syscall errors.
        * 
        * This function predates errors.Is. It only supports errors returned by
        * the os package. New code should use errors.Is(err, fs.ErrNotExist).
    **/
    static public inline function isNotExist(_err:stdgo.Error):Bool {
        final _err = (_err : stdgo.Error);
        return stdgo._internal.os.Os_isnotexist.isNotExist(_err);
    }
    /**
        * IsPermission returns a boolean indicating whether the error is known to
        * report that permission is denied. It is satisfied by ErrPermission as well
        * as some syscall errors.
        * 
        * This function predates errors.Is. It only supports errors returned by
        * the os package. New code should use errors.Is(err, fs.ErrPermission).
    **/
    static public inline function isPermission(_err:stdgo.Error):Bool {
        final _err = (_err : stdgo.Error);
        return stdgo._internal.os.Os_ispermission.isPermission(_err);
    }
    /**
        * IsTimeout returns a boolean indicating whether the error is known
        * to report that a timeout occurred.
        * 
        * This function predates errors.Is, and the notion of whether an
        * error indicates a timeout can be ambiguous. For example, the Unix
        * error EWOULDBLOCK sometimes indicates a timeout and sometimes does not.
        * New code should use errors.Is with a value appropriate to the call
        * returning the error, such as os.ErrDeadlineExceeded.
    **/
    static public inline function isTimeout(_err:stdgo.Error):Bool {
        final _err = (_err : stdgo.Error);
        return stdgo._internal.os.Os_istimeout.isTimeout(_err);
    }
    /**
        * Getpid returns the process id of the caller.
    **/
    static public inline function getpid():StdTypes.Int {
        return stdgo._internal.os.Os_getpid.getpid();
    }
    /**
        * Getppid returns the process id of the caller's parent.
    **/
    static public inline function getppid():StdTypes.Int {
        return stdgo._internal.os.Os_getppid.getppid();
    }
    /**
        * FindProcess looks for a running process by its pid.
        * 
        * The Process it returns can be used to obtain information
        * about the underlying operating system process.
        * 
        * On Unix systems, FindProcess always succeeds and returns a Process
        * for the given pid, regardless of whether the process exists. To test whether
        * the process actually exists, see whether p.Signal(syscall.Signal(0)) reports
        * an error.
    **/
    static public inline function findProcess(_pid:StdTypes.Int):stdgo.Tuple<Process, stdgo.Error> {
        final _pid = (_pid : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_findprocess.findProcess(_pid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * StartProcess starts a new process with the program, arguments and attributes
        * specified by name, argv and attr. The argv slice will become os.Args in the
        * new process, so it normally starts with the program name.
        * 
        * If the calling goroutine has locked the operating system thread
        * with runtime.LockOSThread and modified any inheritable OS-level
        * thread state (for example, Linux or Plan 9 name spaces), the new
        * process will inherit the caller's thread state.
        * 
        * StartProcess is a low-level interface. The os/exec package provides
        * higher-level interfaces.
        * 
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function startProcess(_name:String, _argv:Array<String>, _attr:ProcAttr):stdgo.Tuple<Process, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        final _argv = ([for (i in _argv) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _attr = (_attr : stdgo.Ref<stdgo._internal.os.Os_procattr.ProcAttr>);
        return {
            final obj = stdgo._internal.os.Os_startprocess.startProcess(_name, _argv, _attr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Executable returns the path name for the executable that started
        * the current process. There is no guarantee that the path is still
        * pointing to the correct executable. If a symlink was used to start
        * the process, depending on the operating system, the result might
        * be the symlink or the path it pointed to. If a stable result is
        * needed, path/filepath.EvalSymlinks might help.
        * 
        * Executable returns an absolute path unless an error occurred.
        * 
        * The main use case is finding resources located relative to an
        * executable.
    **/
    static public inline function executable():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_executable.executable();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Mkdir creates a new directory with the specified name and permission
        * bits (before umask).
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function mkdir(_name:String, _perm:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.os.Os_mkdir.mkdir(_name, _perm);
    }
    /**
        * Chdir changes the current working directory to the named directory.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function chdir(_dir:String):stdgo.Error {
        final _dir = (_dir : stdgo.GoString);
        return stdgo._internal.os.Os_chdir.chdir(_dir);
    }
    /**
        * Open opens the named file for reading. If successful, methods on
        * the returned file can be used for reading; the associated file
        * descriptor has mode O_RDONLY.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function open(_name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_open.open(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Create creates or truncates the named file. If the file already exists,
        * it is truncated. If the file does not exist, it is created with mode 0666
        * (before umask). If successful, methods on the returned File can
        * be used for I/O; the associated file descriptor has mode O_RDWR.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function create(_name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_create.create(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * OpenFile is the generalized open call; most users will use Open
        * or Create instead. It opens the named file with specified flag
        * (O_RDONLY etc.). If the file does not exist, and the O_CREATE flag
        * is passed, it is created with mode perm (before umask). If successful,
        * methods on the returned File can be used for I/O.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function openFile(_name:String, _flag:StdTypes.Int, _perm:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        final _flag = (_flag : stdgo.GoInt);
        return {
            final obj = stdgo._internal.os.Os_openfile.openFile(_name, _flag, _perm);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Rename renames (moves) oldpath to newpath.
        * If newpath already exists and is not a directory, Rename replaces it.
        * OS-specific restrictions may apply when oldpath and newpath are in different directories.
        * Even within the same directory, on non-Unix platforms Rename is not an atomic operation.
        * If there is an error, it will be of type *LinkError.
    **/
    static public inline function rename(_oldpath:String, _newpath:String):stdgo.Error {
        final _oldpath = (_oldpath : stdgo.GoString);
        final _newpath = (_newpath : stdgo.GoString);
        return stdgo._internal.os.Os_rename.rename(_oldpath, _newpath);
    }
    /**
        * TempDir returns the default directory to use for temporary files.
        * 
        * On Unix systems, it returns $TMPDIR if non-empty, else /tmp.
        * On Windows, it uses GetTempPath, returning the first non-empty
        * value from %TMP%, %TEMP%, %USERPROFILE%, or the Windows directory.
        * On Plan 9, it returns /tmp.
        * 
        * The directory is neither guaranteed to exist nor have accessible
        * permissions.
    **/
    static public inline function tempDir():String {
        return stdgo._internal.os.Os_tempdir.tempDir();
    }
    /**
        * UserCacheDir returns the default root directory to use for user-specific
        * cached data. Users should create their own application-specific subdirectory
        * within this one and use that.
        * 
        * On Unix systems, it returns $XDG_CACHE_HOME as specified by
        * https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
        * non-empty, else $HOME/.cache.
        * On Darwin, it returns $HOME/Library/Caches.
        * On Windows, it returns %LocalAppData%.
        * On Plan 9, it returns $home/lib/cache.
        * 
        * If the location cannot be determined (for example, $HOME is not defined),
        * then it will return an error.
    **/
    static public inline function userCacheDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_usercachedir.userCacheDir();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * UserConfigDir returns the default root directory to use for user-specific
        * configuration data. Users should create their own application-specific
        * subdirectory within this one and use that.
        * 
        * On Unix systems, it returns $XDG_CONFIG_HOME as specified by
        * https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
        * non-empty, else $HOME/.config.
        * On Darwin, it returns $HOME/Library/Application Support.
        * On Windows, it returns %AppData%.
        * On Plan 9, it returns $home/lib.
        * 
        * If the location cannot be determined (for example, $HOME is not defined),
        * then it will return an error.
    **/
    static public inline function userConfigDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_userconfigdir.userConfigDir();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * UserHomeDir returns the current user's home directory.
        * 
        * On Unix, including macOS, it returns the $HOME environment variable.
        * On Windows, it returns %USERPROFILE%.
        * On Plan 9, it returns the $home environment variable.
        * 
        * If the expected variable is not set in the environment, UserHomeDir
        * returns either a platform-specific default value or a non-nil error.
    **/
    static public inline function userHomeDir():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_userhomedir.userHomeDir();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Chmod changes the mode of the named file to mode.
        * If the file is a symbolic link, it changes the mode of the link's target.
        * If there is an error, it will be of type *PathError.
        * 
        * A different subset of the mode bits are used, depending on the
        * operating system.
        * 
        * On Unix, the mode's permission bits, ModeSetuid, ModeSetgid, and
        * ModeSticky are used.
        * 
        * On Windows, only the 0200 bit (owner writable) of mode is used; it
        * controls whether the file's read-only attribute is set or cleared.
        * The other bits are currently unused. For compatibility with Go 1.12
        * and earlier, use a non-zero mode. Use mode 0400 for a read-only
        * file and 0600 for a readable+writable file.
        * 
        * On Plan 9, the mode's permission bits, ModeAppend, ModeExclusive,
        * and ModeTemporary are used.
    **/
    static public inline function chmod(_name:String, _mode:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.os.Os_chmod.chmod(_name, _mode);
    }
    /**
        * DirFS returns a file system (an fs.FS) for the tree of files rooted at the directory dir.
        * 
        * Note that DirFS("/prefix") only guarantees that the Open calls it makes to the
        * operating system will begin with "/prefix": DirFS("/prefix").Open("file") is the
        * same as os.Open("/prefix/file"). So if /prefix/file is a symbolic link pointing outside
        * the /prefix tree, then using DirFS does not stop the access any more than using
        * os.Open does. Additionally, the root of the fs.FS returned for a relative path,
        * DirFS("prefix"), will be affected by later calls to Chdir. DirFS is therefore not
        * a general substitute for a chroot-style security mechanism when the directory tree
        * contains arbitrary content.
        * 
        * The directory dir must not be "".
        * 
        * The result implements [io/fs.StatFS], [io/fs.ReadFileFS] and
        * [io/fs.ReadDirFS].
    **/
    static public inline function dirFS(_dir:String):stdgo._internal.io.fs.Fs_fs.FS {
        final _dir = (_dir : stdgo.GoString);
        return stdgo._internal.os.Os_dirfs.dirFS(_dir);
    }
    /**
        * ReadFile reads the named file and returns the contents.
        * A successful call returns err == nil, not err == EOF.
        * Because ReadFile reads the whole file, it does not treat an EOF from Read
        * as an error to be reported.
    **/
    static public inline function readFile(_name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_readfile.readFile(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * WriteFile writes data to the named file, creating it if necessary.
        * If the file does not exist, WriteFile creates it with permissions perm (before umask);
        * otherwise WriteFile truncates it before writing, without changing permissions.
        * Since WriteFile requires multiple system calls to complete, a failure mid-operation
        * can leave the file in a partially written state.
    **/
    static public inline function writeFile(_name:String, _data:Array<std.UInt>, _perm:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.os.Os_writefile.writeFile(_name, _data, _perm);
    }
    /**
        * Chown changes the numeric uid and gid of the named file.
        * If the file is a symbolic link, it changes the uid and gid of the link's target.
        * A uid or gid of -1 means to not change that value.
        * If there is an error, it will be of type *PathError.
        * 
        * On Windows or Plan 9, Chown always returns the syscall.EWINDOWS or
        * EPLAN9 error, wrapped in *PathError.
    **/
    static public inline function chown(_name:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _uid = (_uid : stdgo.GoInt);
        final _gid = (_gid : stdgo.GoInt);
        return stdgo._internal.os.Os_chown.chown(_name, _uid, _gid);
    }
    /**
        * Lchown changes the numeric uid and gid of the named file.
        * If the file is a symbolic link, it changes the uid and gid of the link itself.
        * If there is an error, it will be of type *PathError.
        * 
        * On Windows, it always returns the syscall.EWINDOWS error, wrapped
        * in *PathError.
    **/
    static public inline function lchown(_name:String, _uid:StdTypes.Int, _gid:StdTypes.Int):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _uid = (_uid : stdgo.GoInt);
        final _gid = (_gid : stdgo.GoInt);
        return stdgo._internal.os.Os_lchown.lchown(_name, _uid, _gid);
    }
    /**
        * Chtimes changes the access and modification times of the named
        * file, similar to the Unix utime() or utimes() functions.
        * A zero time.Time value will leave the corresponding file time unchanged.
        * 
        * The underlying filesystem may truncate or round the values to a
        * less precise time unit.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function chtimes(_name:String, _atime:stdgo._internal.time.Time_time.Time, _mtime:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.os.Os_chtimes.chtimes(_name, _atime, _mtime);
    }
    /**
        * NewFile returns a new File with the given file descriptor and
        * name. The returned value will be nil if fd is not a valid file
        * descriptor. On Unix systems, if the file descriptor is in
        * non-blocking mode, NewFile will attempt to return a pollable File
        * (one for which the SetDeadline methods work).
        * 
        * After passing it to NewFile, fd may become invalid under the same
        * conditions described in the comments of the Fd method, and the same
        * constraints apply.
    **/
    static public inline function newFile(_fd:stdgo.GoUIntptr, _name:String):File {
        final _fd = (_fd : stdgo.GoUIntptr);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.os.Os_newfile.newFile(_fd, _name);
    }
    /**
        * Truncate changes the size of the named file.
        * If the file is a symbolic link, it changes the size of the link's target.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function truncate(_name:String, _size:haxe.Int64):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _size = (_size : stdgo.GoInt64);
        return stdgo._internal.os.Os_truncate.truncate(_name, _size);
    }
    /**
        * Remove removes the named file or (empty) directory.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function remove(_name:String):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.os.Os_remove.remove(_name);
    }
    /**
        * Link creates newname as a hard link to the oldname file.
        * If there is an error, it will be of type *LinkError.
    **/
    static public inline function link(_oldname:String, _newname:String):stdgo.Error {
        final _oldname = (_oldname : stdgo.GoString);
        final _newname = (_newname : stdgo.GoString);
        return stdgo._internal.os.Os_link.link(_oldname, _newname);
    }
    /**
        * Symlink creates newname as a symbolic link to oldname.
        * On Windows, a symlink to a non-existent oldname creates a file symlink;
        * if oldname is later created as a directory the symlink will not work.
        * If there is an error, it will be of type *LinkError.
    **/
    static public inline function symlink(_oldname:String, _newname:String):stdgo.Error {
        final _oldname = (_oldname : stdgo.GoString);
        final _newname = (_newname : stdgo.GoString);
        return stdgo._internal.os.Os_symlink.symlink(_oldname, _newname);
    }
    /**
        * Readlink returns the destination of the named symbolic link.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function readlink(_name:String):stdgo.Tuple<String, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_readlink.readlink(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Getwd returns a rooted path name corresponding to the
        * current directory. If the current directory can be
        * reached via multiple paths (due to symbolic links),
        * Getwd may return any one of them.
    **/
    static public inline function getwd():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_getwd.getwd();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * MkdirAll creates a directory named path,
        * along with any necessary parents, and returns nil,
        * or else returns an error.
        * The permission bits perm (before umask) are used for all
        * directories that MkdirAll creates.
        * If path is already a directory, MkdirAll does nothing
        * and returns nil.
    **/
    static public inline function mkdirAll(_path:String, _perm:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.os.Os_mkdirall.mkdirAll(_path, _perm);
    }
    /**
        * RemoveAll removes path and any children it contains.
        * It removes everything it can but returns the first error
        * it encounters. If the path does not exist, RemoveAll
        * returns nil (no error).
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function removeAll(_path:String):stdgo.Error {
        final _path = (_path : stdgo.GoString);
        return stdgo._internal.os.Os_removeall.removeAll(_path);
    }
    /**
        * IsPathSeparator reports whether c is a directory separator character.
    **/
    static public inline function isPathSeparator(_c:std.UInt):Bool {
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.os.Os_ispathseparator.isPathSeparator(_c);
    }
    /**
        * Pipe returns a connected pair of Files; reads from r return bytes written to w.
        * It returns the files and an error, if any.
    **/
    static public inline function pipe():stdgo.Tuple.Tuple3<File, File, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_pipe.pipe();
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * Getuid returns the numeric user id of the caller.
        * 
        * On Windows, it returns -1.
    **/
    static public inline function getuid():StdTypes.Int {
        return stdgo._internal.os.Os_getuid.getuid();
    }
    /**
        * Geteuid returns the numeric effective user id of the caller.
        * 
        * On Windows, it returns -1.
    **/
    static public inline function geteuid():StdTypes.Int {
        return stdgo._internal.os.Os_geteuid.geteuid();
    }
    /**
        * Getgid returns the numeric group id of the caller.
        * 
        * On Windows, it returns -1.
    **/
    static public inline function getgid():StdTypes.Int {
        return stdgo._internal.os.Os_getgid.getgid();
    }
    /**
        * Getegid returns the numeric effective group id of the caller.
        * 
        * On Windows, it returns -1.
    **/
    static public inline function getegid():StdTypes.Int {
        return stdgo._internal.os.Os_getegid.getegid();
    }
    /**
        * Getgroups returns a list of the numeric ids of groups that the caller belongs to.
        * 
        * On Windows, it returns syscall.EWINDOWS. See the os/user package
        * for a possible alternative.
    **/
    static public inline function getgroups():stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_getgroups.getgroups();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * Exit causes the current program to exit with the given status code.
        * Conventionally, code zero indicates success, non-zero an error.
        * The program terminates immediately; deferred functions are not run.
        * 
        * For portability, the status code should be in the range [0, 125].
    **/
    static public inline function exit(_code:StdTypes.Int):Void {
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.os.Os_exit.exit(_code);
    }
    /**
        * Stat returns a FileInfo describing the named file.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function stat(_name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_stat.stat(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Lstat returns a FileInfo describing the named file.
        * If the file is a symbolic link, the returned FileInfo
        * describes the symbolic link. Lstat makes no attempt to follow the link.
        * If there is an error, it will be of type *PathError.
    **/
    static public inline function lstat(_name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_lstat.lstat(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Hostname returns the host name reported by the kernel.
    **/
    static public inline function hostname():stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.Os_hostname.hostname();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * CreateTemp creates a new temporary file in the directory dir,
        * opens the file for reading and writing, and returns the resulting file.
        * The filename is generated by taking pattern and adding a random string to the end.
        * If pattern includes a "*", the random string replaces the last "*".
        * If dir is the empty string, CreateTemp uses the default directory for temporary files, as returned by TempDir.
        * Multiple programs or goroutines calling CreateTemp simultaneously will not choose the same file.
        * The caller can use the file's Name method to find the pathname of the file.
        * It is the caller's responsibility to remove the file when it is no longer needed.
    **/
    static public inline function createTemp(_dir:String, _pattern:String):stdgo.Tuple<File, stdgo.Error> {
        final _dir = (_dir : stdgo.GoString);
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_createtemp.createTemp(_dir, _pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * MkdirTemp creates a new temporary directory in the directory dir
        * and returns the pathname of the new directory.
        * The new directory's name is generated by adding a random string to the end of pattern.
        * If pattern includes a "*", the random string replaces the last "*" instead.
        * If dir is the empty string, MkdirTemp uses the default directory for temporary files, as returned by TempDir.
        * Multiple programs or goroutines calling MkdirTemp simultaneously will not choose the same directory.
        * It is the caller's responsibility to remove the directory when it is no longer needed.
    **/
    static public inline function mkdirTemp(_dir:String, _pattern:String):stdgo.Tuple<String, stdgo.Error> {
        final _dir = (_dir : stdgo.GoString);
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_mkdirtemp.mkdirTemp(_dir, _pattern);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Getpagesize returns the underlying system's memory page size.
    **/
    static public inline function getpagesize():StdTypes.Int {
        return stdgo._internal.os.Os_getpagesize.getpagesize();
    }
    /**
        * SameFile reports whether fi1 and fi2 describe the same file.
        * For example, on Unix this means that the device and inode fields
        * of the two underlying structures are identical; on other systems
        * the decision may be based on the path names.
        * SameFile only applies to results returned by this package's Stat.
        * It returns false in other cases.
    **/
    static public inline function sameFile(_fi1:stdgo._internal.io.fs.Fs_fileinfo.FileInfo, _fi2:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):Bool {
        return stdgo._internal.os.Os_samefile.sameFile(_fi1, _fi2);
    }
}
