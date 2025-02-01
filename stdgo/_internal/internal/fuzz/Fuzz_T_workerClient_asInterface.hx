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
class T_workerClient_asInterface {
    @:keep
    @:tdfield
    public dynamic function _callLocked(_ctx:stdgo._internal.context.Context_Context.Context, _c:stdgo._internal.internal.fuzz.Fuzz_T_call.T_call, _resp:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value._callLocked(_ctx, _c, _resp);
    @:keep
    @:tdfield
    public dynamic function _ping(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return @:_0 __self__.value._ping(_ctx);
    @:keep
    @:tdfield
    public dynamic function _fuzz(_ctx:stdgo._internal.context.Context_Context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, _args:stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } return @:_0 __self__.value._fuzz(_ctx, _entryIn, _args);
    @:keep
    @:tdfield
    public dynamic function _minimize(_ctx:stdgo._internal.context.Context_Context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, _args:stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } return @:_0 __self__.value._minimize(_ctx, _entryIn, _args);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fuzz.Fuzz_T_workerClientPointer.T_workerClientPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
