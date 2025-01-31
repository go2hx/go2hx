package stdgo._internal.math.big;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.encoding.xml.Xml;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.os.Os;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
class T_decimal_asInterface {
    @:keep
    @:tdfield
    public dynamic function _roundDown(_n:stdgo.GoInt):Void @:_0 __self__.value._roundDown(_n);
    @:keep
    @:tdfield
    public dynamic function _roundUp(_n:stdgo.GoInt):Void @:_0 __self__.value._roundUp(_n);
    @:keep
    @:tdfield
    public dynamic function _round(_n:stdgo.GoInt):Void @:_0 __self__.value._round(_n);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function _init(_m:stdgo._internal.math.big.Big_T_nat.T_nat, _shift:stdgo.GoInt):Void @:_0 __self__.value._init(_m, _shift);
    @:keep
    @:tdfield
    public dynamic function _at(_i:stdgo.GoInt):stdgo.GoUInt8 return @:_0 __self__.value._at(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.math.big.Big_T_decimalPointer.T_decimalPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
