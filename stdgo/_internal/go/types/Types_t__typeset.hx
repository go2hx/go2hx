package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t__typeset_static_extension.T__TypeSet_static_extension) class T__TypeSet {
    public var _methods : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
    public var _terms : stdgo._internal.go.types.Types_t_termlist.T_termlist = (new stdgo._internal.go.types.Types_t_termlist.T_termlist(0, 0) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
    public var _comparable : Bool = false;
    public function new(?_methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>, ?_terms:stdgo._internal.go.types.Types_t_termlist.T_termlist, ?_comparable:Bool) {
        if (_methods != null) this._methods = _methods;
        if (_terms != null) this._terms = _terms;
        if (_comparable != null) this._comparable = _comparable;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__TypeSet(_methods, _terms, _comparable);
    }
}
