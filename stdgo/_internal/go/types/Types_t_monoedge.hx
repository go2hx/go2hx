package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_monoedge_static_extension.T_monoEdge_static_extension) class T_monoEdge {
    public var _dst : stdgo.GoInt = 0;
    public var _src : stdgo.GoInt = 0;
    public var _weight : stdgo.GoInt = 0;
    public var _pos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _typ : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public function new(?_dst:stdgo.GoInt, ?_src:stdgo.GoInt, ?_weight:stdgo.GoInt, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_typ:stdgo._internal.go.types.Types_type_.Type_) {
        if (_dst != null) this._dst = _dst;
        if (_src != null) this._src = _src;
        if (_weight != null) this._weight = _weight;
        if (_pos != null) this._pos = _pos;
        if (_typ != null) this._typ = _typ;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_monoEdge(_dst, _src, _weight, _pos, _typ);
    }
}
