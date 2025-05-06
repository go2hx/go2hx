package stdgo._internal.go.internal.gcimporter;
class T_importReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _byte():stdgo.GoUInt8 return @:_0 __self__.value._byte();
    @:keep
    @:tdfield
    public dynamic function _uint64():stdgo.GoUInt64 return @:_0 __self__.value._uint64();
    @:keep
    @:tdfield
    public dynamic function _int64():stdgo.GoInt64 return @:_0 __self__.value._int64();
    @:keep
    @:tdfield
    public dynamic function _bool():Bool return @:_0 __self__.value._bool();
    @:keep
    @:tdfield
    public dynamic function _param():stdgo.Ref<stdgo._internal.go.types.Types_var.Var> return @:_0 __self__.value._param();
    @:keep
    @:tdfield
    public dynamic function _paramList():stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> return @:_0 __self__.value._paramList();
    @:keep
    @:tdfield
    public dynamic function _tparamList():stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> return @:_0 __self__.value._tparamList();
    @:keep
    @:tdfield
    public dynamic function _signature(_recv:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>, _rparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> return @:_0 __self__.value._signature(_recv, _rparams, _tparams);
    @:keep
    @:tdfield
    public dynamic function _kind():stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag return @:_0 __self__.value._kind();
    @:keep
    @:tdfield
    public dynamic function _doType(_base:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._doType(_base);
    @:keep
    @:tdfield
    public dynamic function _string():stdgo.GoString return @:_0 __self__.value._string();
    @:keep
    @:tdfield
    public dynamic function _pkg():stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:_0 __self__.value._pkg();
    @:keep
    @:tdfield
    public dynamic function _typ():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._typ();
    @:keep
    @:tdfield
    public dynamic function _posv1():Void @:_0 __self__.value._posv1();
    @:keep
    @:tdfield
    public dynamic function _posv0():Void @:_0 __self__.value._posv0();
    @:keep
    @:tdfield
    public dynamic function _pos():stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value._pos();
    @:keep
    @:tdfield
    public dynamic function _qualifiedIdent():{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } return @:_0 __self__.value._qualifiedIdent();
    @:keep
    @:tdfield
    public dynamic function _ident():stdgo.GoString return @:_0 __self__.value._ident();
    @:keep
    @:tdfield
    public dynamic function _mpfloat(_typ:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>):stdgo._internal.go.constant.Constant_value.Value return @:_0 __self__.value._mpfloat(_typ);
    @:keep
    @:tdfield
    public dynamic function _mpint(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _typ:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>):Void @:_0 __self__.value._mpint(_x, _typ);
    @:keep
    @:tdfield
    public dynamic function _value():{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo._internal.go.constant.Constant_value.Value; } return @:_0 __self__.value._value();
    @:keep
    @:tdfield
    public dynamic function _declare(_obj:stdgo._internal.go.types.Types_object.Object):Void @:_0 __self__.value._declare(_obj);
    @:keep
    @:tdfield
    public dynamic function _obj(_name:stdgo.GoString):Void @:_0 __self__.value._obj(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreaderpointer.T_importReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
