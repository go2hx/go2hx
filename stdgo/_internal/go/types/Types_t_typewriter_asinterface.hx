package stdgo._internal.go.types;
class T_typeWriter_asInterface {
    @:keep
    @:tdfield
    public dynamic function _signature(_sig:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):Void @:_0 __self__.value._signature(_sig);
    @:keep
    @:tdfield
    public dynamic function _tuple(_tup:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, _variadic:Bool):Void @:_0 __self__.value._tuple(_tup, _variadic);
    @:keep
    @:tdfield
    public dynamic function _typeName(_obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>):Void @:_0 __self__.value._typeName(_obj);
    @:keep
    @:tdfield
    public dynamic function _tParamList(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):Void @:_0 __self__.value._tParamList(_list);
    @:keep
    @:tdfield
    public dynamic function _typeList(_list:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):Void @:_0 __self__.value._typeList(_list);
    @:keep
    @:tdfield
    public dynamic function _typeSet(_s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Void @:_0 __self__.value._typeSet(_s);
    @:keep
    @:tdfield
    public dynamic function _typ(_typ:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._typ(_typ);
    @:keep
    @:tdfield
    public dynamic function _error(_msg:stdgo.GoString):Void @:_0 __self__.value._error(_msg);
    @:keep
    @:tdfield
    public dynamic function _string(_s:stdgo.GoString):Void @:_0 __self__.value._string(_s);
    @:keep
    @:tdfield
    public dynamic function _byte(_b:stdgo.GoUInt8):Void @:_0 __self__.value._byte(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_typewriterpointer.T_typeWriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
