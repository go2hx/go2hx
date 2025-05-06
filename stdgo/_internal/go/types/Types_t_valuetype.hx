package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_valuetype_static_extension.T_valueType_static_extension) class T_valueType {
    public var _pos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _typ : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public function new(?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_typ:stdgo._internal.go.types.Types_type_.Type_) {
        if (_pos != null) this._pos = _pos;
        if (_typ != null) this._typ = _typ;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_valueType(_pos, _typ);
    }
}
