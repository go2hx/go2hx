package stdgo._internal.encoding.gob;
class T_typeId_asInterface {
    @:keep
    @:tdfield
    public dynamic function _name():stdgo.GoString return @:_0 __self__.value._name();
    @:keep
    @:tdfield
    public dynamic function _string():stdgo.GoString return @:_0 __self__.value._string();
    @:keep
    @:tdfield
    public dynamic function _gobType():stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType return @:_0 __self__.value._gobType();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.gob.Gob_t_typeidpointer.T_typeIdPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
