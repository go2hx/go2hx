package stdgo._internal.context;
@:structInit @:using(stdgo._internal.context.Context_t_emptyctx_static_extension.T_emptyCtx_static_extension) class T_emptyCtx {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_emptyCtx();
    }
}
