package stdgo._internal.debug.gosym;
class Table_asInterface {
    @:keep
    public dynamic function symByAddr(_addr:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym> return __self__.value.symByAddr(_addr);
    @:keep
    public dynamic function lookupFunc(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func> return __self__.value.lookupFunc(_name);
    @:keep
    public dynamic function lookupSym(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym> return __self__.value.lookupSym(_name);
    @:keep
    public dynamic function lineToPC(_file:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>; var _2 : stdgo.Error; } return __self__.value.lineToPC(_file, _line);
    @:keep
    public dynamic function pctoLine(_pc:stdgo.GoUInt64):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>; } return __self__.value.pctoLine(_pc);
    @:keep
    public dynamic function pctoFunc(_pc:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func> return __self__.value.pctoFunc(_pc);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.gosym.Gosym_Table.Table>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
