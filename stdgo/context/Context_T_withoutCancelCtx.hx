package stdgo.context;
@:structInit @:using(stdgo.context.Context.T_withoutCancelCtx_static_extension) abstract T_withoutCancelCtx(stdgo._internal.context.Context_T_withoutCancelCtx.T_withoutCancelCtx) from stdgo._internal.context.Context_T_withoutCancelCtx.T_withoutCancelCtx to stdgo._internal.context.Context_T_withoutCancelCtx.T_withoutCancelCtx {
    public var _c(get, set) : Context_;
    function get__c():Context_ return this._c;
    function set__c(v:Context_):Context_ {
        this._c = v;
        return v;
    }
    public function new(?_c:Context_) this = new stdgo._internal.context.Context_T_withoutCancelCtx.T_withoutCancelCtx(_c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
