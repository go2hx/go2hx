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
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_T_pcgRand_static_extension.T_pcgRand_static_extension) class T_pcgRand {
    public var _noCopy : stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy = ({} : stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy);
    public var _state : stdgo.GoUInt64 = 0;
    public var _inc : stdgo.GoUInt64 = 0;
    public function new(?_noCopy:stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy, ?_state:stdgo.GoUInt64, ?_inc:stdgo.GoUInt64) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (_state != null) this._state = _state;
        if (_inc != null) this._inc = _inc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pcgRand(_noCopy, _state, _inc);
    }
}
