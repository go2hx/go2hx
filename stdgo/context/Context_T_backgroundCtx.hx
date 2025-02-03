package stdgo.context;
@:structInit @:using(stdgo.context.Context.T_backgroundCtx_static_extension) abstract T_backgroundCtx(stdgo._internal.context.Context_T_backgroundCtx.T_backgroundCtx) from stdgo._internal.context.Context_T_backgroundCtx.T_backgroundCtx to stdgo._internal.context.Context_T_backgroundCtx.T_backgroundCtx {
    public var _emptyCtx(get, set) : T_emptyCtx;
    function get__emptyCtx():T_emptyCtx return this._emptyCtx;
    function set__emptyCtx(v:T_emptyCtx):T_emptyCtx {
        this._emptyCtx = v;
        return v;
    }
    public function new(?_emptyCtx:T_emptyCtx) this = new stdgo._internal.context.Context_T_backgroundCtx.T_backgroundCtx(_emptyCtx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
