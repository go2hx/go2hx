package stdgo._internal.debug.plan9obj;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
class T_formatError_asInterface {
    @:keep
    @:tdfield
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.plan9obj.Plan9obj_T_formatErrorPointer.T_formatErrorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
