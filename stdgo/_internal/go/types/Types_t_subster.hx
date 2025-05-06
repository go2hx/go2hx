package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_subster_static_extension.T_subster_static_extension) class T_subster {
    public var _pos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _smap : stdgo._internal.go.types.Types_t_substmap.T_substMap = (null : stdgo._internal.go.types.Types_t_substmap.T_substMap);
    public var _check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker> = (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
    public var _expanding : stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
    public var _ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = (null : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
    public function new(?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_smap:stdgo._internal.go.types.Types_t_substmap.T_substMap, ?_check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, ?_expanding:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, ?_ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>) {
        if (_pos != null) this._pos = _pos;
        if (_smap != null) this._smap = _smap;
        if (_check != null) this._check = _check;
        if (_expanding != null) this._expanding = _expanding;
        if (_ctxt != null) this._ctxt = _ctxt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_subster(_pos, _smap, _check, _expanding, _ctxt);
    }
}
