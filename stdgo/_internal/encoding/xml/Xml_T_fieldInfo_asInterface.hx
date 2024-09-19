package stdgo._internal.encoding.xml;
class T_fieldInfo_asInterface {
    @:keep
    public dynamic function _value(_v:stdgo._internal.reflect.Reflect_Value.Value, _shouldInitNilPointers:Bool):stdgo._internal.reflect.Reflect_Value.Value return __self__.value._value(_v, _shouldInitNilPointers);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
