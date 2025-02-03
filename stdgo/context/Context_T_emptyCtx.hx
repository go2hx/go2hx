package stdgo.context;
@:structInit @:using(stdgo.context.Context.T_emptyCtx_static_extension) abstract T_emptyCtx(stdgo._internal.context.Context_T_emptyCtx.T_emptyCtx) from stdgo._internal.context.Context_T_emptyCtx.T_emptyCtx to stdgo._internal.context.Context_T_emptyCtx.T_emptyCtx {
    public function new() this = new stdgo._internal.context.Context_T_emptyCtx.T_emptyCtx();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
