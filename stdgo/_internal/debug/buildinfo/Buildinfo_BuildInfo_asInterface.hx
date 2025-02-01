package stdgo._internal.debug.buildinfo;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.debug.elf.Elf;
import stdgo._internal.debug.pe.Pe;
import stdgo._internal.debug.macho.Macho;
import stdgo._internal.internal.xcoff.Xcoff;
import stdgo._internal.debug.plan9obj.Plan9obj;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
class BuildInfo_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.buildinfo.Buildinfo_BuildInfoPointer.BuildInfoPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
