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
@:keep class T_mutatorRand_static_extension {
    @:interfacetypeffun
    static public function _restore(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _randState:stdgo.GoUInt64, _randInc:stdgo.GoUInt64):Void t._restore(_randState, _randInc);
    @:interfacetypeffun
    static public function _save(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _randState:stdgo.Pointer<stdgo.GoUInt64>, _randInc:stdgo.Pointer<stdgo.GoUInt64>):Void t._save(_randState, _randInc);
    @:interfacetypeffun
    static public function _bool(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand):Bool return t._bool();
    @:interfacetypeffun
    static public function _exp2(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand):stdgo.GoInt return t._exp2();
    @:interfacetypeffun
    static public function _uint32n(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _0:stdgo.GoUInt32):stdgo.GoUInt32 return t._uint32n(_0);
    @:interfacetypeffun
    static public function _intn(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand, _0:stdgo.GoInt):stdgo.GoInt return t._intn(_0);
    @:interfacetypeffun
    static public function _uint32(t:stdgo._internal.internal.fuzz.Fuzz_T_mutatorRand.T_mutatorRand):stdgo.GoUInt32 return t._uint32();
}
