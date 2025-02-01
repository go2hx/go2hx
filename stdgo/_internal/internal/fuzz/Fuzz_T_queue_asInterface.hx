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
class T_queue_asInterface {
    @:keep
    @:tdfield
    public dynamic function _clear():Void @:_0 __self__.value._clear();
    @:keep
    @:tdfield
    public dynamic function _peek():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value._peek();
    @:keep
    @:tdfield
    public dynamic function _dequeue():{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return @:_0 __self__.value._dequeue();
    @:keep
    @:tdfield
    public dynamic function _enqueue(_e:stdgo.AnyInterface):Void @:_0 __self__.value._enqueue(_e);
    @:keep
    @:tdfield
    public dynamic function _grow():Void @:_0 __self__.value._grow();
    @:keep
    @:tdfield
    public dynamic function _cap():stdgo.GoInt return @:_0 __self__.value._cap();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fuzz.Fuzz_T_queuePointer.T_queuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
