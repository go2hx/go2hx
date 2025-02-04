package stdgo._internal.debug.gosym;
class Table_asInterface {
    @:keep
    @:tdfield
    public dynamic function symByAddr(_addr:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> return @:_0 __self__.value.symByAddr(_addr);
    @:keep
    @:tdfield
    public dynamic function lookupFunc(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func> return @:_0 __self__.value.lookupFunc(_name);
    @:keep
    @:tdfield
    public dynamic function lookupSym(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> return @:_0 __self__.value.lookupSym(_name);
    @:keep
    @:tdfield
    public dynamic function lineToPC(_file:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>; var _2 : stdgo.Error; } return @:_0 __self__.value.lineToPC(_file, _line);
    @:keep
    @:tdfield
    public dynamic function pCToLine(_pc:stdgo.GoUInt64):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>; } return @:_0 __self__.value.pCToLine(_pc);
    @:keep
    @:tdfield
    public dynamic function pCToFunc(_pc:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func> return @:_0 __self__.value.pCToFunc(_pc);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.gosym.Gosym_tablepointer.TablePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
