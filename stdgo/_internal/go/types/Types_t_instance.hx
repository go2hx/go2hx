package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_instance_static_extension.T_instance_static_extension) class T_instance {
    public var _orig : stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
    public var _targs : stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList> = (null : stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>);
    public var _expandedMethods : stdgo.GoInt = 0;
    public var _ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = (null : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
    public function new(?_orig:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, ?_targs:stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList>, ?_expandedMethods:stdgo.GoInt, ?_ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>) {
        if (_orig != null) this._orig = _orig;
        if (_targs != null) this._targs = _targs;
        if (_expandedMethods != null) this._expandedMethods = _expandedMethods;
        if (_ctxt != null) this._ctxt = _ctxt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_instance(_orig, _targs, _expandedMethods, _ctxt);
    }
}
