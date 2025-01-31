package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
class T_arrayType_asInterface {
    @:keep
    @:tdfield
    public dynamic function _string():stdgo.GoString return @:_0 __self__.value._string();
    @:keep
    @:tdfield
    public dynamic function _safeString(_seen:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, Bool>):stdgo.GoString return @:_0 __self__.value._safeString(_seen);
    @:keep
    @:tdfield
    public dynamic function _init(_elem:stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType, _len:stdgo.GoInt):Void @:_0 __self__.value._init(_elem, _len);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setId(_0:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):Void @:_0 __self__.value._setId(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _name():stdgo.GoString return @:_0 __self__.value._name();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _id():stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId return @:_0 __self__.value._id();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.gob.Gob_T_arrayTypePointer.T_arrayTypePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
