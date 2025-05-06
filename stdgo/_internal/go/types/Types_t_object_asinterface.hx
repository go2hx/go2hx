package stdgo._internal.go.types;
class T_object_asInterface {
    @:keep
    @:tdfield
    public dynamic function _less(_b:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):Bool return @:_0 __self__.value._less(_b);
    @:keep
    @:tdfield
    public dynamic function _sameId(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):Bool return @:_0 __self__.value._sameId(_pkg, _name);
    @:keep
    @:tdfield
    public dynamic function _setScopePos(_pos:stdgo._internal.go.token.Token_pos.Pos):Void @:_0 __self__.value._setScopePos(_pos);
    @:keep
    @:tdfield
    public dynamic function _setColor(_color:stdgo._internal.go.types.Types_t_color.T_color):Void @:_0 __self__.value._setColor(_color);
    @:keep
    @:tdfield
    public dynamic function _setOrder(_order:stdgo.GoUInt32):Void @:_0 __self__.value._setOrder(_order);
    @:keep
    @:tdfield
    public dynamic function _setType(_typ:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._setType(_typ);
    @:keep
    @:tdfield
    public dynamic function _setParent(_parent:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void @:_0 __self__.value._setParent(_parent);
    @:keep
    @:tdfield
    public dynamic function _scopePos():stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value._scopePos();
    @:keep
    @:tdfield
    public dynamic function _color():stdgo._internal.go.types.Types_t_color.T_color return @:_0 __self__.value._color();
    @:keep
    @:tdfield
    public dynamic function _order():stdgo.GoUInt32 return @:_0 __self__.value._order();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function id():stdgo.GoString return @:_0 __self__.value.id();
    @:keep
    @:tdfield
    public dynamic function exported():Bool return @:_0 __self__.value.exported();
    @:keep
    @:tdfield
    public dynamic function type():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.type();
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    @:keep
    @:tdfield
    public dynamic function pkg():stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:_0 __self__.value.pkg();
    @:keep
    @:tdfield
    public dynamic function pos():stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value.pos();
    @:keep
    @:tdfield
    public dynamic function parent():stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> return @:_0 __self__.value.parent();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_objectpointer.T_objectPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
