package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_signature_static_extension.Signature_static_extension) class Signature {
    public var _rparams : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> = (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>);
    public var _tparams : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> = (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>);
    public var _scope : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
    public var _recv : stdgo.Ref<stdgo._internal.go.types.Types_var.Var> = (null : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
    public var _params : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
    public var _results : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
    public var _variadic : Bool = false;
    public function new(?_rparams:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>, ?_tparams:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>, ?_scope:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, ?_recv:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>, ?_params:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, ?_results:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, ?_variadic:Bool) {
        if (_rparams != null) this._rparams = _rparams;
        if (_tparams != null) this._tparams = _tparams;
        if (_scope != null) this._scope = _scope;
        if (_recv != null) this._recv = _recv;
        if (_params != null) this._params = _params;
        if (_results != null) this._results = _results;
        if (_variadic != null) this._variadic = _variadic;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Signature(_rparams, _tparams, _scope, _recv, _params, _results, _variadic);
    }
}
