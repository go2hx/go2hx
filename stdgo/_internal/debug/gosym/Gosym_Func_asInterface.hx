package stdgo._internal.debug.gosym;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
class Func_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _nameWithoutInst():stdgo.GoString return @:_0 __self__.value._nameWithoutInst();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function static_():Bool return @:_0 __self__.value.static_();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function receiverName():stdgo.GoString return @:_0 __self__.value.receiverName();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function packageName():stdgo.GoString return @:_0 __self__.value.packageName();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function baseName():stdgo.GoString return @:_0 __self__.value.baseName();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.gosym.Gosym_FuncPointer.FuncPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
