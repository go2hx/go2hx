package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_object_static_extension.T_object_static_extension) class T_object {
    public var _parent : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
    public var _pos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
    public var _name : stdgo.GoString = "";
    public var _typ : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public var _order_ : stdgo.GoUInt32 = 0;
    public var _color_ : stdgo._internal.go.types.Types_t_color.T_color = ((0 : stdgo.GoUInt32) : stdgo._internal.go.types.Types_t_color.T_color);
    public var _scopePos_ : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?_parent:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, ?_name:stdgo.GoString, ?_typ:stdgo._internal.go.types.Types_type_.Type_, ?_order_:stdgo.GoUInt32, ?_color_:stdgo._internal.go.types.Types_t_color.T_color, ?_scopePos_:stdgo._internal.go.token.Token_pos.Pos) {
        if (_parent != null) this._parent = _parent;
        if (_pos != null) this._pos = _pos;
        if (_pkg != null) this._pkg = _pkg;
        if (_name != null) this._name = _name;
        if (_typ != null) this._typ = _typ;
        if (_order_ != null) this._order_ = _order_;
        if (_color_ != null) this._color_ = _color_;
        if (_scopePos_ != null) this._scopePos_ = _scopePos_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_object(_parent, _pos, _pkg, _name, _typ, _order_, _color_, _scopePos_);
    }
}
