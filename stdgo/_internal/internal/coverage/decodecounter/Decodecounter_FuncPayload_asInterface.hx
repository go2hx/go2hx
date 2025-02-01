package stdgo._internal.internal.coverage.decodecounter;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.internal.coverage.Coverage;
import stdgo._internal.internal.coverage.slicereader.Slicereader;
import stdgo._internal.internal.coverage.stringtab.Stringtab;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
class FuncPayload_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.decodecounter.Decodecounter_FuncPayloadPointer.FuncPayloadPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
