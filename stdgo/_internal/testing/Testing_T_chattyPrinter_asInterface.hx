package stdgo._internal.testing;
class T_chattyPrinter_asInterface {
    @:keep
    public dynamic function printf(_testName:stdgo.GoString, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.printf(_testName, _format, ..._args);
    @:keep
    public dynamic function updatef(_testName:stdgo.GoString, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value.updatef(_testName, _format, ..._args);
    @:keep
    public dynamic function _prefix():stdgo.GoString return __self__.value._prefix();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.testing.Testing_T_chattyPrinter.T_chattyPrinter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
