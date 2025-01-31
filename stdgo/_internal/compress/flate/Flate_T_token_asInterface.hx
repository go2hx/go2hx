package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
class T_token_asInterface {
    @:keep
    @:tdfield
    public dynamic function _length():stdgo.GoUInt32 return @:_0 __self__.value._length();
    @:keep
    @:tdfield
    public dynamic function _offset():stdgo.GoUInt32 return @:_0 __self__.value._offset();
    @:keep
    @:tdfield
    public dynamic function _literal():stdgo.GoUInt32 return @:_0 __self__.value._literal();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.compress.flate.Flate_T_tokenPointer.T_tokenPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
