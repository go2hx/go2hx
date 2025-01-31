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
class T_workerServer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _ping(_ctx:stdgo._internal.context.Context_Context.Context, _args:stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs):stdgo._internal.internal.fuzz.Fuzz_T_pingResponse.T_pingResponse return @:_0 __self__.value._ping(_ctx, _args);
    @:keep
    @:tdfield
    public dynamic function _minimizeInput(_ctx:stdgo._internal.context.Context_Context.Context, _vals:stdgo.Slice<stdgo.AnyInterface>, _mem:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>, _args:stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value._minimizeInput(_ctx, _vals, _mem, _args);
    @:keep
    @:tdfield
    public dynamic function _minimize(_ctx:stdgo._internal.context.Context_Context.Context, _args:stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs):stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse return @:_0 __self__.value._minimize(_ctx, _args);
    @:keep
    @:tdfield
    public dynamic function _fuzz(_ctx:stdgo._internal.context.Context_Context.Context, _args:stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs):stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse return @:_0 __self__.value._fuzz(_ctx, _args);
    @:keep
    @:tdfield
    public dynamic function _serve(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return @:_0 __self__.value._serve(_ctx);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fuzz.Fuzz_T_workerServerPointer.T_workerServerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
