package stdgo.context;
@:structInit @:using(stdgo.context.Context.T_myCtx_static_extension) abstract T_myCtx(stdgo._internal.context.Context_T_myCtx.T_myCtx) from stdgo._internal.context.Context_T_myCtx.T_myCtx to stdgo._internal.context.Context_T_myCtx.T_myCtx {
    public var context(get, set) : Context_;
    function get_context():Context_ return this.context;
    function set_context(v:Context_):Context_ {
        this.context = v;
        return v;
    }
    public function new(?context:Context_) this = new stdgo._internal.context.Context_T_myCtx.T_myCtx(context);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
