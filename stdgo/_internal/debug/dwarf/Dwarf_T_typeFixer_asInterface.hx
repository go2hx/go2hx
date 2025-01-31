package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
class T_typeFixer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _apply():Void @:_0 __self__.value._apply();
    @:keep
    @:tdfield
    public dynamic function _recordArrayType(_t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>):Void @:_0 __self__.value._recordArrayType(_t);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.dwarf.Dwarf_T_typeFixerPointer.T_typeFixerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
