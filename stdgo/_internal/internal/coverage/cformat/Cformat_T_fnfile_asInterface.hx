package stdgo._internal.internal.coverage.cformat;
import stdgo._internal.internal.coverage.cmerge.Cmerge;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
class T_fnfile_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.cformat.Cformat_T_fnfilePointer.T_fnfilePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
