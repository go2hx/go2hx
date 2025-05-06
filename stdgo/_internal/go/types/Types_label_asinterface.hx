package stdgo._internal.go.types;
class Label_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setType(_0:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._setType(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setScopePos(_0:stdgo._internal.go.token.Token_pos.Pos):Void @:_0 __self__.value._setScopePos(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setParent(_0:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void @:_0 __self__.value._setParent(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setOrder(_0:stdgo.GoUInt32):Void @:_0 __self__.value._setOrder(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setColor(_0:stdgo._internal.go.types.Types_t_color.T_color):Void @:_0 __self__.value._setColor(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _scopePos():stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value._scopePos();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _sameId(_0:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _1:stdgo.GoString):Bool return @:_0 __self__.value._sameId(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _order():stdgo.GoUInt32 return @:_0 __self__.value._order();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _less(_0:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):Bool return @:_0 __self__.value._less(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _color():stdgo._internal.go.types.Types_t_color.T_color return @:_0 __self__.value._color();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function type():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.type();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function pos():stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value.pos();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function pkg():stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:_0 __self__.value.pkg();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function parent():stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> return @:_0 __self__.value.parent();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function id():stdgo.GoString return @:_0 __self__.value.id();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function exported():Bool return @:_0 __self__.value.exported();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_labelpointer.LabelPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
