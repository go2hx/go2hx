package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension) class T_worker {
    public var _dir : stdgo.GoString = "";
    public var _binPath : stdgo.GoString = "";
    public var _args : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _coordinator : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
    public var _memMu : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>> = (null : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>);
    public var _cmd : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd> = (null : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
    public var _client : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>);
    public var _waitErr : stdgo.Error = (null : stdgo.Error);
    public var _interrupted : Bool = false;
    public var _termC : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy> = (null : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>);
    public function new(?_dir:stdgo.GoString, ?_binPath:stdgo.GoString, ?_args:stdgo.Slice<stdgo.GoString>, ?_env:stdgo.Slice<stdgo.GoString>, ?_coordinator:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>, ?_memMu:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>>, ?_cmd:stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>, ?_client:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>, ?_waitErr:stdgo.Error, ?_interrupted:Bool, ?_termC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy>) {
        if (_dir != null) this._dir = _dir;
        if (_binPath != null) this._binPath = _binPath;
        if (_args != null) this._args = _args;
        if (_env != null) this._env = _env;
        if (_coordinator != null) this._coordinator = _coordinator;
        if (_memMu != null) this._memMu = _memMu;
        if (_cmd != null) this._cmd = _cmd;
        if (_client != null) this._client = _client;
        if (_waitErr != null) this._waitErr = _waitErr;
        if (_interrupted != null) this._interrupted = _interrupted;
        if (_termC != null) this._termC = _termC;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_worker(
_dir,
_binPath,
_args,
_env,
_coordinator,
_memMu,
_cmd,
_client,
_waitErr,
_interrupted,
_termC);
    }
}
