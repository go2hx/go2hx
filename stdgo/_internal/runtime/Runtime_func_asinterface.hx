package stdgo._internal.runtime;
class Func_asInterface {
    @:keep
    @:tdfield
    public dynamic function fileLine(_pc:stdgo.GoUIntptr):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } return @:_0 __self__.value.fileLine(_pc);
    @:keep
    @:tdfield
    public dynamic function entry():stdgo.GoUIntptr return @:_0 __self__.value.entry();
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_funcpointer.FuncPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
