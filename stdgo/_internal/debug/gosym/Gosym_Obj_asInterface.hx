package stdgo._internal.debug.gosym;
class Obj_asInterface {
    @:keep
    public dynamic function _alineFromLine(_path:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._alineFromLine(_path, _line);
    @:keep
    public dynamic function _lineFromAline(_aline:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } return __self__.value._lineFromAline(_aline);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.gosym.Gosym_Obj.Obj>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
