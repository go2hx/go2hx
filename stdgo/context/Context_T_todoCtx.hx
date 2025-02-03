package stdgo.context;
@:structInit @:using(stdgo.context.Context.T_todoCtx_static_extension) abstract T_todoCtx(stdgo._internal.context.Context_T_todoCtx.T_todoCtx) from stdgo._internal.context.Context_T_todoCtx.T_todoCtx to stdgo._internal.context.Context_T_todoCtx.T_todoCtx {
    public var _emptyCtx(get, set) : T_emptyCtx;
    function get__emptyCtx():T_emptyCtx return this._emptyCtx;
    function set__emptyCtx(v:T_emptyCtx):T_emptyCtx {
        this._emptyCtx = v;
        return v;
    }
    public function new(?_emptyCtx:T_emptyCtx) this = new stdgo._internal.context.Context_T_todoCtx.T_todoCtx(_emptyCtx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
