package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_monovertex_static_extension.T_monoVertex_static_extension) class T_monoVertex {
    public var _weight : stdgo.GoInt = 0;
    public var _pre : stdgo.GoInt = 0;
    public var _len : stdgo.GoInt = 0;
    public var _obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> = (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
    public function new(?_weight:stdgo.GoInt, ?_pre:stdgo.GoInt, ?_len:stdgo.GoInt, ?_obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>) {
        if (_weight != null) this._weight = _weight;
        if (_pre != null) this._pre = _pre;
        if (_len != null) this._len = _len;
        if (_obj != null) this._obj = _obj;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_monoVertex(_weight, _pre, _len, _obj);
    }
}
