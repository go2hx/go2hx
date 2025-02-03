package stdgo.context;
@:structInit @:using(stdgo.context.Context.T_afterFuncCtx_static_extension) abstract T_afterFuncCtx(stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx) from stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx to stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx {
    public var _cancelCtx(get, set) : T_cancelCtx;
    function get__cancelCtx():T_cancelCtx return this._cancelCtx;
    function set__cancelCtx(v:T_cancelCtx):T_cancelCtx {
        this._cancelCtx = v;
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__once():stdgo._internal.sync.Sync_Once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._once = v;
        return v;
    }
    public var _f(get, set) : () -> Void;
    function get__f():() -> Void return () -> this._f();
    function set__f(v:() -> Void):() -> Void {
        this._f = v;
        return v;
    }
    public function new(?_cancelCtx:T_cancelCtx, ?_once:stdgo._internal.sync.Sync_Once.Once, ?_f:() -> Void) this = new stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx(_cancelCtx, _once, _f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
