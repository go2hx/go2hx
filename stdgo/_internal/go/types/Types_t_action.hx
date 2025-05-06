package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_action_static_extension.T_action_static_extension) class T_action {
    public var _f : () -> Void = null;
    public var _desc : stdgo.Ref<stdgo._internal.go.types.Types_t_actiondesc.T_actionDesc> = (null : stdgo.Ref<stdgo._internal.go.types.Types_t_actiondesc.T_actionDesc>);
    public function new(?_f:() -> Void, ?_desc:stdgo.Ref<stdgo._internal.go.types.Types_t_actiondesc.T_actionDesc>) {
        if (_f != null) this._f = _f;
        if (_desc != null) this._desc = _desc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_action(_f, _desc);
    }
}
