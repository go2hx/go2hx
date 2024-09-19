package stdgo._internal.testing.internal.testdeps;
class T_testLog_asInterface {
    @:keep
    public dynamic function _add(_op:stdgo.GoString, _name:stdgo.GoString):Void __self__.value._add(_op, _name);
    @:keep
    public dynamic function chdir(_name:stdgo.GoString):Void __self__.value.chdir(_name);
    @:keep
    public dynamic function stat(_name:stdgo.GoString):Void __self__.value.stat(_name);
    @:keep
    public dynamic function open(_name:stdgo.GoString):Void __self__.value.open(_name);
    @:keep
    public dynamic function getenv(_key:stdgo.GoString):Void __self__.value.getenv(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.testing.internal.testdeps.Testdeps_T_testLog.T_testLog>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
