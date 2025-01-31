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
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_T_sharedMemHeader_static_extension.T_sharedMemHeader_static_extension) class T_sharedMemHeader {
    public var _count : stdgo.GoInt64 = 0;
    public var _valueLen : stdgo.GoInt = 0;
    public var _randState : stdgo.GoUInt64 = 0;
    public var _randInc : stdgo.GoUInt64 = 0;
    public var _rawInMem : Bool = false;
    public function new(?_count:stdgo.GoInt64, ?_valueLen:stdgo.GoInt, ?_randState:stdgo.GoUInt64, ?_randInc:stdgo.GoUInt64, ?_rawInMem:Bool) {
        if (_count != null) this._count = _count;
        if (_valueLen != null) this._valueLen = _valueLen;
        if (_randState != null) this._randState = _randState;
        if (_randInc != null) this._randInc = _randInc;
        if (_rawInMem != null) this._rawInMem = _rawInMem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sharedMemHeader(_count, _valueLen, _randState, _randInc, _rawInMem);
    }
}
