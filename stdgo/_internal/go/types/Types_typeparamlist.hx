package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_typeparamlist_static_extension.TypeParamList_static_extension) class TypeParamList {
    public var _tparams : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
    public function new(?_tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>) {
        if (_tparams != null) this._tparams = _tparams;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TypeParamList(_tparams);
    }
}
