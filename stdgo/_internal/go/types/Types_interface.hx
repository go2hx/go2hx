package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_interface_static_extension.Interface_static_extension) class Interface {
    public var _check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker> = (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
    public var _methods : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
    public var _embeddeds : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
    public var _embedPos : stdgo.Ref<stdgo.Slice<stdgo._internal.go.token.Token_pos.Pos>> = (null : stdgo.Ref<stdgo.Slice<stdgo._internal.go.token.Token_pos.Pos>>);
    public var _implicit : Bool = false;
    public var _complete : Bool = false;
    public var _tset : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = (null : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
    public function new(?_check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, ?_methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>, ?_embeddeds:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, ?_embedPos:stdgo.Ref<stdgo.Slice<stdgo._internal.go.token.Token_pos.Pos>>, ?_implicit:Bool, ?_complete:Bool, ?_tset:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>) {
        if (_check != null) this._check = _check;
        if (_methods != null) this._methods = _methods;
        if (_embeddeds != null) this._embeddeds = _embeddeds;
        if (_embedPos != null) this._embedPos = _embedPos;
        if (_implicit != null) this._implicit = _implicit;
        if (_complete != null) this._complete = _complete;
        if (_tset != null) this._tset = _tset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Interface(_check, _methods, _embeddeds, _embedPos, _implicit, _complete, _tset);
    }
}
