package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_const_static_extension.Const_static_extension) class Const {
    @:embedded
    public var _object : stdgo._internal.go.types.Types_t_object.T_object = ({} : stdgo._internal.go.types.Types_t_object.T_object);
    public var _val : stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
    public function new(?_object:stdgo._internal.go.types.Types_t_object.T_object, ?_val:stdgo._internal.go.constant.Constant_value.Value) {
        if (_object != null) this._object = _object;
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var exported(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_exported():() -> Bool return @:check32 this._object.exported;
    public var id(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_id():() -> stdgo.GoString return @:check32 this._object.id;
    public var name(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_name():() -> stdgo.GoString return @:check32 this._object.name;
    public var parent(get, never) : () -> stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>;
    @:embedded
    @:embeddededffieldsffun
    public function get_parent():() -> stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> return @:check32 this._object.parent;
    public var pkg(get, never) : () -> stdgo.Ref<stdgo._internal.go.types.Types_package.Package>;
    @:embedded
    @:embeddededffieldsffun
    public function get_pkg():() -> stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:check32 this._object.pkg;
    public var pos(get, never) : () -> stdgo._internal.go.token.Token_pos.Pos;
    @:embedded
    @:embeddededffieldsffun
    public function get_pos():() -> stdgo._internal.go.token.Token_pos.Pos return @:check32 this._object.pos;
    public var type(get, never) : () -> stdgo._internal.go.types.Types_type_.Type_;
    @:embedded
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.go.types.Types_type_.Type_ return @:check32 this._object.type;
    public var _color(get, never) : () -> stdgo._internal.go.types.Types_t_color.T_color;
    @:embedded
    @:embeddededffieldsffun
    public function get__color():() -> stdgo._internal.go.types.Types_t_color.T_color return @:check32 this._object._color;
    public var _less(get, never) : stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__less():stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> -> Bool return @:check32 this._object._less;
    public var _order(get, never) : () -> stdgo.GoUInt32;
    @:embedded
    @:embeddededffieldsffun
    public function get__order():() -> stdgo.GoUInt32 return @:check32 this._object._order;
    public var _sameId(get, never) : (stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo.GoString) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__sameId():(stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo.GoString) -> Bool return @:check32 this._object._sameId;
    public var _scopePos(get, never) : () -> stdgo._internal.go.token.Token_pos.Pos;
    @:embedded
    @:embeddededffieldsffun
    public function get__scopePos():() -> stdgo._internal.go.token.Token_pos.Pos return @:check32 this._object._scopePos;
    public var _setColor(get, never) : stdgo._internal.go.types.Types_t_color.T_color -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setColor():stdgo._internal.go.types.Types_t_color.T_color -> Void return @:check32 this._object._setColor;
    public var _setOrder(get, never) : stdgo.GoUInt32 -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setOrder():stdgo.GoUInt32 -> Void return @:check32 this._object._setOrder;
    public var _setParent(get, never) : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setParent():stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> -> Void return @:check32 this._object._setParent;
    public var _setScopePos(get, never) : stdgo._internal.go.token.Token_pos.Pos -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setScopePos():stdgo._internal.go.token.Token_pos.Pos -> Void return @:check32 this._object._setScopePos;
    public var _setType(get, never) : stdgo._internal.go.types.Types_type_.Type_ -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setType():stdgo._internal.go.types.Types_type_.Type_ -> Void return @:check32 this._object._setType;
    public function __copy__() {
        return new Const(_object, _val);
    }
}
