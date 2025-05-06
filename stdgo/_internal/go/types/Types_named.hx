package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_named_static_extension.Named_static_extension) class Named {
    public var _check : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker> = (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
    public var _obj : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> = (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
    public var _fromRHS : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public var _inst : stdgo.Ref<stdgo._internal.go.types.Types_t_instance.T_instance> = (null : stdgo.Ref<stdgo._internal.go.types.Types_t_instance.T_instance>);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _state_ : stdgo.GoUInt32 = 0;
    public var _underlying : stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
    public var _tparams : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> = (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>);
    public var _methods : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
    public var _loader : stdgo.Ref<stdgo._internal.go.types.Types_named.Named> -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>; var _1 : stdgo._internal.go.types.Types_type_.Type_; var _2 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>; } = null;
    public function new(?_check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, ?_obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, ?_fromRHS:stdgo._internal.go.types.Types_type_.Type_, ?_inst:stdgo.Ref<stdgo._internal.go.types.Types_t_instance.T_instance>, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_state_:stdgo.GoUInt32, ?_underlying:stdgo._internal.go.types.Types_type_.Type_, ?_tparams:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>, ?_methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>, ?_loader:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>; var _1 : stdgo._internal.go.types.Types_type_.Type_; var _2 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>; }) {
        if (_check != null) this._check = _check;
        if (_obj != null) this._obj = _obj;
        if (_fromRHS != null) this._fromRHS = _fromRHS;
        if (_inst != null) this._inst = _inst;
        if (_mu != null) this._mu = _mu;
        if (_state_ != null) this._state_ = _state_;
        if (_underlying != null) this._underlying = _underlying;
        if (_tparams != null) this._tparams = _tparams;
        if (_methods != null) this._methods = _methods;
        if (_loader != null) this._loader = _loader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Named(_check, _obj, _fromRHS, _inst, _mu, _state_, _underlying, _tparams, _methods, _loader);
    }
}
