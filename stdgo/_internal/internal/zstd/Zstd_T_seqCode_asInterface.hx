package stdgo._internal.internal.zstd;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.errors.Errors;
class T_seqCode_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.zstd.Zstd_T_seqCodePointer.T_seqCodePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
