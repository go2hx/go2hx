package stdgo._internal.go.types;
@:keep class Object_static_extension {
    @:interfacetypeffun
    static public function _setScopePos(t:stdgo._internal.go.types.Types_object.Object, _pos:stdgo._internal.go.token.Token_pos.Pos):Void t._setScopePos(_pos);
    @:interfacetypeffun
    static public function _scopePos(t:stdgo._internal.go.types.Types_object.Object):stdgo._internal.go.token.Token_pos.Pos return t._scopePos();
    @:interfacetypeffun
    static public function _sameId(t:stdgo._internal.go.types.Types_object.Object, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):Bool return t._sameId(_pkg, _name);
    @:interfacetypeffun
    static public function _setParent(t:stdgo._internal.go.types.Types_object.Object, _0:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void t._setParent(_0);
    @:interfacetypeffun
    static public function _setColor(t:stdgo._internal.go.types.Types_object.Object, _color:stdgo._internal.go.types.Types_t_color.T_color):Void t._setColor(_color);
    @:interfacetypeffun
    static public function _setOrder(t:stdgo._internal.go.types.Types_object.Object, _0:stdgo.GoUInt32):Void t._setOrder(_0);
    @:interfacetypeffun
    static public function _setType(t:stdgo._internal.go.types.Types_object.Object, _0:stdgo._internal.go.types.Types_type_.Type_):Void t._setType(_0);
    @:interfacetypeffun
    static public function _color(t:stdgo._internal.go.types.Types_object.Object):stdgo._internal.go.types.Types_t_color.T_color return t._color();
    @:interfacetypeffun
    static public function _order(t:stdgo._internal.go.types.Types_object.Object):stdgo.GoUInt32 return t._order();
    @:interfacetypeffun
    static public function string(t:stdgo._internal.go.types.Types_object.Object):stdgo.GoString return t.string();
    @:interfacetypeffun
    static public function id(t:stdgo._internal.go.types.Types_object.Object):stdgo.GoString return t.id();
    @:interfacetypeffun
    static public function exported(t:stdgo._internal.go.types.Types_object.Object):Bool return t.exported();
    @:interfacetypeffun
    static public function type(t:stdgo._internal.go.types.Types_object.Object):stdgo._internal.go.types.Types_type_.Type_ return t.type();
    @:interfacetypeffun
    static public function name(t:stdgo._internal.go.types.Types_object.Object):stdgo.GoString return t.name();
    @:interfacetypeffun
    static public function pkg(t:stdgo._internal.go.types.Types_object.Object):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return t.pkg();
    @:interfacetypeffun
    static public function pos(t:stdgo._internal.go.types.Types_object.Object):stdgo._internal.go.token.Token_pos.Pos return t.pos();
    @:interfacetypeffun
    static public function parent(t:stdgo._internal.go.types.Types_object.Object):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> return t.parent();
}
