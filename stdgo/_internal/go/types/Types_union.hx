package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_union_static_extension.Union_static_extension) class Union {
    public var _terms : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>);
    public function new(?_terms:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>) {
        if (_terms != null) this._terms = _terms;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Union(_terms);
    }
}
