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
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_T_workerClient_static_extension.T_workerClient_static_extension) class T_workerClient {
    @:embedded
    public var _workerComm : stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm = ({} : stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm);
    public var _m : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public function new(?_workerComm:stdgo._internal.internal.fuzz.Fuzz_T_workerComm.T_workerComm, ?_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator>, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex) {
        if (_workerComm != null) this._workerComm = _workerComm;
        if (_m != null) this._m = _m;
        if (_mu != null) this._mu = _mu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_workerClient(_workerComm, _m, _mu);
    }
}
